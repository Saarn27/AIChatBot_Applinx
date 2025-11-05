using com.sabratec.applinx.baseobject;
using System;
using System.Linq;
using com.sabratec.util;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using com.sabratec.applinx.baseobject.table;
using com.sabratec.dotnet.framework.web.controls;
using com.sabratec.dotnet.framework.events;
using System.Collections.Generic;
using System.Web;
using System.Globalization;
using System.IO;
using System.Web.Services;
using System.Xml;
using System.Diagnostics;
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using java.lang;

/// <summary>
/// Summary description for GalLogicWebForm
/// </summary>
public class GalLogicWebForm : GXDefaultLogicWebForm
{
    private static List<string> overallForbiddenHostKeys = new List<string>() { "hlp", "help", "*help", "*hlp", "hlp*", "help*", "Help*", "Calender" };
    private static List<string> privateForbiddenHostKeys = new List<string>();

    private static string[] specialScreen = new string[] { "IIQ03_DTL1", "IIQ03_DTL2", "IIQ03_DTL3" };
    private static string[] calenderScreen = new string[] { "CSU03_SFL", "CSU03_SFL2", "CSU03_SFL1", "CSU03_SFL0" };

    private List<string> screenCallStack = new List<string>();

    private GXGetScreenRequest m_screenRequest;
    private CultureInfo m_currentCultureInfo;

    public GXGetScreenRequest ScreenRequest
    {
        get { return this.m_screenRequest; }
    }

    public CultureInfo CurrentCultureInfo
    {
        get { return this.m_currentCultureInfo; }
    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
        this.gx_preSendKeys += new GXPreSendKeyEventHandler(page_preSendKeys);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);

        SetNonStaticGxSession();
        SetCurrentCultureInfo();
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }

    protected void page_preFillForm(object sender, EventArgs e)
    {
        SetNonStaticGxSession();
        PutMultipleSelectedCommand();
        InitializeSubfileScroller();
    }

    protected void page_postFillForm(object sender, EventArgs e)
    {
        if (Session["DSPMSG_Entered"] != null)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "toastMessage", (string)Session["DSPMSG_Entered"], true);
            Session.Remove("DSPMSG_Entered");
        }
        if (Session["ACTIVATE_REMARK"] != null)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "remark", (string)Session["ACTIVATE_REMARK"], true);
            Session.Remove("ACTIVATE_REMARK");
        }
        if (Session["LOCAL_PASSWORD_CHANGE"] != null)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "localNewPassword", (string)Session["LOCAL_PASSWORD_CHANGE"], true);
            Session.Remove("LOCAL_PASSWORD_CHANGE");
        }
        ColorAllFields();
        DeleteOrMarkSelectedRows();
        AssignNotValidValueToCombo();
        ManageCallStack();
        CheckSystemErrorMessage();
        TriggerToggleIndicatorField();

        string currentScreen = gx_session.getScreen().getName();
        if (Session[THEME_TYPE] != null && currentScreen != "APPLNX_GO")
        {
            string setTheme = "changeTheme('" + Session[THEME_TYPE] + "');";
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setTheme", setTheme, true);
            Session.Remove(THEME_TYPE);
        }
        if (Session[PCCMD_TYPE] != null && currentScreen != "APPLNX_GO")
        {
            string setPcCmdType = "setTimeout(() => { changePcCmdType('" + Session[PCCMD_TYPE] + "'); }, 300);";

            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setPcCmdType", setPcCmdType, true);
            Session.Remove(PCCMD_TYPE);
        }
        if (Session[RESPONSIVE_DESIGN] != null && currentScreen != "APPLNX_GO")
        {
            string setResponsiveDesignMode = "setTimeout(() => { changeResponsiveDesignMode('" + Session[RESPONSIVE_DESIGN] + "'); }, 400);";

            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setResponsiveDesignMode", setResponsiveDesignMode, true);
            Session.Remove(RESPONSIVE_DESIGN);
        }
    }

    protected void page_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        SetNonStaticGxSession();
        string keyPressed = e.sendKeyRequest.getKeys().ToLower();
        bool pageHasTable = gx_session.getScreen(ScreenRequest).getTable() != null;
        bool filteredTable = keyPressed == "[enter]" && e.sendKeyRequest.getInputFields() != null && pageHasTable;
        bool exitPage = (keyPressed == "[pf3]" || keyPressed == "[pf12]");
        bool tableColumnsReplaced = keyPressed == "[pf11]" && pageHasTable;

        UpdateSubfilePageIndex(e.sendKeyRequest);
        if (pageHasTable)
        {
            SavePageIndex(keyPressed);
        }

        //condition for subfile cache logic
        if ((exitPage && pageHasTable) || filteredTable)
        {
            Session["deleteTable"] = true;
            Session["tableToDelete"] = gx_session.getScreen(ScreenRequest).getTable().getName();
        }

        //condition for call stack logic
        if (exitPage)
        {
            screenCallStack = (List<string>)Session["screenCallStack"];
            if (screenCallStack == null)
            {
                screenCallStack = new List<string>();
            }

            if (screenCallStack.Count > 0)
            {
                screenCallStack.RemoveAt(screenCallStack.Count - 1);
                Session["screenCallStack"] = screenCallStack;
            }
            if (screenCallStack.Count > 0)
            {
                Session["savedScreen"] = screenCallStack[screenCallStack.Count - 1];
            }
            else
            {
                Session.Remove("savedScreen");
            }
        }

        if (exitPage)
        {
            Session.Remove("activateCommandAjax");
        }

        //condition for call stack logic
        if (tableColumnsReplaced)
        {
            Session["tableColumnsReplaced"] = true;
        }
    }

    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        ResetHiddenField();
    }

    private void SetNonStaticGxSession()
    {
        this.m_screenRequest = new GXGetScreenRequest();
    }

    private void SetCurrentCultureInfo()
    {
        Dictionary<string, object> sessionCompanyConfig = (Dictionary<string, object>)Session["companyConfig"];
        this.m_currentCultureInfo = new CultureInfo((string)sessionCompanyConfig["numberFormat"]);
    }

    public void SyncWebAndAS400Sessions()
    {
        if (gx_session != null && gx_getForm(gx_session.getScreen().getName()) != gx_form.FormName)
        {
            gx_handleHostResponse();
        }
        else
        {
            base.gx_handleSessionError(null);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="itemId"></param>
    /// <param name="objectType"></param>
    /// <param name="index"></param>
    /// <returns></returns>
    [WebMethod]//SHAHAR
    public static string GetObjectDataQuery(string objectNumber, string objectType, string xPos, string yPos)
    {
        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);
        string[] parameters;
        string[][] result;
        string sqlStmt;
        Dictionary<string, string> dictionaryToReturn = new Dictionary<string, string>();
        switch (objectType.ToLower())
        {
            case "item":
                sqlStmt = String.Format("SELECT ICAT as itemNumber,ILSTKQ as localStockQuantity,IDSCO as itemDescription,ILSAQ as lastYearSales,IGSAQ as globalSales," +
                    "ISTKS as stockStatus,ICS as stockCode,IFRQ as frequency,IAVE1 as avgUsage,IOCAT as itemNumberPt, CASE WHEN T3DSCL IS NULL THEN '' ELSE T3DSCL END AS brandName" +
                    " FROM GALF6{0}.II LEFT JOIN GALF6{0}.T3 ON IPFAM = T3KEY AND T3TYP = 'F' WHERE ICAT = ?",
                    currentUserDetails.Company
                );
                parameters = new string[] { objectNumber };
                result = dbHelper.ExecuteQuery(sqlStmt, parameters);
                if (result.Length == 0 || result[0].Length != 11)
                {
                    result = new string[][] {
                        new string[] { objectNumber, "", "", "", "", "", "", "", "", "", "" }
                    };
                }
                dictionaryToReturn.Add("itemNumber", result[0][0]);
                dictionaryToReturn.Add("itemStock", result[0][1]);
                dictionaryToReturn.Add("itemDescription", result[0][2]);
                dictionaryToReturn.Add("lastYearSales", result[0][3]);
                dictionaryToReturn.Add("globalSales", result[0][4]);
                dictionaryToReturn.Add("stockStatus", result[0][5]);
                dictionaryToReturn.Add("stockCode", result[0][6]);
                dictionaryToReturn.Add("frequency", result[0][7]);
                dictionaryToReturn.Add("avgUsage", result[0][8]);
                dictionaryToReturn.Add("itemNumberPt", result[0][9]);
                dictionaryToReturn.Add("brand", result[0][10]);
                dictionaryToReturn.Add("xPos", xPos);
                dictionaryToReturn.Add("yPos", yPos);
                dictionaryToReturn.Add("objectType", objectType);
                dictionaryToReturn.Add("cmp", AppCache.getCompany());
                break;
            case "order":
                sqlStmt = String.Format("SELECT HCP as CPO,HCUST as customerNum FROM GALF6{0}.CH  WHERE HORD = ?",
                    currentUserDetails.Company
                );
                parameters = new string[] { objectNumber };
                result = dbHelper.ExecuteQuery(sqlStmt, parameters);
                if (result.Length == 0 || result[0].Length != 2)
                {
                    result = new string[][] {
                        new string[] { "", "" }
                    };
                }
                dictionaryToReturn.Add("CPO", result[0][0]);
                dictionaryToReturn.Add("customerNum", result[0][1]);
                dictionaryToReturn.Add("xPos", xPos);
                dictionaryToReturn.Add("yPos", yPos);
                dictionaryToReturn.Add("objectType", objectType);
                dictionaryToReturn.Add("cmp", currentUserDetails.Company);
                break;
        }
        string[][] longDescription = GetDescriptionFromIR("'" + objectNumber + "'");
        if (longDescription.Length != 0)
        {
            dictionaryToReturn.Add("objectLongDescription", longDescription[0][1]);
        }
        else
        {
            dictionaryToReturn.Add("objectLongDescription", "");

        }
        return DictionaryToJson(dictionaryToReturn);
    }

    /// <summary>
    /// 
    /// </summary>
    private void CheckSystemErrorMessage()
    {
        try
        {
            if (!gx_session.getScreen(ScreenRequest).isWindow())
            {
                string message = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(24, 2)).getContent().Trim();
                List<string> messageBank = new List<string> {
                    "Use of decimals not correct or too many numbers entered.",
                    "Value entered for field is not valid.  Valid values listed in message help."
                };
                if (messageBank.Contains(message))
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "showSystemErrorMessage",
                        "showSystemErrorMessage('" + message + "');", true);
                }
            }
        }
        catch (System.Exception e)
        {
            Console.Write(e);
        }
    }

    protected void RemoveSystemMessageFromScreen()
    {
        try
        {
            string systemMessage = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(24, 2)).getContent().Trim();
            List<string> systemMessageBank = new List<string>{ "Function key not allowed.",
        "Roll up or down past the first or last record in file."};
            if (systemMessage != "" && systemMessage[0] != '+' && systemMessage[0] != 'X')
            {
                GXSendKeysRequest passToNextScreen = new GXSendKeysRequest();
                passToNextScreen.setKeys("[tab]");
                gx_session.sendKeys(passToNextScreen);
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "showSystemErrorMessage",
                            "showSystemErrorMessage('Key Not Allowed');", true);
            }
        }
        catch (System.Exception exception)
        {
            Debug.Write(exception);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    protected virtual void PutMultipleSelectedCommand()
    {
        string multipleActionRows = ((HtmlInputText)Form.FindControl("multipleActionRows")).Value;
        string multipleActionValue = ((HtmlInputText)Form.FindControl("multipleActionValue")).Value;
        string multipleInputId = ((HtmlInputText)Form.FindControl("multipleInputId")).Value;
        string multipleActionFunction = ((HtmlInputText)Form.FindControl("multipleActionFunction")).Value;
        if (multipleActionRows != "")
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            int pageIndex = 1;
            try
            {
                pageIndex = Int32.Parse(((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("pageIndex")).Value);
            }
            catch (NumberFormatException error)
            {
                //SyncWebAndAS400Sessions();
            }
            catch (FormatException error)
            {
                //SyncWebAndAS400Sessions();
            }
            string[] rows = multipleActionRows.Split(',');
            while (pageIndex > 1)
            {
                setValueToInputReq.setKeys("[pageup]");
                gx_session.sendKeys(setValueToInputReq);
                pageIndex--;
            }

            int currentPage = 0;
            for (int currentRow = 0; currentRow < rows.Length; currentRow++)
            {
                int page = Int32.Parse(rows[currentRow].Split('_')[0]);
                int row = Int32.Parse(rows[currentRow].Split('_')[1]);

                if (currentPage == 0)
                {
                    currentPage = page;
                }
                if (currentPage < page)
                {
                    currentPage = page;
                }

                while (currentPage > pageIndex)
                {
                    pageIndex++;
                    setValueToInputReq.setKeys("[pagedn]");
                    gx_session.sendKeys(setValueToInputReq);
                    setValueToInputReq = new GXSendKeysRequest();
                }
                setValueToInputReq.addInputField(multipleInputId, row, multipleActionValue);
            }

            string currentScreen = gx_session.getScreen(ScreenRequest).getName();

            if (multipleActionFunction != "")
            {
                setValueToInputReq.setKeys("[p" + multipleActionFunction.ToLower() + "]");
                ((HtmlInputText)Form.FindControl("multipleActionFunction")).Value = "";
            }
            else
            {
                setValueToInputReq.setKeys("[enter]");
            }

            gx_session.sendKeys(setValueToInputReq);
            string afterActionScreen = gx_session.getScreen(ScreenRequest).getName();
            if (currentScreen != afterActionScreen)
            {
                gx_handleHostResponse();
            }
            else
            {
                int webPageIndex = 1;
                try {
                    webPageIndex = Int32.Parse(((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("pageIndex")).Value);
                }
                catch (System.Exception e)
                {

                }
                while (currentPage < webPageIndex)
                {
                    setValueToInputReq = new GXSendKeysRequest();
                    currentPage++;
                    setValueToInputReq.setKeys("[pagedn]");
                    gx_session.sendKeys(setValueToInputReq);
                }
                while (currentPage > webPageIndex)
                {
                    setValueToInputReq = new GXSendKeysRequest();
                    currentPage--;
                    setValueToInputReq.setKeys("[pageup]");
                    gx_session.sendKeys(setValueToInputReq);
                }
            }
            ((HtmlInputText)Form.FindControl("multipleActionRows")).Value = "";
            ((HtmlInputText)Form.FindControl("multipleActionValue")).Value = "";
            ((HtmlInputText)Form.FindControl("multipleInputId")).Value = "";
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <returns></returns>
    public int GetMultipleActionValue()
    {
        string multipleActionValue = ((HtmlInputText)Form.FindControl("multipleActionValue")).Value;
        bool isDigit = Regex.IsMatch(multipleActionValue, @"\d+");
        if (isDigit == false)
        {
            return -1;
        }
        else
        {
            return Int32.Parse(((HtmlInputText)Form.FindControl("multipleActionValue")).Value);
        }
    }

    [WebMethod]
    public static string ChangeSelectionInMultipleCommand(string commandIndexes, string commandId, string valueToSend, string sessionId, string pageIndexValue, string keyToSend)
    {
        if (HttpContext.Current.Session["activateCommandAjax"] == null)
        {
            return "";
        }

        GXIClientBaseObject baseObject = GetGxSession(sessionId);
        GXSendKeysRequest removeCommandValue = new GXSendKeysRequest();

        string tableName = baseObject.getScreen(new GXGetScreenRequest()).getTable().getName();
        bool isRemoveAction = valueToSend == "";

        string[] indexesToMark = commandIndexes.Split(',');
        for (int commandIndex = 0; commandIndex < indexesToMark.Length; commandIndex++)
        {
            int index = Int32.Parse(indexesToMark[commandIndex]);
            removeCommandValue.addInputField(commandId, index, valueToSend);
            UpdateSavedRows(pageIndexValue, commandIndex, tableName, isRemoveAction);
        }
        removeCommandValue.setKeys("[" + keyToSend + "]");
        baseObject.sendKeys(removeCommandValue);

        DetachGxSession(baseObject);
        return "success";
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="commandId"></param>
    /// <param name="commandIndex"></param>
    /// <param name="sessionId"></param>
    /// <returns></returns>
    [WebMethod]
    public static string ChangeSelectionInCommand(string commandId, int commandIndex, string valueToSend, string sessionId, string pageIndexValue, string keyToSend)
    {
        if (HttpContext.Current.Session["activateCommandAjax"] == null)
        {
            return "";
        }

        GXIClientBaseObject baseObject = GetGxSession(sessionId);
        GXSendKeysRequest removeCommandValue = new GXSendKeysRequest();
        removeCommandValue.addInputField(commandId, commandIndex, valueToSend);
        removeCommandValue.setKeys("[" + keyToSend + "]");
        baseObject.sendKeys(removeCommandValue);
        string tableName = baseObject.getScreen(new GXGetScreenRequest()).getTable().getName();
        bool isRemoveAction = valueToSend == "";

        UpdateSavedRows(pageIndexValue, commandIndex, tableName, isRemoveAction);
        DetachGxSession(baseObject);
        return "success";
    }

    public static void UpdateSavedRows(string pageIndexValue, int commandIndex, string tableName, bool isRemoveAction)
    {
        try
        {
            string joinedSavedRows = (string)HttpContext.Current.Session["GetMultipleSelectedCommand_" + tableName];
            string currentRow = pageIndexValue + "_" + commandIndex.ToString();
            if (joinedSavedRows == null)
            {
                HttpContext.Current.Session.Remove("GetMultipleSelectedCommand_" + tableName);
                return;
            }

            if (isRemoveAction)
            {
                joinedSavedRows = joinedSavedRows.Replace("," + currentRow, "").Replace(currentRow + ",", "");
            }
            else
            {
                List<string> markedRows = joinedSavedRows.Split(',').ToList();

                if (markedRows.Count == 1)
                {
                    int firstCompareResult = string.Compare(currentRow, markedRows[0]);
                    if (firstCompareResult == -1)
                    {
                        markedRows.Insert(0, currentRow);
                    }
                    if (firstCompareResult == 1)
                    {
                        markedRows.Add(currentRow);
                    }
                }
                else
                {
                    for (int rowIndex = 0; rowIndex < markedRows.Count - 1; rowIndex++)
                    {
                        int firstCompareResult = string.Compare(currentRow, markedRows[rowIndex]);
                        int secondCompareResult = string.Compare(currentRow, markedRows[rowIndex + 1]);
                        if (firstCompareResult == -1)
                        {
                            markedRows.Insert(rowIndex, currentRow);
                            break;
                        }
                        if (firstCompareResult == 1 && secondCompareResult == -1)
                        {
                            markedRows.Insert(rowIndex + 1, currentRow);
                            break;
                        }
                        if (rowIndex == markedRows.Count - 2 && firstCompareResult == 1 && secondCompareResult == 1)
                        {
                            markedRows.Add(currentRow);
                            break;
                        }

                    }
                }

                joinedSavedRows = String.Join(",", markedRows);
            }
            HttpContext.Current.Session["GetMultipleSelectedCommand_" + tableName] = joinedSavedRows;
        }
        catch (System.Exception e)
        {
            HttpContext.Current.Session.Remove("GetMultipleSelectedCommand_" + tableName);
            return;
        }

    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="currentTable"></param>
    /// <param name="commandInputId"></param>
    /// <param name="commandValue"></param>
    /// <param name="pageIndexValue"></param>
    protected virtual void GetMultipleSelectedCommand(HtmlTable currentTable, string commandInputId,string commandValue, int pageIndexValue)
    {
        List<string> commandValuesList = commandValue.Split(',').Select(s => s.Trim()).ToList();
        string tableName = currentTable.ID;
        if (Session["GetMultipleSelectedCommand_" + tableName] == null)
        {
            GXSendKeysRequest getValueFromInputReq = new GXSendKeysRequest();
            int currentPage = pageIndexValue;
            while (currentPage > 1)
            {
                getValueFromInputReq.setKeys("[pageup]");
                gx_session.sendKeys(getValueFromInputReq);
                currentPage--;
            }

            int tableRowCNT = gx_session.getScreen(ScreenRequest).getTable().getRows().getRowCount();
            List<string> saveUnite = new List<string>();

            while (gx_session.getScreen(ScreenRequest).getFieldContent("pageIndicator").ToLower().Trim() == "more..." || gx_session.getScreen(ScreenRequest).getFieldContent("pageIndicator").ToLower().Trim() == "+")
            {
                for (int currentRow = 0; currentRow < tableRowCNT; currentRow++)
                {
                    string content = gx_session.getScreen(ScreenRequest).getFieldInstance(commandInputId, currentRow).getContent().ToUpper();
                    if (commandValuesList.Contains(content))
                    {
                        saveUnite.Add(currentPage + "_" + currentRow);
                    }
                }
                currentPage++;
                getValueFromInputReq.setKeys("[pagedn]");
                gx_session.sendKeys(getValueFromInputReq);
                getValueFromInputReq = new GXSendKeysRequest();
            }

            tableRowCNT = gx_session.getScreen(ScreenRequest).getTable().getRows().getRowCount();
            for (int currentRow = 0; currentRow < tableRowCNT; currentRow++)
            {
                string content = gx_session.getScreen(ScreenRequest).getFieldInstance(commandInputId, currentRow).getContent().ToUpper();
                if (commandValuesList.Contains(content))
                {
                    saveUnite.Add(currentPage + "_" + currentRow);
                }
            }

            while (currentPage > pageIndexValue)
            {
                getValueFromInputReq.setKeys("[pageup]");
                gx_session.sendKeys(getValueFromInputReq);
                getValueFromInputReq = new GXSendKeysRequest();
                currentPage--;
            }

            if (saveUnite.Count > 0)
            {
                Session["activateCommandAjax"] = true;
            }
            string joinedSavedRows = String.Join(",", saveUnite);
            if (joinedSavedRows != "")
            {
                Session["GetMultipleSelectedCommand_" + tableName] = joinedSavedRows;
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "initializeSavedRowsUnite",
                "initializeSavedRowsUnite('" + joinedSavedRows + "'" + "," + "'" + tableName + "');markRowsFromCache();", true);
            }
        }
        else
        {
            string joinedSavedRows = (string)Session["GetMultipleSelectedCommand_" + tableName];
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "initializeSavedRowsUnite",
            "initializeSavedRowsUnite('" + joinedSavedRows + "'" + "," + "'" + tableName + "');markRowsFromCache();", true);
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "markRows", "markRowsFromCache();", true);
        }
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "putValueInCommand",
            "putValueInCommand('" + commandInputId + "'," + "'" + commandValue + "');", true);
    }

    /// <summary>
    /// 
    /// </summary>
    private void ManageCallStack()
    {
        string currentScreen = gx_session.getScreen(ScreenRequest).getName();
        string savedScreen;

        if (Session["screenCallStack"] != null)
        {
            screenCallStack = (List<string>)Session["screenCallStack"];
        }

        if (Session["savedScreen"] != null)
        {
            savedScreen = (string)Session["savedScreen"];
        }
        else
        {
            savedScreen = currentScreen;
            Session["savedScreen"] = savedScreen;
        }

        if ((new string[] { "CSQ07_SBF2", "CSQ07_SBF3", "LEQ01_SFL" }).Contains(savedScreen) && currentScreen == "IIQ02_TRNSFL1" &&
            screenCallStack[screenCallStack.Count - 2].Contains("IIQ02_TRNSFL"))
        {
            Session["tableColumnsReplaced"] = true;
            screenCallStack.RemoveAt(screenCallStack.Count - 1);
        }

        if (Session["tableColumnsReplaced"] != null)
        {
            screenCallStack[screenCallStack.Count - 1] = currentScreen;
            Session.Remove("tableColumnsReplaced");
            savedScreen = currentScreen;
            Session["savedScreen"] = savedScreen;
        }

        if (screenCallStack.Count == 0)
        {
            screenCallStack.Add(currentScreen);
        }
        else if (savedScreen == currentScreen)
        {
            //pressed pageup/pagedn/enter or something else that kept me in screen
        }
        else if (savedScreen != currentScreen)
        {
            if (screenCallStack[screenCallStack.Count - 1] == savedScreen && !screenCallStack.Contains(currentScreen))
            {
                if ((new string[] { "CSQ07_SBF2", "CSQ07_SBF3", "LEQ01_SFL" }).Contains(screenCallStack[screenCallStack.Count - 1]))
                {
                    screenCallStack.RemoveAt(screenCallStack.Count - 1);
                }
                screenCallStack.Add(currentScreen);
                savedScreen = currentScreen;
                Session["savedScreen"] = savedScreen;
            }
            else if (screenCallStack[screenCallStack.Count - 1] == savedScreen && screenCallStack.Contains(currentScreen))
            {
                while (screenCallStack[screenCallStack.Count - 1] != currentScreen)
                {
                    screenCallStack.RemoveAt(screenCallStack.Count - 1);
                }
                savedScreen = currentScreen;
                Session["savedScreen"] = savedScreen;
            }
            else if (screenCallStack[screenCallStack.Count - 1] != savedScreen)
            {
                screenCallStack.Clear();
                screenCallStack.Add(currentScreen);
                savedScreen = currentScreen;
                Session["savedScreen"] = savedScreen;
            }

            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "deleteDefaultHide", "sessionStorage.removeItem(\"default-hide\");", true);
        }

        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "callStackPrint", "console.log('" + string.Join(",", screenCallStack) + "');", true);
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "sendCurrentScreenName", "sendMessage(top, new Message(\"screen-name\", '" + currentScreen + "'));", true);
        Session["screenCallStack"] = screenCallStack;
    }

    #region Functions for Subfile page indexing
    /// <summary>
    /// 
    /// </summary>
    /// <param name="requestObject"></param>
    private void UpdateSubfilePageIndex(GXSendKeysRequest requestObject)
    {
        string pageIndicator = gx_session.getScreen(ScreenRequest).getFieldContent("pageIndicator", 0);
        HtmlInputText maxRows = null;
        try
        {
            maxRows = ((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("maxRows"));
        }
        catch (System.Exception e)
        {
            Console.Write(e);
        }
        if (pageIndicator != null || maxRows != null)
        {
            HtmlInputText pageIndex;
            try
            {
                pageIndex = ((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("pageIndex"));
            }
            catch (System.Exception e)
            {
                return;
            }
            if (requestObject.getKeys() == "[pagedn]" &&
                (pageIndicator != null && (pageIndicator.ToLower() == "more..." || pageIndicator.ToLower() == "+")))
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "increment", "enableForwardBtn();pageIndexIncrement();enableBackBtn();", true);
            }
            if (requestObject.getKeys() == "[pagedn]" && maxRows != null)
            {
                int tableRowsCount = gx_session.getScreen(ScreenRequest).getTable().getRows().filterRows().getRowCount();
                int maxRowsValue = Int32.Parse(maxRows.Value);
                if (tableRowsCount != maxRowsValue)
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "increment", "pageIndexIncrement();enableBackBtn();", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "increment", "enableForwardBtn();pageIndexIncrement();enableBackBtn();", true);
                }
            }
            if (requestObject.getKeys() == "[pageup]" && Int32.Parse(pageIndex.Value) == 2)
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "decrement", "disableBackBtn();enableForwardBtn();pageIndexDecrement();", true);
            }
            if (requestObject.getKeys() == "[pageup]" && Int32.Parse(pageIndex.Value) > 2)
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "decrement", "enableBackBtn();enableForwardBtn();pageIndexDecrement();", true);
            }
            if (requestObject.getKeys() == "[enter]" && requestObject.getInputFields().Length > 0)
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "reset", "disableBackBtn();resetPageIndex();", true);
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    private void InitializeSubfileScroller()
    {
        HtmlInputText pageIndex = ((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("pageIndex"));
        HtmlInputText maxRows = ((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("maxRows"));
        string pageIndicator = gx_session.getScreen(ScreenRequest).getFieldContent("pageIndicator", 0);
        string formName = this.Page.Request.Path;
        string screenName = gx_session.getScreen().getName();
        if (pageIndex == null)
        {
            return;
        }

        if (Session["pageIndex"] != null && pageIndex != null)
        {
            pageIndex.Value = Session["pageIndex"].ToString();
        }

        if (Session["pageIndex_" + screenName] != null && pageIndex != null)
        {
            pageIndex.Value = Session["pageIndex_" + screenName].ToString();
        }

        if (pageIndicator != null && !formName.Contains("CSR10_SFL"))
        {
            if (pageIndex.Value == "" || pageIndex.Value == "1")
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "initialize", "initializePageIndex();", true);
            }
            if (pageIndicator.ToLower().Trim() == "bottom" || pageIndicator.ToLower().Trim() == "")
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "disableForward", "disableForwardBtn();", true);
            }
        }
        else if (maxRows != null)
        {
            int tableRowsCount = -1;
            try
            {
                tableRowsCount = gx_session.getScreen(ScreenRequest).getTable().getRows().filterRows().getRowCount();
            }
            catch (NullReferenceException error)
            {
                SyncWebAndAS400Sessions();
            }

            int maxRowsValue = Int32.Parse(maxRows.Value);
            if (pageIndex.Value == "" || pageIndex.Value == "1")
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "initialize", "initializePageIndex();", true);
            }
            if (tableRowsCount != -1 && tableRowsCount != maxRowsValue)
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "disableForward", "disableForwardBtn();", true);
            }
        }
    }

    private void SavePageIndex(string keyPressed)
    {
        try
        {
            HtmlInputText pageIndex = ((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("pageIndex"));
            if (keyPressed == "[pf11]")
            {
                Session["pageIndex"] = pageIndex.Value;
                Session["PF11_PRESSED_WITH_TABLE"] = true;
            }
            else if (keyPressed != "[pf11]" && Session["PF11_PRESSED_WITH_TABLE"] != null)
            {
                Session.Remove("pageIndex");
                Session.Remove("PF11_PRESSED_WITH_TABLE");
            }
        }
        catch (System.Exception e)
        {
            Session.Remove("pageIndex");
            Session.Remove("PF11_PRESSED_WITH_TABLE");
        }
    }

    protected void CalculatePageIndexFromLine(string fieldName, int maxRowsCount)
    {
        try
        {
            HtmlInputText pageIndex = ((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("pageIndex"));
            int rowsCount = gx_session.getScreen(ScreenRequest).getTable().getRows().getRowCount();
            string lastLineNumber = gx_session.getScreen(ScreenRequest).getFieldContent(fieldName, rowsCount - 1).Trim();

            if (lastLineNumber.Contains("."))
            {
                int dotIndex = lastLineNumber.IndexOf(".");
                lastLineNumber = lastLineNumber.Substring(0, dotIndex);
            }

            if (lastLineNumber == "")
            {
                return;
            }


            if (Int32.Parse(lastLineNumber) % maxRowsCount == 0)
            {
                pageIndex.Value = ((Int32.Parse(lastLineNumber) / maxRowsCount)).ToString();
            }
            else if (Int32.Parse(lastLineNumber) % maxRowsCount != 0 && rowsCount != maxRowsCount)
            {
                pageIndex.Value = ((Int32.Parse(lastLineNumber) / maxRowsCount) + 1).ToString();
            }
            else if (Int32.Parse(lastLineNumber) % maxRowsCount != 0 && rowsCount == maxRowsCount)
            {
                pageIndex.Value = ((Int32.Parse(lastLineNumber) / maxRowsCount)).ToString();
            }
        }
        catch (System.Exception e)
        {

        }
    }
    #endregion

    #region Upper Toolbar for Function Keys
    /// <summary>
    /// 
    /// </summary>
    /// <param name="baseObject"></param>
    /// <returns></returns>
    private static GXIHostKey[] GetHostKeysNotInScreen(GXIClientBaseObject baseObject)
    {
        GXSendKeysRequest req = new GXSendKeysRequest();
        req.setKeys("[PF24]");
        baseObject.sendKeys(req);
        GXIHostKey[] screenKeys = baseObject.getScreen(new GXGetScreenRequest()).getHostKeys();
        return screenKeys;
    }

    protected void RemoveHostKeysToolBarMoreFlag(string nextScreenPath, string screenName)
    {
        try
        {
            if (!nextScreenPath.ToUpper().Contains(Regex.Replace((screenName.ToUpper()), "\\d+$", "")))
            {
                Session.Remove("hostKeysToolbarExists");
            }
        }
        catch (System.Exception f24Exception)
        {
            Session.Remove("hostKeysToolbarExists");
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="cssClass"></param>
    /// <param name="onclick"></param>
    /// <param name="innerHtml"></param>
    /// <param name="withToolTip"></param>
    /// <param name="tooltipText"></param>
    /// <returns></returns>
    public static HtmlButton CreateNewButton(string cssClass, string onclick, string innerHtml, bool withToolTip, string tooltipText = "")
    {
        HtmlButton button = new HtmlButton();
        button.Attributes.Add("class", cssClass);
        button.Attributes.Add("style", "width: auto;");
        button.Attributes.Add("onclick", onclick);
        if (withToolTip)
        {
            button.Attributes.Add("data-bs-toggle", "tooltip");
            button.Attributes.Add("data-bs-placement", "right");
            button.Attributes.Add("title", tooltipText);
        }
        button.InnerHtml = innerHtml;
        return button;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="onclick"></param>
    /// <param name="innerHtml"></param>
    /// <param name="withToolTip"></param>
    /// <param name="tooltipText"></param>
    /// <returns></returns>
    private static LiteralControl CreateNewLiteralButton(string onclick, string innerHtml, bool withToolTip, string tooltipText = "")
    {
        LiteralControl button = new LiteralControl("<button onclick='" + onclick + "'");
        if (withToolTip)
        {
            button.Text += " data-bs-toggle='tooltip' data-bs-placement='right' title='" + tooltipText + "'";
        }
        button.Text += ">";
        button.Text += innerHtml;
        button.Text += "</button>";
        return button;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="iconButtonsContainer"></param>
    private static void ShiftLeftSaveButton(HtmlGenericControl iconButtonsContainer)
    {
        for (int controlIndex = 0; controlIndex < iconButtonsContainer.Controls.Count; controlIndex++)
        {
            if (((HtmlButton)iconButtonsContainer.Controls[controlIndex]).InnerHtml.Contains("floppy-disk")
                && controlIndex != 0)
            {
                ((HtmlButton)iconButtonsContainer.Controls[controlIndex]).Style.Add("position", "absolute");
                ((HtmlButton)iconButtonsContainer.Controls[controlIndex]).Style.Add("left", "-50px");
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="toolbar"></param>
    /// <param name="forbiddenKeys"></param>
    /// <param name="buttonsToAdd"></param>
    /// <param name="addPrevious"></param>
    protected void CreateToolBar(HtmlGenericControl toolbar, string[] forbiddenKeys = null, string[][] buttonsToAdd = null, bool addPrevious = false)
    {
        List<string> f24Screens = new List<string>() { "IIQ02_LOCSFL", "IIQ02_ORDSFL", "IIQ02_ORDSFL1", "IIQ02_TRNSFL1","HMU02_CTL2",
            "IIQ02_TRNSFL2", "IIQ02_TRNSFL3", "COU01_SCRN2A", "PHU01A_SFL1", "PHU01A_SFL2", "PHU01A_SFL3", "PHU01A_SFL4", "PHU01A_SFL5"
        , "PHU01A_SFL6", "PHU01A_SFL7", "PHU01A_SFL8", "MBU03_SFL1", "CRU01_TAB_1_D", "CRU01_TAB1", "HGU01_A_TAB", "HGU01_B_TAB_SFL", "HGU01_E_TAB","HQU03_SFL1", "HQU02_SFL1", "HQU02_SFL2", "HQU02_SFL3", "HQU02_SFL4"};
        HtmlGenericControl iconButtonsContainer = new HtmlGenericControl("div");
        iconButtonsContainer.Attributes.Add("class", "icon-function-keys-container");
        HtmlGenericControl exitButtonContainer = new HtmlGenericControl("div");
        exitButtonContainer.Attributes.Add("class", "exit-btn-container");
        toolbar.Controls.Add(exitButtonContainer);

        privateForbiddenHostKeys = new List<string>();
        if (forbiddenKeys != null)
        {
            for (int i = 0; i < forbiddenKeys.Length; i++)
            {
                privateForbiddenHostKeys.Add(forbiddenKeys[i]);
            }
        }
        GXIHostKey[] hostKeys = gx_session.getScreen(ScreenRequest).getHostKeys();
        if (hostKeys.Length == 0)
        {
            AddExitButtonToToolbar(exitButtonContainer, false); // if empty add f3 by default
            return;
        }

        int firstHostKeyNum = getHostKeyNumber(hostKeys[0]);
        string screenName = gx_session.getScreen(ScreenRequest).getName().ToUpper();
        if (HasMore(hostKeys) && !f24Screens.Contains(screenName))
        {
            while (true)
            {
                hostKeys = GetHostKeysNotInScreen(gx_session);
                if (getHostKeyNumber(hostKeys[0]) <= firstHostKeyNum)
                {
                    break;
                }
            }
        }
        bool prevExists = AppendKeysToToolbar(hostKeys, toolbar, iconButtonsContainer);

        string firstHostKey = hostKeys[0].getCaption();
        if (HasMore(hostKeys) && !f24Screens.Contains(screenName))
        {
            while (true)
            {

                hostKeys = GetHostKeysNotInScreen(gx_session);
                if (hostKeys[0].getCaption() == firstHostKey)
                {
                    break;
                }
                else
                {
                    AppendKeysToToolbar(hostKeys, toolbar, iconButtonsContainer);
                }
            }
        }

        if (addPrevious)
        {
            prevExists = true;
        }
        AddExitButtonToToolbar(exitButtonContainer, prevExists);

        if (buttonsToAdd != null)
        {
            for (int i = 0; i < buttonsToAdd.Length; i++)
            {
                bool withTooltip = buttonsToAdd[i][1].Contains("[pf");
                HtmlButton button;
                if (withTooltip)
                {
                    int hostkeyLength = buttonsToAdd[i][1].IndexOf("]") - buttonsToAdd[i][1].IndexOf("[p") - 2;
                    string hostKeyNumber = buttonsToAdd[i][1].Substring(buttonsToAdd[i][1].IndexOf("[p") + 2, hostkeyLength).ToUpper();
                    button = CreateNewButton("btn btn-invisible command-toolbar_btn", buttonsToAdd[i][1], buttonsToAdd[i][0], true, hostKeyNumber);
                }
                else
                {
                    button = CreateNewButton("btn btn-invisible command-toolbar_btn", buttonsToAdd[i][1], buttonsToAdd[i][0], false);
                }
                toolbar.Controls.Add(button);
            }
        }

        if (iconButtonsContainer.Controls.Count != 0)
        {
            //move save button to the left of the div
            if (iconButtonsContainer.Controls.Count > 1)
            {
                ShiftLeftSaveButton(iconButtonsContainer);
            }
            toolbar.Controls.Add(iconButtonsContainer);
        }

        if (Session["goToRemoteCPC"] != null && Session["remoteCPC"] != null)
        {
            toolbar.Style.Add("background-color", "#f68712");
            HtmlGenericControl remoteCompanyNameDiv = new HtmlGenericControl("div")
            {
                InnerText = (string)Session["remoteCPC"]
            };
            remoteCompanyNameDiv.Attributes.Add("class", "remote-company-div");
            toolbar.Controls.AddAt(0, remoteCompanyNameDiv);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sessionId"></param>
    /// <returns></returns>
    [WebMethod]
    public static string GetMoreFunctionKeys(string sessionId)
    {
        if (HttpContext.Current.Session["hostKeysToolbarExists"] != null)
        {
            return "";
        }

        LiteralControl literalToolbar = new LiteralControl("<div>");
        LiteralControl literalIconButtonsContainer = new LiteralControl("<div class='icon-function-keys-container'>");

        GXIClientBaseObject baseObject = GetGxSession(sessionId);
        GXIHostKey[] hostKeys = baseObject.getScreen(new GXGetScreenRequest()).getHostKeys();
        string firstHostKey;
        try
        {
            firstHostKey = hostKeys[0].getCaption();
        }
        catch (IndexOutOfRangeException error)
        {
            DetachGxSession(baseObject);
            return "fail";
        }

        while (true)
        {
            string screenNameBefore = baseObject.getScreen().getName();
            hostKeys = GetHostKeysNotInScreen(baseObject);
            string screenNameAfter = baseObject.getScreen().getName();

            //in case of the function being called from a window and behind a screen with f24
            if (screenNameBefore != screenNameAfter)
            {
                baseObject.sendKeys("[tab]");
                break;
            }

            if (hostKeys[0].getCaption() == firstHostKey)
            {
                break;
            }
            else
            {
                AppendKeysToLiteralToolbar(hostKeys, literalToolbar, literalIconButtonsContainer, baseObject);
            }
        }

        literalIconButtonsContainer.Text += "</div>";
        literalToolbar.Text += literalIconButtonsContainer.Text + "</div>";
        DetachGxSession(baseObject);
        HttpContext.Current.Session["hostKeysToolbarExists"] = true;
        return literalToolbar.Text;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKey"></param>
    /// <returns></returns>
    private int getHostKeyNumber(GXIHostKey hostKey)
    {
        string firstHostKey = hostKey.getAction().Substring(3);
        firstHostKey = firstHostKey.Remove(firstHostKey.Length - 1);
        bool isDigit = Regex.IsMatch(firstHostKey, @"\d+");
        if (isDigit) { return Int32.Parse(firstHostKey); }
        else { return -1; }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="exitButtonContainer"></param>
    /// <param name="prevExists"></param>
    protected void AddExitButtonToToolbar(HtmlGenericControl exitButtonContainer, bool prevExists)
    {
        string onClick;
        if (prevExists)
        {
            onClick = "gx_SubmitKey('[PF12]')";
        }
        else
        {
            onClick = "gx_SubmitKey('[PF3]')";
        }
        exitButtonContainer.Attributes.Add("class", "exit-btn-container");
        HtmlButton button = CreateNewButton("btn btn-invisible command-toolbar_btn", onClick,
                    "<img src=\"/images/circle-arrow-left.svg\" class=\"image-toolbar-size\"/>", true, "Exit");
        button.Attributes.Add("tabindex", "-1");
        exitButtonContainer.Controls.Add(button);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKey"></param>
    /// <param name="sessionObject"></param>
    /// <returns></returns>
    public static bool IsHostKeyInScreen(GXIHostKey hostKey, GXIClientBaseObject sessionObject)
    {
        bool isFloatingWindow = false;
        int LeftColumnPosition = 0;
        int RightColumnPosition = 0;
        int upperRowPosition = 0;
        int bottomRowPosition = 0;

        GXGetScreenRequest req = new GXGetScreenRequest();
        GXIField bottomLeftBorderField = sessionObject.getScreen(req).getFieldInstance("bottomLeftBorder", 0);
        GXIField bottomRightBorderField = sessionObject.getScreen(req).getFieldInstance("bottomRightBorder", 0);
        GXIField upperRightBorderField = sessionObject.getScreen(req).getFieldInstance("upperRightBorder", 0);
        GXIField upperLeftBorderField = sessionObject.getScreen(req).getFieldInstance("upperLeftBorder", 0);

        if (bottomLeftBorderField != null)
        {
            LeftColumnPosition = bottomLeftBorderField.getPosition().getColumn();
            RightColumnPosition = bottomRightBorderField.getPosition().getColumn();
            upperRowPosition = upperRightBorderField.getPosition().getRow();
            bottomRowPosition = bottomLeftBorderField.getPosition().getRow();
            isFloatingWindow = true;
        }

        int rowPosition = hostKey.getDisplayPosition().getRow();
        int columnPosition = hostKey.getDisplayPosition().getColumn();
        bool isInScreen =
            ((rowPosition < bottomRowPosition) &&
            (columnPosition > LeftColumnPosition) &&
            (rowPosition > upperRowPosition) &&
            (columnPosition < RightColumnPosition) && isFloatingWindow) || (!isFloatingWindow);

        return isInScreen;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKeys"></param>
    /// <param name="toolbar"></param>
    /// <param name="iconButtonsContainer"></param>
    /// <returns></returns>
    private bool AppendKeysToToolbar(GXIHostKey[] hostKeys, HtmlGenericControl toolbar, HtmlGenericControl iconButtonsContainer)
    {
        TextInfo textInfo = new CultureInfo("en-US", false).TextInfo;
        bool prevExists = false;
        foreach (GXIHostKey hostKey in hostKeys)
        {
            string keyToPress = hostKey.getAction();
            string text = textInfo.ToTitleCase(HostKeysCaptionTranslator.GetLongWord(hostKey.getCaption().ToLower()));

            bool isCalenderScreen = calenderScreen.Contains(gx_session.getScreen(ScreenRequest).getName()) && text.ToLower() == "calender";
            bool isForbidden = overallForbiddenHostKeys.Contains(text.ToLower()) || privateForbiddenHostKeys.Contains(text.ToLower());
            bool isInScreen = IsHostKeyInScreen(hostKey, gx_session);
            bool isMoreKey = text.ToLower() == "more" && keyToPress == "[PF24]";
            bool isExitKey = text.ToLower().Contains("exit") && keyToPress == "[PF3]";
            bool isPrevKey = (text.ToLower() == "previous" || text.ToLower() == "return") && keyToPress == "[PF12]";
            if (isPrevKey && !isForbidden && isInScreen)
            {
                prevExists = true;
            }

            string[] updateKeyWords = new string[] { "update", "save", "add", "accept", "active", "approve", "apply hold", "update bank list", "update box",
            "send", "run", "save data", "return", "release","open","process"};
            string[] excelKeyWords = new string[] { "excel", "all j/e to excel", "exl", "to excel" };
            string[] printKeyWords = new string[] { "print", "print all j/e" };
            string[] remarkKeyWords = new string[] { "remarks", "note", "customer remark" };
            bool isUpdateKey = updateKeyWords.Contains(text.ToLower()) && keyToPress == "[PF10]";
            bool isRemarkKey = remarkKeyWords.Contains(text.ToLower()) && keyToPress == "[PF13]";
            bool isDocKey = text.ToLower() == "document";
            bool isExcelKey = excelKeyWords.Contains(text.ToLower()) && (keyToPress == "[PF21]");
            bool isPrintKey = printKeyWords.Contains(text.ToLower()) && (keyToPress == "[PF9]" || keyToPress == "[PF17]");

            GXIField fullHostKeyObject = GetFullHostKeyObject(hostKey, gx_session);
            bool isHostKeyVisible = fullHostKeyObject.isVisible();
            bool isBlueTextColor = fullHostKeyObject.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_BLUE;
            bool isAquaTextColor = fullHostKeyObject.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_AQUA;
            bool isBlackBGColor = fullHostKeyObject.getBGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_BLACK;
            if (isForbidden || !isInScreen || isMoreKey || isPrevKey || !isHostKeyVisible || isExitKey ||
                (!isBlueTextColor && !isAquaTextColor && isBlackBGColor) || isCalenderScreen)
            {
                continue;
            }
            else if (isUpdateKey || isRemarkKey || isDocKey || isExcelKey || isPrintKey)
            {
                AppendIconKeyToToolbar(iconButtonsContainer, text, keyToPress, !isBlackBGColor);
            }
            else
            {
                HtmlButton button = CreateNewButton("btn btn-invisible command-toolbar_btn", "gx_SubmitKey('" + keyToPress + "')",
                    text, true, keyToPress.Substring(2, keyToPress.Length - 3));
                ColorPFKey(hostKey, button, gx_session);
                toolbar.Controls.Add(button);
            }
        }
        return prevExists;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKeys"></param>
    /// <param name="literalToolbar"></param>
    /// <param name="literalIconButtonsContainer"></param>
    /// <param name="sessionObject"></param>
    private static void AppendKeysToLiteralToolbar(GXIHostKey[] hostKeys, LiteralControl literalToolbar, LiteralControl literalIconButtonsContainer, GXIClientBaseObject sessionObject)
    {
        TextInfo textInfo = new CultureInfo("en-US", false).TextInfo;
        foreach (GXIHostKey hostKey in hostKeys)
        {
            string keyToPress = hostKey.getAction();
            string text = textInfo.ToTitleCase(HostKeysCaptionTranslator.GetLongWord(hostKey.getCaption().ToLower()));

            bool isCalenderScreen = calenderScreen.Contains(sessionObject.getScreen(new GXGetScreenRequest()).getName()) && text.ToLower() == "calender";
            bool isForbidden = overallForbiddenHostKeys.Contains(text.ToLower()) || privateForbiddenHostKeys.Contains(text.ToLower());
            bool isInScreen = IsHostKeyInScreen(hostKey, sessionObject);
            bool isMoreKey = text.ToLower() == "more" && keyToPress == "[PF24]";
            bool isExitKey = text.ToLower() == "exit" && keyToPress == "[PF3]";
            bool isPrevKey = (text.ToLower() == "previous" || text.ToLower() == "return") && keyToPress == "[PF12]";

            string[] updateKeyWords = new string[] { "update", "save", "add", "accept", "active", "approve", "apply hold", "update bank list", "update box",
            "send", "run", "save data", "return", "release","open","process","print"};
            string[] excelKeyWords = new string[] { "excel", "all j/e to excel", "exl", "to excel" };
            string[] printKeyWords = new string[] { "print", "print all j/e" };
            string[] remarkKeyWords = new string[] { "remarks", "note", "customer remark" };
            bool isUpdateKey = updateKeyWords.Contains(text.ToLower()) && keyToPress == "[PF10]";
            bool isRemarkKey = remarkKeyWords.Contains(text.ToLower()) && keyToPress == "[PF13]";
            bool isDocKey = text.ToLower() == "document";
            bool isExcelKey = excelKeyWords.Contains(text.ToLower()) && (keyToPress == "[PF21]");
            bool isPrintKey = printKeyWords.Contains(text.ToLower()) && (keyToPress == "[PF9]" || keyToPress == "[PF17]");


            GXIField fullHostKeyObject = GetFullHostKeyObject(hostKey, sessionObject);
            bool isHostKeyVisible = fullHostKeyObject.isVisible();
            bool isBlueTextColor = fullHostKeyObject.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_BLUE;
            bool isAquaTextColor = fullHostKeyObject.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_AQUA;
            bool isBlackBGColor = fullHostKeyObject.getBGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_BLACK;
            if (isForbidden || !isInScreen || isMoreKey || isPrevKey || !isHostKeyVisible || isExitKey ||
                (!isBlueTextColor && !isAquaTextColor && isBlackBGColor) || isCalenderScreen)
            {
                continue;
            }
            else if (isUpdateKey || isRemarkKey || isDocKey || isExcelKey || isPrintKey)
            {
                AppendIconKeyToLiteralToolbar(literalIconButtonsContainer, text, keyToPress, !isBlackBGColor);
            }
            else
            {
                LiteralControl literalButton = CreateNewLiteralButton("gx_SubmitKey(\"" + keyToPress + "\")",
                    text, true, keyToPress.Substring(2, keyToPress.Length - 3));
                ColorLiteralPFKey(hostKey, literalButton, "btn btn-invisible command-toolbar_btn", sessionObject);
                literalToolbar.Text += literalButton.Text;
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="toolbar"></param>
    /// <param name="id"></param>
    /// <param name="iconName"></param>
    protected void AppendIconKeyToToolbar(HtmlGenericControl toolbar, string id, string iconName, string toolTipTextParam = "", string onClickFunc = "")
    {
        string image;
        string toolTipText;
        string onClick;
       
        iconName = iconName.ToLower();
        switch (iconName)
        {
            case "gmfx":
                image = "<img src=\"/images/gmfx.svg\" class=\"image-toolbar-size\"/>";
                toolTipText = "GMFX";
                onClick = string.Format("gx_SubmitKeyInPos('{0}', '[enter]')", id);
                break;
            case "gallery":
                image = "<img src=\"/images/gallery.svg\" class=\"image-toolbar-size\"/>";
                toolTipText = "Gallery";
                onClick = string.Format("gx_SubmitKeyInPos('{0}', '[enter]')", id);
                break;
            case "default":
                image = "<img src=\"/images/default.svg\" class=\"image-toolbar-size\"/>";
                toolTipText = "Defaults";
                onClick = "showDefaults(event);";
                break;
            case "ai_upload":
                image = "<img src=\"/images/ai-upload.svg\" class=\"image-toolbar-size\"/>";
                toolTipText = toolTipTextParam;
                onClick = onClickFunc;
                break;
            default:
                image = "";
                toolTipText = "";
                onClick = "";
                break;
        }
        HtmlButton button = CreateNewButton("btn btn-invisible command-toolbar_btn", onClick,
            image, true, toolTipText);
        if (toolbar.Controls[toolbar.Controls.Count - 1] is HtmlButton ||
            ((HtmlGenericControl)toolbar.Controls[toolbar.Controls.Count - 1]).Attributes["class"].Contains("exit-btn-container"))
        {
            HtmlGenericControl iconButtonsContainer = new HtmlGenericControl("div");
            iconButtonsContainer.Attributes.Add("class", "icon-function-keys-container");
            toolbar.Controls.Add(iconButtonsContainer);
        }

        toolbar.Controls[toolbar.Controls.Count - 1].Controls.Add(button);
        if (iconName == "default")
        {
            HtmlGenericControl container = new HtmlGenericControl("div");
            container.Attributes.Add("class", "relative-element");

            HtmlButton showSettingButton = new HtmlButton();
            showSettingButton.InnerText = "Go to default settings";
            showSettingButton.Attributes.Add("class", "show-defaults-window-btn");
            showSettingButton.Attributes.Add("onclick", "showDefaultsSettingWindow(event);");
            container.Controls.Add(showSettingButton);

            toolbar.Controls[toolbar.Controls.Count - 1].Controls.Add(container);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="keyText"></param>
    /// <param name="enlightenedKey"></param>
    /// <returns></returns>
    protected static string GetIconForPFKey(string keyText, bool enlightenedKey = false)
    {
        string image;
        switch (keyText)
        {
            case "remarks":
            case "note":
            case "customer remark":
                if (enlightenedKey)
                {
                    image = "<img src=\"/images/comment-lines-solid.svg\" class=\"image-toolbar-size\"/>";
                }
                else
                {
                    image = "<img src=\"/images/comment-lines.svg\" class=\"image-toolbar-size\"/>";
                }
                break;
            case "document":
                if (enlightenedKey)
                {
                    image = "<img src=\"/images/file-arrow-up-solid.svg\" class=\"image-toolbar-size\"/>";
                }
                else
                {
                    image = "<img src=\"/images/file-arrow-up.svg\" class=\"image-toolbar-size\"/>";
                }
                break;
            case "exl":
            case "excel":
            case "to excel":
            case "all j/e to excel":
                image = "<img src=\"/images/file-excel.svg\" class=\"image-toolbar-size\"/>";
                break;
            case "print":
            case "print all j/e":
                image = "<img src=\"/images/action-icons/print-white.svg\" class=\"image-toolbar-size\"/>";
                break;
            case "ai upload":
                image = "<img src=\"/images/ai-upload.svg\" class=\"image-toolbar-size\"/>"; 
                break;
            default:
                image = "<img src=\"/images/folder-open.svg\" class=\"image-toolbar-size\"/>";
                break;
        }
        return image;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="iconButtonsContainer"></param>
    /// <param name="text"></param>
    /// <param name="keyToPress"></param>
    /// <param name="enlightenedKey"></param>
    private static void AppendIconKeyToToolbar(HtmlGenericControl iconButtonsContainer, string text, string keyToPress, bool enlightenedKey = false)
    {
        string image = GetIconForPFKey(text.ToLower(), enlightenedKey);
        HtmlButton button = CreateNewButton("btn btn-invisible command-toolbar_btn", "gx_SubmitKey('" + keyToPress + "')",
            image, true, text);
        iconButtonsContainer.Controls.Add(button);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="literalIconButtonsContainer"></param>
    /// <param name="text"></param>
    /// <param name="keyToPress"></param>
    /// <param name="enlightenedKey"></param>
    private static void AppendIconKeyToLiteralToolbar(LiteralControl literalIconButtonsContainer, string text, string keyToPress, bool enlightenedKey = false)
    {
        string image = GetIconForPFKey(text.ToLower(), enlightenedKey);
        LiteralControl button = CreateNewLiteralButton("gx_SubmitKey(\"" + keyToPress + "\")", image, true, text);
        button.Text = button.Text.Replace("<button", "<button class='btn btn-invisible command-toolbar_btn' ");
        literalIconButtonsContainer.Text += button.Text;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKey"></param>
    /// <param name="sessionObject"></param>
    /// <returns></returns>
    private static GXIField GetFullHostKeyObject(GXIHostKey hostKey, GXIClientBaseObject sessionObject)
    {
        int row = hostKey.getDisplayPosition().getRow();
        int column = hostKey.getDisplayPosition().getColumn();
        return sessionObject.getScreen(new GXGetScreenRequest()).getFields().getFieldByPosition(new GXPosition(row, column));
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKey"></param>
    /// <param name="hostKeyBtn"></param>
    /// <param name="sessionObject"></param>
    private static void ColorPFKey(GXIHostKey hostKey, HtmlButton hostKeyBtn, GXIClientBaseObject sessionObject)
    {
        int bgColor = GetFullHostKeyObject(hostKey, sessionObject).getBGColor();
        string color = GetBackgroundColor(bgColor);
        if (color == "#bbd9ff")
        {
            hostKeyBtn.Attributes.Add("class", hostKeyBtn.Attributes["class"] + " highlighted-host-key");
        }
        else if (color != "")
        {
            hostKeyBtn.Style.Add("background-color", color);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKey"></param>
    /// <param name="hostKeyBtn"></param>
    /// <param name="cssClass"></param>
    /// <param name="sessionObject"></param>
    private static void ColorLiteralPFKey(GXIHostKey hostKey, LiteralControl hostKeyBtn, string cssClass, GXIClientBaseObject sessionObject)
    {
        int bgColor = GetFullHostKeyObject(hostKey, sessionObject).getBGColor();
        string color = GetBackgroundColor(bgColor);
        if (color == "#bbd9ff")
        {
            hostKeyBtn.Text = hostKeyBtn.Text.Replace("<button", "<button class='" + cssClass + " highlighted-host-key' ");
        }
        else if (color != "")
        {
            hostKeyBtn.Text = hostKeyBtn.Text.Replace("<button", "<button style='background-color:" + color + "' class='" + cssClass + "' ");
        }
        else
        {
            hostKeyBtn.Text = hostKeyBtn.Text.Replace("<button", "<button class='" + cssClass + "' ");
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="hostKeys"></param>
    /// <returns></returns>
    private bool HasMore(GXIHostKey[] hostKeys)
    {
        foreach (GXIHostKey hostKey in hostKeys)
        {
            string keyToPress = hostKey.getAction();
            string text = hostKey.getCaption();

            bool isMoreKey = text.ToLower() == "more" && keyToPress == "[PF24]";

            if (isMoreKey && IsHostKeyInScreen(hostKey, gx_session))
            {
                return true;
            }
        }
        return false;
    }
    #endregion

    #region Helper functions for Select element
    /// <summary>
    /// Fills a requested combobox with data from an SQL table.
    /// </summary>
    /// <param name="combobox">The combobox id in your aspx page.</param>
    /// <param name="rows">Double string array that contains two columns from the SQL query (code + short description).</param>
    protected void FillComboBox(HtmlSelect combobox, string[][] rows, Dictionary<string, string> moreValues = null)
    {
        combobox.Items.Clear();
        if (rows != null)
        {
            combobox.Items.Add(new ListItem("", ""));
            for (int i = 0; i < rows.Length; i++)
            {
                ListItem item = new ListItem(string.Format("{0}: {1}", rows[i][0], rows[i][1]), rows[i][0]);
                combobox.Items.Add(item);
            }
            
        }
        if (moreValues != null)
        {
            foreach (KeyValuePair<string, string> entry in moreValues)
            {
                ListItem item = new ListItem(string.Format("{0}: {1}", entry.Key, entry.Value), entry.Key);
                combobox.Items.Add(item);
            }
        }
    }



    protected void FillMonthComboBox(HtmlSelect combobox, string endMonth = "12")
    {
        string chosenValue = gx_session.getScreen(ScreenRequest).getFieldContent(combobox.ID, 0).Trim();
        string chosenValue1 = chosenValue.TrimStart('0');
        if (chosenValue != null)
        {
            combobox.Attributes.Add("galValue", chosenValue1);
        }

    }





    /// <summary>
    /// 
    /// </summary>
    /// <param name="combobox"></param>
    /// <param name="rows"></param>
    /// <param name="special"></param>
    protected void FillComboBoxSingle(HtmlSelect combobox, string[] rows, bool special = false)
    {
        if (rows != null)
        {
            if (!special)
            {
                combobox.Items.Add(new ListItem(""));
            }
            for (int i = 0; i < rows.Length; i++)
            {
                if (rows[i].Trim() == "")
                {
                    continue;
                }
                string text = rows[i];
                ListItem item = new ListItem(text, rows[i]);
                combobox.Items.Add(item);
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="combobox"></param>
    /// <param name="index"></param>
    /// <param name="inTable"></param>
    protected void DisableComboBox(HtmlSelect[] combobox, int index = 0, bool inTable = false)
    {
        GXGetScreenRequest req = new GXGetScreenRequest();
        req.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
        for (int i = 0; i < combobox.Length; i++)
        {
            string id = combobox[i].ID;
            if (inTable)
            {
                id = id.Substring(0, id.Length - 4);
            }
            try
            {
                bool isProtected = gx_session.getScreen(req).getFieldInstance(id, index).isProtected();
                bool visibleUnprotected = !(gx_session.getScreen(req).getFieldInstance(id, index).isUnderlined());

                if (isProtected || visibleUnprotected)
                {
                    combobox[i].Attributes.Add("disabled", "true");
                }
            }
            catch (NullReferenceException error)
            {
                SyncWebAndAS400Sessions();
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    private void AssignNotValidValueToCombo()
    {
        ControlCollection controls = Form.FindControl("GXPagePlaceHolder").Controls;
        HtmlInputText notValidValuesForCombo = ((HtmlInputText)Form.FindControl("notValidValuesForCombo"));
        notValidValuesForCombo.Value = "";
        for (int controlIndex = 0; controlIndex < controls.Count; controlIndex++)
        {
            if (!(controls[controlIndex] is HtmlSelect))
            {
                continue;
            }
            string originalId = controls[controlIndex].ID;
            string generatedId = controls[controlIndex].ClientID;
            GXIField applinxField = gx_session.getScreen(ScreenRequest).getFieldInstance(originalId, 0);
            try
            {
                string fieldText = applinxField.getContent().Trim();
                if (fieldText != "")
                {
                    notValidValuesForCombo.Value += generatedId + ";" + fieldText + ",";
                }
            }
            catch (System.Exception AssignNotValidValueToCombo)
            {
                //SyncWebAndAS400Sessions();
            }
        }
    }
    #endregion

    #region Hiding indicator dependent fields
    /// <summary>
    /// 
    /// </summary>
    private void TriggerToggleIndicatorField()
    {
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "myJsFn", "triggerHideField();", true);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="field"></param>
    /// <param name="hidden"></param>
    /// <param name="single"></param>
    /// <param name="hasLabel"></param>
    /// <param name="isLast"></param>
    /// <param name="isUserDefined"></param>
    protected void ToggleIndicatorField(string[] fields, HtmlInputText hidden, bool single = true, bool hasLabel = true, bool isLast = true, bool isUserDefined = false)
    {
        string hiddenValue = hidden.Value;
        if (isUserDefined)
        {
            hiddenValue = "";
        }

        GXGetScreenRequest req = new GXGetScreenRequest();
        req.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
        for (int i = 0; i < fields.Length; i++)
        {
            try
            {
                GXIField field = gx_session.getScreen(req).getFieldInstance(fields[i], 0);
                bool isValueUserDefine = fields[i].ToLower().Contains("value");
                bool isLabelTextEmpty = i > 0 && gx_session.getScreen(req).getFieldInstance(fields[i - 1], 0).getContent().Trim() != "";
                bool isBlackBG = field.getBGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_BLACK;
                bool isGreenText = field.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN;
                bool isPurpleText = field.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE;
                bool isUnderlined = field.isUnderlined();
                bool visibleUnprotected = (isUnderlined && (isGreenText || isPurpleText)) || (isUnderlined && !isBlackBG);
                bool visibleProtected = field.getContent().Replace('-', ' ').Trim() != "";
                bool isVisible = field.isVisible();
                if (isUserDefined && isValueUserDefine && isLabelTextEmpty)//add for user defined fields
                {
                    continue;
                }
                else if ((visibleProtected || visibleUnprotected) && isVisible)
                {
                    continue;
                }
                else
                {
                    if (hiddenValue.Trim() != "")
                    {
                        hiddenValue += ",";
                    }
                    if (single)
                    {
                        hiddenValue += "ctl00_GXPagePlaceHolder_" + fields[i] + "#true#false";
                    }
                    else
                    {
                        if (hasLabel)
                        {
                            hiddenValue += "ctl00_GXPagePlaceHolder_" + fields[i] + "#false#true";
                        }
                        else
                        {
                            hiddenValue += "ctl00_GXPagePlaceHolder_" + fields[i] + "#false#false";
                        }
                    }
                }
            }
            catch (System.Exception toggleIndicatorField)
            {
                SyncWebAndAS400Sessions();
            }
        }

        if (hiddenValue.Trim() != "")
        {
            hidden.Value = hiddenValue;
            if (isLast)
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "myJsFn", "hideField();", true);
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    private void ResetHiddenField()
    {
        if (Form.FindControl("ctl00$GXPagePlaceHolder$hiddenField") != null)
        {
            ((HtmlInputText)Form.FindControl("ctl00$GXPagePlaceHolder$hiddenField")).Value = "";
        }
    }
    #endregion

    #region Fields coloring
    /// <summary>
    /// 
    /// </summary>
    /// <param name="galColor"></param>
    /// <returns></returns>
    public static string GetBackgroundColor(int galColor)
    {
        string cssColor = "";
        switch (galColor)
        {

            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE:
                cssColor = "#e9d8ff";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_BLUE:
                cssColor = "#bbd9ff";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE:
                cssColor = "#c5e7c5";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED:
                cssColor = "#ffacaa";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_AQUA:
                cssColor = "#3fcaba";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN:
                cssColor = "#a4e9a3";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_YELLOW:
                cssColor = "#ffbaed";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_BLACK:
                break;
            default:
                break;
        }
        return cssColor;
    }
    public static string GetClass(int galColor, string elementType)
    {
        string className = "";
        switch (galColor)
        {

            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE:
                className = "purple";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_BLUE:
                className = "blue";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE:
                className = "white";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED:
                className = "red";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_AQUA:
                className = "aqua";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN:
                className = "green";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_YELLOW:
                className = "yellow";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_BLACK:
                break;
            default:
                break;
        }
        className = elementType + "-" + className;
        return className;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="galColor"></param>
    /// <returns></returns>
    public static string GetTextColor(int galColor)
    {
        string cssColor = "";
        switch (galColor)
        {
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE:
                cssColor = "#7238BC";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_BLUE:
                cssColor = "#3185ed";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE:
                cssColor = "#15b912";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED:
                cssColor = "#ff000c";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_AQUA:
                cssColor = "#3fcaba";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN:
                cssColor = "#15b912";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_YELLOW:
                cssColor = "#ff00bc";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_BLACK:
                break;
            default:
                break;
        }
        return cssColor;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="galColor"></param>
    /// <returns></returns>
    public static string GetCheckboxBgColorClass(int galColor)
    {
        string cssColor = "";
        switch (galColor)
        {
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE:
                cssColor = "purple-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_BLUE:
                cssColor = "blue-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE:
                cssColor = "white-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED:
                cssColor = "red-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_AQUA:
                cssColor = "aqua-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN:
                cssColor = "green-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_YELLOW:
                cssColor = "yellow-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_BLACK:
                break;
            default:
                break;
        }
        return cssColor;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="galColor"></param>
    /// <returns></returns>
    public static string GetCheckboxBorderColorClass(int galColor)
    {
        string cssColor = "";
        switch (galColor)
        {
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE:
                cssColor = "purple-border-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_BLUE:
                cssColor = "blue-border-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE:
                cssColor = "white-border-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED:
                cssColor = "red-border-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_AQUA:
                cssColor = "aqua-border-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN:
                cssColor = "green-border-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_YELLOW:
                cssColor = "yellow-border-cursor";
                break;
            case GXBaseObjectConstants.GX_FIELD_COLOR_BLACK:
                break;
            default:
                break;
        }
        return cssColor;
    }

    /// <summary>
    /// 
    /// </summary>
    private void ColorAllFields()
    {
        GXGetScreenRequest req = new GXGetScreenRequest();
        req.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
        ControlCollection controls = Form.FindControl("GXPagePlaceHolder").Controls;
        string[] idToIgnore = new string[] { "hiddenField", "pageIndex", "multipleActionRowsD", "multipleActionRow1",
            "maxRows", "fakeCombo", "head_SEL1", "head_SEL2", "head_SEL3", "head_SEL4", "f9Massiv_ICS", "select_ICSS", "callStack", "iocatDesc"};
        string[] purpleNoErrorFields = new string[] { "shipMethod_SPCH" };
        for (int i = 0; i < controls.Count; i++)
        {
            if (controls[i] is LiteralControl ||
                (controls[i] is HtmlControl &&
                    (((HtmlControl)controls[i]).Attributes["fake-field"] != null ||
                    ((HtmlControl)controls[i]).TagName == "div" ||
                    ((HtmlControl)controls[i]).TagName == "h1" ||
                    idToIgnore.Contains(((HtmlControl)controls[i]).ID) ||
                    ((HtmlControl)controls[i]).ID.Contains("_DUPLICATE") ||
                    (((HtmlControl)controls[i]).Attributes["class"] != null &&
                        (((HtmlControl)controls[i]).Attributes["class"].Contains("invalid-feedback") ||
                        ((HtmlControl)controls[i]).Attributes["class"].Contains("no-color") ||
                        ((HtmlControl)controls[i]).Attributes["class"].Contains("pc-command-btn")
                        )))))
            {
                continue;
            }
            else if (controls[i] is HtmlControl && ((HtmlControl)controls[i]).TagName == "table")
            {
                if (((HtmlTable)controls[i]).Rows.Count == 0) { continue; }
                HtmlTableRow thRow = ((HtmlTable)controls[i]).Rows[0];
                if (thRow.Cells.Count == 0 || thRow.Cells[0].TagName != "th") { continue; }

                try
                {
                    for (int thIndex = 1; thIndex < thRow.Cells.Count; thIndex++)
                    {
                        for (int controlIndex = 0; controlIndex < thRow.Cells[thIndex].Controls.Count; controlIndex++)
                        {
                            if (!(thRow.Cells[thIndex].Controls[controlIndex] is HtmlControl) || idToIgnore.Contains(((HtmlControl)thRow.Cells[thIndex].Controls[controlIndex]).ID))
                            {
                                continue;
                            }

                            HtmlControl control = (HtmlControl)thRow.Cells[thIndex].Controls[controlIndex];
                            GXIField field = null;
                            try
                            {
                                field = gx_session.getScreen(req).getFieldInstance(control.ID, 0);
                            }
                            catch (NullReferenceException exception)
                            {
                                SyncWebAndAS400Sessions();
                            }
                            if (field == null) { return; }

                            int fgGalColor = field.getFGColor();
                            string fgCssColor = GetTextColor(fgGalColor);
                            int bgGalColor = field.getBGColor();
                            string bgCssColor = GetBackgroundColor(bgGalColor);

                            if (bgCssColor != "" && bgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE &&
                                ((control.Attributes["class"] != null && !control.Attributes["class"].Contains("no-color")) ||
                                control.Attributes["class"] == null))
                            {
                                if (bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED)
                                {
                                    if (control.Attributes["readonly"] == null)
                                    {
                                        control.Style.Add("border", "#ff2149 1px solid");
                                        control.Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                                    }
                                    else
                                    {
                                        control.Style.Add("border", bgCssColor + " 1px solid");
                                    }
                                }
                            }
                            if (fgCssColor != ""
                                && fgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN
                                && fgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE
                                && fgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE)
                            {
                                control.Style.Add("color", fgCssColor);
                            }
                            if (fgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE)
                            {
                                control.Attributes.Add("has-default", "");
                            }
                        }
                    }
                }
                catch (System.Exception exception)
                {
                    //SyncWebAndAS400Sessions();
                }
            }
            else if (controls[i] is GXCheckBox)
            {
                try
                {
                    int fgGalColor = gx_session.getScreen(req).getFieldInstance(controls[i].ID, 0).getFGColor();
                    int bgGalColor = gx_session.getScreen(req).getFieldInstance(controls[i].ID, 0).getBGColor();
                    if (fgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN &&
                        (fgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_BLACK ||
                        bgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_BLACK)) // dont reflect green text
                    {
                        string addBackgroundColor = "";
                        string fgCssColor = GetCheckboxBorderColorClass(fgGalColor);
                        string bgCssColor = GetCheckboxBgColorClass(bgGalColor);
                        if (bgCssColor != "")
                        {
                            addBackgroundColor = string.Format(
                        "document.getElementById('{0}').nextElementSibling.classList.add('{1}');",
                        "ctl00$GXPagePlaceHolder$" + controls[i].ID, bgCssColor.Trim());
                        }
                        string addDefult = string.Format(
                        "document.getElementById('{0}').nextElementSibling.setAttribute('has-default', '');",
                        "ctl00$GXPagePlaceHolder$" + controls[i].ID);
                        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "addClass" + i, addBackgroundColor + addDefult, true);
                    }
                }
                catch (NullReferenceException exception)
                {
                    SyncWebAndAS400Sessions();
                }
            }
            else
            {
                string id = ((HtmlControl)controls[i]).ID;
                try
                {
                    int bgGalColor = gx_session.getScreen(req).getFieldInstance(id, 0).getBGColor();
                    string bgCssColor = GetBackgroundColor(bgGalColor);

                    int fgGalColor = gx_session.getScreen(req).getFieldInstance(id, 0).getFGColor();
                    string fgCssColor = GetTextColor(fgGalColor);

                    if ((bgCssColor == "" || bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE) &&
                        (fgCssColor == "" || fgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN
                        || fgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_WHITE))
                    {
                        continue;
                    }

                    if (((HtmlControl)controls[i]).Attributes["class"] != null
                    && ((HtmlControl)controls[i]).Attributes["class"].Contains("headline")
                    && !((HtmlControl)controls[i]).Attributes["class"].Contains("sub-headline"))
                    {
                        continue;
                    }
                    else if (((HtmlControl)controls[i]).Attributes["class"] != null
                    && ((HtmlControl)controls[i]).Attributes["class"].Contains("sub-headline"))
                    {
                        if (bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED)
                        {
                            ((HtmlControl)controls[i]).Style.Add("background-color", "#FF2149");
                        }
                        else if (!((HtmlControl)controls[i]).Attributes["class"].Contains("blue-headline"))
                        {
                            ((HtmlControl)controls[i]).Style.Add("background-color", bgCssColor);
                        }
                    }
                    else
                    {
                        if (bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED ||
                            bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN ||
                            bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE)
                        {
                            if (bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE &&
                            purpleNoErrorFields.Contains(((HtmlControl)controls[i]).ID))
                            {
                                ((HtmlControl)controls[i]).Style.Add("background-color", bgCssColor);
                            }
                            else if (((HtmlControl)controls[i]).Attributes["readonly"] == null && !purpleNoErrorFields.Contains(((HtmlControl)controls[i]).ID))
                            {
                                ((HtmlControl)controls[i]).Style.Add("border", "#ff2149 1px solid");
                                ((HtmlControl)controls[i]).Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                                if (((HtmlControl)controls[i]).Attributes["galtype"] != null && ((HtmlControl)controls[i]).Attributes["galtype"] == "date")
                                {
                                    ((HtmlControl)controls[i]).Attributes.Add("wrongdate", "true");
                                }
                            }
                            else
                            {
                                ((HtmlControl)controls[i]).Style.Add("background-color", bgCssColor);
                            }
                        }
                        else
                        {
                            ((HtmlControl)controls[i]).Style.Add("background-color", bgCssColor);
                        }

                        if (Form.FindControl("GXPagePlaceHolder").FindControl(id + "_DUPLICATE") != null)
                        {
                            HtmlControl duplicate = ((HtmlControl)Form.FindControl("GXPagePlaceHolder").FindControl(id + "_DUPLICATE"));
                            duplicate.Style.Add("border", bgCssColor + " 1px solid");
                        }
                    }

                    if (((HtmlControl)controls[i]).Attributes["class"] != null
                      && ((HtmlControl)controls[i]).Attributes["class"].Contains("sub-headline"))
                    {
                        ((HtmlControl)controls[i]).Style.Add("color", fgCssColor);
                    }
                    else
                    {
                        if (fgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE && !specialScreen.Contains(gx_session.getScreen(req).getName()))
                        {
                            ((HtmlControl)controls[i]).Attributes.Add("has-default", "");
                        }
                        else
                        {
                            ((HtmlControl)controls[i]).Style.Add("color", fgCssColor);
                        }

                        if (Form.FindControl("GXPagePlaceHolder").FindControl(id + "_DUPLICATE") != null)
                        {
                            HtmlControl duplicate = ((HtmlControl)Form.FindControl("GXPagePlaceHolder").FindControl(id + "_DUPLICATE"));
                            if (fgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE && !specialScreen.Contains(gx_session.getScreen(req).getName()))
                            {
                                duplicate.Attributes.Add("has-default", "");
                            }
                            else
                            {
                                duplicate.Style.Add("color", fgCssColor);
                            }
                        }
                    }
                }
                catch (System.Exception e)
                {
                    //SyncWebAndAS400Sessions();
                }
            }
        }
    }
    #endregion

    #region Helper functions for tables
    public override void gx_changeTd(int ColIndex, HtmlTableCell td, GXITableRow row)
    {
        //Occurs every time a new table cell TD with run-time data is created.
        //Allows you to customize the table data TD according to the current host
        //row.

        string[] idToIgnore = new string[] { "fakeCombo" };

        for (int i = 0; i < td.Controls.Count; i++)
        {
            if (td.Controls[i] is HtmlGenericControl)
            {
                ((HtmlGenericControl)td.Controls[i]).InnerText = ((HtmlGenericControl)td.Controls[i]).InnerText.Trim();
            }
            if (td.Controls[i] is HtmlSelect && !idToIgnore.Contains(((HtmlSelect)td.Controls[i]).ID.Split('_')[0]))
            {
                string id = td.Controls[i].ClientID;
                int index = Int32.Parse(td.Controls[i].ID.Split('_')[2]);
                DisableComboBox(new HtmlSelect[] { (HtmlSelect)td.Controls[i] }, index, true);
            }
        }

        try
        {
            string id;
            int position;
            bool isCheckbox = false;
            if (td.Controls[0].ID != null)
            {
                id = td.Controls[0].ID;
                position = 0;
            }
            else
            {
                id = td.Controls[1].ID;
                position = 1;
                if (td.Controls[1] is HtmlInputControl &&
                    ((HtmlControl)td.Controls[1]).Attributes["class"].Contains("row-selector-cell") &&
                    ((HtmlControl)td.Controls[1]).TagName == "input" &&
                    td.Controls[2] != null)
                {
                    position = 2;
                    isCheckbox = true;
                }
            }

            if (id == null) { return; }

            bool spanWithoutColorStyle = td.Controls[position] is HtmlGenericControl && ((HtmlGenericControl)td.Controls[position]).Style["color"] == null;
            bool isInputWithHelp = td.Controls[position] is HtmlControl && position == 1 && ((LiteralControl)td.Controls[0]).Text.Contains("gal-input");
            bool dynamicLabelExists = isInputWithHelp && ((LiteralControl)td.Controls[0]).Text.Contains("dynamic-label");
            bool dontColorSpan = td.Controls[position] is HtmlGenericControl && ((HtmlGenericControl)td.Controls[position]).Attributes["class"] != null
                && ((HtmlGenericControl)td.Controls[position]).Attributes["class"].Contains("no-color");
            if ((isCheckbox || spanWithoutColorStyle || isInputWithHelp) && !dontColorSpan)
            {
                SetColors(td, position, id, isCheckbox);
            }
            if (dynamicLabelExists)
            {
                id = td.Controls[position + 2].ID;
                SetColors(td, position + 2, id, isCheckbox);
            }
            if (position != 2 && td.Controls[position] is HtmlGenericControl)
            {
                for (int i = position + 2; i < td.Controls.Count; i++)
                {
                    if (td.Controls[i] is HtmlGenericControl && ((HtmlGenericControl)td.Controls[i]).Style["color"] == null)
                    {
                        id = td.Controls[i].ID;
                        if (id != null)
                        {
                            SetColors(td, i, id, isCheckbox);
                        }
                    }
                }

            }
        }
        catch (System.Exception e)
        {
            //SyncWebAndAS400Sessions();
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="td"></param>
    /// <param name="position"></param>
    /// <param name="id"></param>
    /// <param name="isCheckbox"></param>
    private void SetColors(HtmlTableCell td, int position, string id, bool isCheckbox)
    {
        int seperatorIndex = id.LastIndexOf("_");
        string clearId = id.Substring(0, seperatorIndex);
        int index = Int32.Parse(id.Substring(seperatorIndex + 1));

        GXIField field = null;
        try
        {
            if (gx_session.getScreen(ScreenRequest).isWindow())
            {
                GXGetScreenRequest windowReq = new GXGetScreenRequest();
                windowReq.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
                field = gx_session.getScreen(windowReq).getFieldInstance(clearId, index);
            }
            else
            {
                field = gx_session.getScreen(ScreenRequest).getFieldInstance(clearId, index);
            }
        }
        catch (NullReferenceException exception)
        {
            SyncWebAndAS400Sessions();
        }
        if (field == null) { return; }

        int bgGalColor = field.getBGColor();
        string bgCssColor;
        string cellClass;
        if (isCheckbox)
        {
            bgCssColor = GetCheckboxBgColorClass(bgGalColor);
            cellClass = GetClass(bgGalColor, "checkbox");
        }
        else
        {
            bgCssColor = GetBackgroundColor(bgGalColor);
            cellClass = GetClass(bgGalColor, "td");
        }

        int fgGalColor = field.getFGColor();
        string fgCssColor = "";
        if (fgGalColor != GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN) // dont reflect green text
        {
            fgCssColor = GetTextColor(fgGalColor);
        }
        if (isCheckbox)
        {
            if (bgCssColor != "")
            {
                ((LiteralControl)td.Controls[position]).Text =
                    ((LiteralControl)td.Controls[position]).Text.Replace("/>", "class='" + bgCssColor + "'/>");
            }
        }
        else if (td.Controls[position] is HtmlGenericControl)
        {
            if (bgCssColor != "")
            {
                td.Attributes.Add("class", cellClass);
                string classList1 = td.Attributes["class"];
                td.Attributes.Add("class", classList1 + " reverese-image-span");
                string classList = ((HtmlGenericControl)td.Controls[position]).Attributes["class"];
                ((HtmlGenericControl)td.Controls[position]).Attributes.Add("class", classList + " reverese-image-span");
            }
            if (fgCssColor != "")
            {
                ((HtmlGenericControl)td.Controls[position]).Style.Add("color", fgCssColor);
            }
        }
        else
        {
            if (bgCssColor != "")
            {
                if (bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED ||
                    bgGalColor == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_GREEN)
                {
                    bgCssColor = GetBackgroundColor(GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED);
                    ((HtmlControl)td.Controls[position]).Style.Add("border", bgCssColor + " 1px solid");
                    ((HtmlControl)td.Controls[position]).Style.Add("box-shadow", "0 0 0 3px rgb(220 53 69 / 25%)");
                }
                else
                {
                    ((HtmlControl)td.Controls[position]).Attributes.Add("class", cellClass + " reverese-image-span");
                }
            }
            if (fgCssColor != "")
            {
                ((HtmlControl)td.Controls[position]).Style.Add("color", fgCssColor + "!important");
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="fieldName"></param>
    /// <param name="rowIndex"></param>
    /// <param name="tr"></param>
    protected void EnlightSuppliedRow(string fieldName, int rowIndex, HtmlTableRow tr)
    {
        GXIField field = null;
        try
        {
            field = gx_session.getScreen(ScreenRequest).getFieldInstance(fieldName, rowIndex);
        }
        catch (NullReferenceException exception)
        {
            SyncWebAndAS400Sessions();
        }
        if (field == null) { return; }

        if (field.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_PURPLE)
        {
            for (int tdIndex = 1; tdIndex < tr.Cells.Count; tdIndex++)
            {
                for (int controlIndex = 0; controlIndex < tr.Cells[tdIndex].Controls.Count; controlIndex++)
                {
                    if (tr.Cells[tdIndex].Controls[controlIndex] is HtmlGenericControl)
                    {
                        ((HtmlGenericControl)tr.Cells[tdIndex].Controls[controlIndex]).Style.Add("font-weight", "bold");
                    }
                }
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="table"></param>
    protected void addHeaderRow(HtmlTable table)
    {
        table.Attributes.Add("class", table.Attributes["class"] + " table-with-spanned-header");
        HtmlTableRow row = new HtmlTableRow();
        row.Attributes.Add("class", "spanned-header grid-header");
        try
        {
            int firstRowLength = table.Rows[0].Cells.Count;
            for (int i = 0; i < firstRowLength; i++)
            {
                HtmlTableCell cell = new HtmlTableCell("th");
                row.Cells.Add(cell);
            }
            table.Rows.Insert(0, row);
        }
        catch (System.Exception e)
        {
            Debug.Write("addHeaderRow(duplicate table in designer) ->" + string.Format(e.Message));
        }
    }


    /// <summary>
    /// 
    /// </summary>
    /// <param name="ids"></param>
    /// <returns></returns>
    protected HtmlTableRow GetTotalsRow(string[] ids)
    {
        HtmlTableRow totalsRow = new HtmlTableRow();
        totalsRow.Attributes.Add("class", "totals-row");
        HtmlTableCell cell;
        HtmlGenericControl span;
        foreach (string id in ids)
        {
            cell = new HtmlTableCell();
            if (id == "")
            {
                totalsRow.Cells.Add(cell);
                continue;
            }

            if ((!id.ToUpper().Contains("_")) && (id.ToUpper().Contains("TOTAL") || id.Contains(" ")))
            {
                span = new HtmlGenericControl("span")
                {
                    InnerText = id
                };
                cell.Controls.Add(span);
            }
            else
            {
                GXIField field = null;
                try
                {
                    field = gx_session.getScreen(ScreenRequest).getFieldInstance(id, 0);
                }
                catch (NullReferenceException exception)
                {
                    SyncWebAndAS400Sessions();
                }
                if (field == null) { continue; }

                span = new HtmlGenericControl("span")
                {
                    InnerText = field.getContent()
                };
                if (field.getFGColor() == GXBaseObjectConstants.GX_FIELD_COLOR_LIGHT_RED)
                {
                    span.Style.Add("color", "#ff000c !important");
                }
                cell.Controls.Add(span);
                cell.Attributes.Add("columnType", "qty");
            }
            totalsRow.Cells.Add(cell);
        }
        return totalsRow;
    }

    protected bool SkipTableRow(HtmlTableRow row)
    {
        if (row.Cells[0].TagName.ToLower() == "th")
        {
            return true;
        }
        if (row.Attributes["class"] != null && row.Attributes["class"].ToLower().Contains("totals-row"))
        {
            return true;
        }

        return false;
    }

    protected string joinKeyNumbers(HtmlTable currentTable, int numberCellIndex, bool withQuate = false)
    {
        List<string> joinedKeyNumbers = new List<string>();
        int rowsCount = currentTable.Rows.Count;
        int headerRowsCount = 0;
        for (int rowIndex = 0; rowIndex < rowsCount; rowIndex++)
        {
            if (SkipTableRow(currentTable.Rows[rowIndex]))
            {
                headerRowsCount++;
                continue;
            }

            if (currentTable.Rows[rowIndex].Cells[numberCellIndex].Controls[0] is HtmlGenericControl)
            {
                joinedKeyNumbers.Add(((HtmlGenericControl)currentTable.Rows[rowIndex].Cells[numberCellIndex].Controls[0]).InnerText.Trim());
            }
            else
            {
                joinedKeyNumbers.Add(((HtmlGenericControl)currentTable.Rows[rowIndex].Cells[numberCellIndex].Controls[1]).InnerText.Trim());
            }

            if (joinedKeyNumbers[rowIndex - headerRowsCount].Length == 6)
            {
                joinedKeyNumbers[rowIndex - headerRowsCount] = joinedKeyNumbers[rowIndex - headerRowsCount].PadLeft(7, '0');
            }
        }

        if (withQuate)
        {
            return "'" + String.Join("','", joinedKeyNumbers) + "'";
        }
        else
        {
            return String.Join(",", joinedKeyNumbers);
        }
    }

    protected void ReplaceItemDescription(HtmlTable currentTable, int numberCellIndex, int descriptionCellIndex, Dictionary<string, string> irItems)
    {
        int rowsCount = currentTable.Rows.Count;
        for (int rowIndex = 0; rowIndex < rowsCount; rowIndex++)
        {
            int descriptionControlIndex = 0;
            int numberControlIndex = 0;

            if (SkipTableRow(currentTable.Rows[rowIndex]))
            {
                continue;
            }

            if (!(currentTable.Rows[rowIndex].Cells[descriptionCellIndex].Controls[descriptionControlIndex] is HtmlGenericControl))
            {
                descriptionControlIndex = 1;
            }
            if (!(currentTable.Rows[rowIndex].Cells[numberCellIndex].Controls[numberControlIndex] is HtmlGenericControl))
            {
                numberControlIndex = 1;
            }

            string itemNumber = ((HtmlGenericControl)currentTable.Rows[rowIndex].Cells[numberCellIndex].Controls[numberControlIndex]).InnerText;
            string itemDescription = ((HtmlGenericControl)currentTable.Rows[rowIndex].Cells[descriptionCellIndex].Controls[descriptionControlIndex]).InnerText;
            string longDescription;
            if (irItems.TryGetValue(itemNumber, out longDescription))
            {
                ((HtmlGenericControl)currentTable.Rows[rowIndex].Cells[descriptionCellIndex].Controls[descriptionControlIndex]).InnerText = longDescription;
                SetRowStatusDesign(currentTable.Rows[rowIndex].Cells[descriptionCellIndex], itemDescription, descriptionControlIndex);
            }

        }
    }

    protected void CheckForLineStatus(HtmlTable currentTable, int descriptionCellIndex)
    {
        int rowsCount = currentTable.Rows.Count;
        for (int rowIndex = 0; rowIndex < rowsCount; rowIndex++)
        {
            int descriptionControlIndex = 0;

            if (SkipTableRow(currentTable.Rows[rowIndex]))
            {
                continue;
            }

            if (!(currentTable.Rows[rowIndex].Cells[descriptionCellIndex].Controls[descriptionControlIndex] is HtmlGenericControl))
            {
                descriptionControlIndex = 1;
            }

            string itemDescription = ((HtmlGenericControl)currentTable.Rows[rowIndex].Cells[descriptionCellIndex].Controls[descriptionControlIndex]).InnerText;
            SetRowStatusDesign(currentTable.Rows[rowIndex].Cells[descriptionCellIndex], itemDescription, descriptionControlIndex);
        }
    }

    private void SetRowStatusDesign(HtmlTableCell tableCell, string itemDescription, int descriptionControlIndex)
    {
        string valueToAdd;
        if (Regex.Matches(itemDescription, @"[\p{IsHebrew}]").Count > 0 && Regex.IsMatch(itemDescription, @"(D\*)|(C\*)$"))
        {
            valueToAdd = Regex.Match(itemDescription, @"(D\*)|(C\*)$").Value;
        }
        else
        {
            valueToAdd = Regex.Match(itemDescription, @"(\*C)|(\*D)$").Value;

        }

        if (valueToAdd != "")
        {
            HtmlGenericControl div = new HtmlGenericControl("div");
            if (valueToAdd == "*C" || valueToAdd == "C*")
            {
                div.Attributes.Add("class", "row-status completed-row");
                div.InnerText = "Completed";
            }
            else
            {
                div.Attributes.Add("class", "row-status deleted-row");
                div.InnerText = "Deleted";
            }
            tableCell.Controls.Add(div);
            HtmlGenericControl itemDescriptionSpan = ((HtmlGenericControl)tableCell.Controls[descriptionControlIndex]);
            itemDescriptionSpan.InnerText = itemDescriptionSpan.InnerText.Replace(valueToAdd, "");
        }
    }
    #endregion

    #region Subfile cache logic functions
    /// <summary>
    /// 
    /// </summary>
    private void MarkRowsFromCache()
    {
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "markRows", "markRowsFromCache();", true);
    }

    private void DeleteOrMarkSelectedRows()
    {
        if (Session["deleteTable"] != null)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "deleteStorage", "deleteFromStorage('" + Session["tableToDelete"] + "');", true);
            Session.Remove("deleteTable");
            Session.Remove("tableToDelete");
        }
        else
        {
            MarkRowsFromCache();
        }
    }
    #endregion

    #region Hotspots with help window
    /// <summary>
    /// 
    /// </summary>
    /// <param name="fieldId"></param>
    /// <returns></returns>
    protected string[] GetValuesSpecialCombo(string fieldId)
    {
        GXPathRequest req = new GXPathRequest("GetDropDownOptions");
        GXPosition position;
        if (gx_session.getScreen(ScreenRequest).isWindow())
        {
            GXGetScreenRequest gsr = new GXGetScreenRequest();
            gsr.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
            position = gx_session.getScreen(gsr).getFieldInstance(fieldId, 0).getPosition();
        }
        else
        {
            position = gx_session.getScreen(ScreenRequest).getFieldInstance(fieldId, 0).getPosition();
        }
        req.addVariable("row", position.getRow().ToString());
        req.addVariable("col", position.getColumn().ToString());
        GXPathResponse response = gx_session.executePath(req);
        return FixPlusInSpecialComboBox(response.getVariableArray("Option"));
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="fieldVal"></param>
    /// <returns></returns>
    protected string[] FixPlusInSpecialComboBox(string[] fieldVal)
    {
        string[] newValue = fieldVal;
        for (int i = 0; i < fieldVal.Length; i++)
        {
            if (fieldVal[i].Contains('+'))
            {
                newValue[i] = newValue[i].Replace('+', ' ');
            }
            else if (fieldVal[i].ToLower().Contains("please select"))
            {
                newValue[i] = "";
            }
            else
            {
                continue;
            }
        }
        return newValue;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="selectElement"></param>
    /// <param name="fixValues"></param>
    protected void PutSelectedValueInCombo(HtmlSelect selectElement, Dictionary<string, string> fixValues = null)
    {
        string chosenValue = gx_session.getScreen(ScreenRequest).getFieldContent(selectElement.ID, 0).Trim();
        for (int optionIndex = 0; optionIndex < selectElement.Items.Count; optionIndex++)
        {
            if (fixValues != null && fixValues.ContainsKey(chosenValue))
            {
                fixValues.TryGetValue(chosenValue, out chosenValue);
            }
            if (selectElement.Items[optionIndex].Value.ToLower().Contains(chosenValue.ToLower().Trim()))
            {
                selectElement.Items[optionIndex].Selected = true;
                break;
            }
        }
    }

    /// <summary>
    /// 
    /// </summary>
    protected void PutSelectedValueFromCombo()
    {
        HtmlInputText selectedIndexSpecialCombo = ((HtmlInputText)Form.FindControl("selectedIndexSpecialCombo"));
        if (selectedIndexSpecialCombo == null)
        {
            selectedIndexSpecialCombo = ((HtmlInputText)Form.FindControl("ctl00_selectedIndexSpecialCombo"));
        }
        string[] splittedValue = selectedIndexSpecialCombo.Value.Split(';');
        if (selectedIndexSpecialCombo.Value != "")
        {
            GXPosition position;

            if (gx_session.getScreen(ScreenRequest).isWindow())
            {
                GXGetScreenRequest windowReq = new GXGetScreenRequest();
                windowReq.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
                position = gx_session.getScreen(windowReq).getFieldInstance(splittedValue[1], 0).getPosition();
            }
            else
            {
                position = gx_session.getScreen(ScreenRequest).getFieldInstance(splittedValue[1], 0).getPosition();
            }

            GXPathRequest req = new GXPathRequest("OpenSelectDropDownOptionsWindow");
            req.addVariable("row", position.getRow().ToString());
            req.addVariable("col", position.getColumn().ToString());
            GXPathResponse response = gx_session.executePath(req);

            req = new GXPathRequest("SelectDropDownOptions");
            GXGetScreenRequest gsr = new GXGetScreenRequest();
            gsr.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
            position = gx_session.getScreen(gsr).getCursorPosition();
            string row;
            string column = position.getColumn().ToString();
            if (gx_session.getScreen(ScreenRequest).getName() == "OWT23_SFL1")
            {
                row = (position.getRow() + 2).ToString();
            }
            else
            {
                row = position.getRow().ToString();
            }
            req.addVariable("absoluteFirstOptionRowIndex", row);
            req.addVariable("absoluteOptionColIndex", column);
            req.addVariable("selectedOptionIndex", splittedValue[0]);
            req.addVariable("screenName", gx_session.getScreen(ScreenRequest).getName());
            response = gx_session.executePath(req);
            selectedIndexSpecialCombo.Value = "";
        }
    }



    /// <summary>
    /// 
    /// </summary>
    /// <param name="id"></param>
    protected void SaveValuesForCombo(string id)
    {
        HttpContext context = HttpContext.Current;
        if (context.Session[id] == null)
        {
            context.Session[id] = GetValuesSpecialCombo(id);
        }
    }
    #endregion

    /// <summary>
    /// 
    /// </summary>
    /// <param name="keyToPress"></param>
    /// <param name="requestObject"></param>
    protected void PressKeyAndSkipScreen(string keyToPress, GXSendKeysRequest requestObject)
    {
        GXSendKeysRequest keyLeadsToAnotherScreen = new GXSendKeysRequest();
        keyLeadsToAnotherScreen.setKeys(keyToPress);
        string currentScreen = gx_session.getScreen(ScreenRequest).getName();
        gx_session.sendKeys(keyLeadsToAnotherScreen);
        string afterActionScreen = gx_session.getScreen(ScreenRequest).getName();
        if (currentScreen != afterActionScreen)
        {
            gx_handleHostResponse();
            requestObject.setKeys("");
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="actionBar"></param>
    /// <param name="actionBarId"></param>
    /// <param name="jumpsToCommand"></param>
    /// <param name="jumpsToStart"></param>
    protected void AppendMoreCommands(HtmlInputText actionBar, string actionBarId, int jumpsToCommand = 1, int jumpsToStart = 1)
    {
        GXSendKeysRequest req = new GXSendKeysRequest();
        req.setKeys("[PF24]");
        for (int jumpIndex = 0; jumpIndex < jumpsToCommand; jumpIndex++)
        {
            gx_session.sendKeys(req);
        }
        string actionBarContent = gx_session.getScreen(ScreenRequest).getFieldContent(actionBarId, 0);
        string finalCommands = actionBar.Value + " " + actionBarContent;
        actionBar.Value = finalCommands;
        for (int jumpIndex = 0; jumpIndex < jumpsToStart; jumpIndex++)
        {
            gx_session.sendKeys(req);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="id"></param>
    protected void ToggleDynamicTab(string[] id)
    {
        List<string> tabsList = new List<string> { };
        for (int i = 0; i < id.Length; i++)
        {
            try
            {
                bool isNotVisible = gx_session.getScreen(ScreenRequest).getFieldInstance(id[i], 0).isVisible() == false;
                bool visibleText = gx_session.getScreen(ScreenRequest).getFieldInstance(id[i], 0).getContent().Replace('-', ' ').Trim() != "";
                if (!visibleText || isNotVisible)
                {
                    tabsList.Add(id[i]);
                }
            }
            catch (NullReferenceException toggleDynamicTab)
            {
                SyncWebAndAS400Sessions();
            }
        }
        if (tabsList.Count > 0)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "remove", "removeTabElement('" + string.Join(",", tabsList) + "');", true);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="fieldId"></param>
    protected void ToggleHelpOrCombo(string fieldId)
    {
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "toggleDisplay", "toggleDisplay('" + fieldId + "');", true);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="inputElement"></param>
    /// <param name="notActiveColor"></param>
    protected void CheckIsActive(HtmlInputText inputElement, int notActiveColor)
    {
        string id = inputElement.ID;
        int bgColor = gx_session.getScreen(ScreenRequest).getFieldInstance(id, 0).getBGColor();
        if (bgColor == notActiveColor)
        {
            inputElement.Attributes["gal-active"] = "false";
        }
    }

    protected Dictionary<string, string> CodeDescriptionArrayToDict(string[][] stringArray)
    {
        Dictionary<string, string> dictionaryToReturn = new Dictionary<string, string>();

        for (int index = 0; index < stringArray.Length; index++)
        {
            if (!dictionaryToReturn.ContainsKey(stringArray[index][0]))
            {
                dictionaryToReturn.Add(stringArray[index][0], stringArray[index][1]);
            }
        }

        return dictionaryToReturn;
    }

    protected string DecimalToInt(string value)
    {
        bool isNoLeadingZero = Regex.IsMatch(value, @"^\.\d+$");
        if (isNoLeadingZero)
        {
            value = "0" + value;
        }

        var enUS = new CultureInfo("en-US");
        double number = double.Parse(value, enUS);

        // Format as nl-BE
        if (this.CurrentCultureInfo.Name == "nl-BE")
        {
            var nlBE = new CultureInfo("nl-BE");
            value = number.ToString(nlBE);
        }

        double initialValue = System.Double.Parse(value, this.CurrentCultureInfo);
        double roundedValue = System.Math.Floor(initialValue);
        if (initialValue >= 1 || initialValue == roundedValue)
        {
            return roundedValue.ToString("N0", this.CurrentCultureInfo);
        }
        else
        {
            return initialValue.ToString("N1", this.CurrentCultureInfo);
        }
    }

    protected bool IsDistributerCompany()
    {
        bool isDistributer;
        Dictionary<string, object> sessionCompanyConfig;
        try
        {
            sessionCompanyConfig = (Dictionary<string, object>)Session["companyConfig"];
            isDistributer = (bool)sessionCompanyConfig["isDistributer"];
        }
        catch (NullReferenceException error)
        {
            Session.Remove("loadedConfig");
            Session.Remove("firstEnterance");
            FetchComapnyConfig();
            sessionCompanyConfig = (Dictionary<string, object>)Session["companyConfig"];
            isDistributer = (bool)sessionCompanyConfig["isDistributer"];
        }
        return isDistributer;
    }

    protected string GetNextScreenName(string nextScreenPath)
    {
        int nextScreenPathLength = nextScreenPath.Length;
        int screenNameStartIndex = nextScreenPath.LastIndexOf("/") + 1;
        int fileEndingCharCount = 5;
        string nextScreenName = nextScreenPath.Substring(screenNameStartIndex, nextScreenPathLength - screenNameStartIndex - fileEndingCharCount);
        return nextScreenName;
    }

    protected static string[][] GetDescriptionFromIR(string joinedItemNumber)
    {
        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);

        string sqlStmt = String.Format("SELECT IRKEY, IRTEXT FROM GALF6{0}.IR WHERE IRTYPE = 'IL' AND IRTYP = 'L' AND IRKLIN = 1 AND IRKEY IN (?)",
            currentUserDetails.Company);
        string[] parameters = new string[] { joinedItemNumber };
        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        return result;
    }

    protected string[][] GetPTNumber(string joinedItemNumber)
    {
        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);

        string sqlStmt = String.Format("SELECT ICAT, IOCAT FROM GALF6{0}.II WHERE ICAT IN (?)",
            currentUserDetails.Company);
        string placeholders = string.Join(",", joinedItemNumber.Split(',').Select((param, index) => "?"));
        sqlStmt = sqlStmt.Replace("?", placeholders);
        string[] parameters = joinedItemNumber.Split(',');

        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        return result;
    }

    protected string[][] GetItemBrandCode(string joinedItemNumber)
    {
        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);

        string sqlStmt = String.Format("SELECT ICAT, IPFAM FROM GALF6{0}.II WHERE ICAT IN (?)",
            currentUserDetails.Company);
        string placeholders = string.Join(",", joinedItemNumber.Split(',').Select((param, index) => "?"));
        sqlStmt = sqlStmt.Replace("?", placeholders);
        string[] parameters = joinedItemNumber.Split(',');

        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        return result;
    }

    protected string[][] GetItemBrandName(string joinedItemNumber)
    {
        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);

        string sqlStmt = String.Format("SELECT ICAT, CASE WHEN T3DSCL IS NULL THEN '' ELSE T3DSCL END AS brandName FROM GALF6{0}.II " +
            "LEFT JOIN GALF6{0}.T3 ON IPFAM = T3KEY AND T3TYP = 'F' WHERE ICAT IN(?)",
            currentUserDetails.Company);
        string placeholders = string.Join(",", joinedItemNumber.Split(',').Select((param, index) => "?"));
        sqlStmt = sqlStmt.Replace("?", placeholders);
        string[] parameters = joinedItemNumber.Split(',');

        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        return result;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="type"></param>
    /// <param name="text"></param>
    /// <param name="list"></param>
    /// <returns></returns>
    [WebMethod]
    public static string GetAutocompleteData(string type, string text, string list)
    {
        LoginRequest req = (LoginRequest)HttpContext.Current.Session[SESSION_LOGIN_OBJ];
        AutoComplete autoComplete = new AutoComplete(req.UserName, AppCache.getCompany(), type, text);
        Dictionary<string, string> dictionaryToReturn = new Dictionary<string, string>();
        dictionaryToReturn.Add("data", JsonConvert.SerializeObject(autoComplete.GetData()));
        dictionaryToReturn.Add("list", list);
        return DictionaryToJson(dictionaryToReturn);
    }
}