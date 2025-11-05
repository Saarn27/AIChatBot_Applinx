using System;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;

using com.sabratec.util;
using com.sabratec.applinx.framework;
using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using com.sabratec.applinx.baseobject.table;
using com.sabratec.dotnet.framework.web.tables;
using com.sabratec.dotnet.ci;
using com.sabratec.applinx.framework.emulation.ftp.dialog;
using com.sabratec.util.logger;

using com.sabratec.applinx.framework.web;
using com.sabratec.dotnet.framework.web;
using System.Text;
using com.sabratec.applinx.common;
using System.Web.UI.WebControls;
using java.lang;
using java.util;
using System.Web;
using System.Collections.Generic;
using com.sabratec.applinx.baseobject.query;
using System.Reflection;
using System.Diagnostics;
using System.Linq;
using System.Web.Services;
using System.Xml;
using System.Collections.Specialized;
using System.IO;
using Newtonsoft.Json;
using System.Text.RegularExpressions;

/// <summary>
/// Summary description for GXAbstractWebPage.
/// </summary>
public class GXBasicWebForm : GXScreenBasedWebForm
{
    #region Constants: Http Session keys
    /// <summary>
    /// Session (login) request object
    /// </summary>
    public const string SESSION_LOGIN_OBJ = "login";
    /// <summary>
    /// New session request indicator
    /// </summary>
    public const string SESSION_IS_NEW = "is_new";
    /// <summary>
    /// Previous screen PC command
    /// </summary>
    public const string SESSION_PC_CMD = "pc_cmd";
    /// <summary>
    /// Indicates current web session is a GalWeb session
    /// </summary>
    public const string SESSION_IS_GAL = "is_gal";
    /// <summary>
    /// TODO
    /// </summary>
    public const string IFRAME_TYPE = "iframe_type";
    /// <summary>
    /// TODO
    /// </summary>
    public const string PCCMD_TYPE = "pccmd_type";
    /// <summary>
    /// TODO
    /// </summary>
    public const string RESPONSIVE_DESIGN = "responsive_design";
    /// <summary>
    /// TODO
    /// </summary>
    public const string THEME_TYPE = "theme";
    /// <summary>
    /// TODO
    /// </summary>
    public const string FIRST_IFRAME = "first_iframe_load";
    /// <summary>
    /// TODO
    /// </summary>
    public const string QUERY_PARAMS = "query_params";
    /// <summary>
    /// TODO
    /// </summary>
    public const string NEW_SESSION_FROM_ERROR = "new_session_from_error";
    /// <summary>
    /// TODO
    /// </summary>
    public const string GXFIRSTPAGE_NO_QUERY = "gxfirstpage_no_query";
    /// <summary>
    /// TODO
    /// </summary>
    public const string ATTEMP_TO_UPDATE_GALTABLE = "attempt_to_update_galtable";

    #endregion

    #region Constants: for handle the error.aspx page and log4net file parameters
    /// <summary>
    /// Indicates the last sent host key on the session
    /// </summary>
    public const string LAST_HOST_KEY = "last_sent_hostkey";
    /// <summary>
    /// Indicates the last sent field's values on the session
    /// </summary>
    public const string LAST_FIELDS = "last_sent_fields";
    /// <summary>
    /// Indicates the relevant Stack trace for current exception
    /// </summary>
    public const string ERR_EXCEPTION_STACK = "errExceptionStack";
    /// <summary>
    /// Indicates the relevantinner message for current exception
    /// </summary>
    public const string INNER_EXCEPTION_MESSAGE = "innerExceptionError";
    /// <summary>
    /// Indicates the relevant error code for current exception
    /// </summary>
    public const string ERR_CODE = "exceptionErrCode";
    #endregion

    #region Constants: Web.config file keys
    /// <summary>
    /// Initial session as/400 program configuration name in web.config
    /// </summary>
    public const string CONF_PGM_NAME = "InitPgm";
    /// <summary>
    /// Initial session as/400 library configuration name in web.config
    /// </summary>
    public const string CONF_LIB_NAME = "InitLib";
    /// <summary>
    /// Session Manager web service user name configuration name in web.config
    /// </summary>
    public const string CONF_ADMIN_WS_USER = "ApxAdminUser";
    /// <summary>
    /// Session Manager web service password configuration name in web.config
    /// </summary>
    public const string CONF_ADMIN_WS_PASS = "ApxAdminPass";
    /// <summary>
    /// Device name prefix configuration name in web.config
    /// </summary>
    public const string CONF_DEVICE_PREFIX = "DevicePrefix";
    /// Name of the hidden field that keep the origin session id of the page
    /// </summary>
    private const string PAGE_KEEPER_NAME = "KeeperToken";
    /// <summary>
    /// Maximum number of characters for session device ID
    /// </summary>
    protected const int MAX_DEVICE_LEN = 10;
    #endregion
    #region Constants: screen data
    public const int SCREEN_WIDTH_NORMAL = 80;
    public const int SCREEN_WIDTH_WIDE = 132;
    #endregion
    /****************************************************************************************************************************
			ApplinX configuration is in config/gx_appConfig.xml
	*****************************************************************************************************************************/

    public override void gx_initSessionConfig()
    {

        // Optional variables for all the project pages, list of variables can be found in the documentation


        //for device name 
        //gx_appConfig.SessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_DEVICE_NAME, "<YOUR_DEVICE_NAME>");

        //Setting ApplinX session ID
        //gx_appConfig.getSessionConfig().setSessionId(buildSessionID());

        // When URL parameters were given and session params were not set before
        //if (Session[SESSION_LOGIN_OBJ] != null)
        if (isGalSession())
        {
            LoginRequest req = GetCurrentLoginRequest();
            gx_appConfig.SessionConfig.setSessionId(req.SessionID);

            SessionManager.GetSessionRequest sessionReq = CreateSession(gx_appConfig.SessionConfig.SessionId);
            bool isNewSession = true;
            try
            {
                SessionManager.SessionManager mgr = new SessionManager.SessionManager();
                SessionManager.GetSessionResponse sessionRes = mgr.getSession(sessionReq);
                isNewSession = false;
            }
            catch (java.lang.Exception e) { }
            catch (System.Exception e) { }

            if (isNewSession)
            {
                Session[FIRST_IFRAME] = true;
                // See GUID formats here: https://docs.microsoft.com/en-us/dotnet/api/system.guid.tostring?view=net-6.0
                gx_appConfig.SessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_DEVICE_NAME, BuildDeviceID(Guid.NewGuid().ToString("N").ToUpper()));

                string jobName = gx_appConfig.getSessionConfig().getVariable(GXBaseObjectConstants.GX_VAR_DEVICE_NAME).getValue();
                req.JobName = jobName;
                SetCurrentLoginRequest(req);

                string cssid = GetCSSIDFromDBConfig(req);
                gx_appConfig.SessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_CODE_PAGE, cssid);
                gx_appConfig.SessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_AS400_USERNAME, req.UserName);
                gx_appConfig.SessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_AS400_PASSWORD, req.DecryptPassword());
                //gx_appConfig.SessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_AS400_PROGRAM, System.Configuration.ConfigurationManager.AppSettings[CONF_PGM_NAME]);
                //gx_appConfig.SessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_AS400_LIBRARY, System.Configuration.ConfigurationManager.AppSettings[CONF_LIB_NAME]);
                //e.sessionConfig.addVariable(GXBaseObjectConstants.GX_VAR_AS400_MENU, req.InitialMenu);
            }
        }
    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        // customize gx_appConfig settings from code here

        // FTP configuration

        //gx_appConfig.FtpConfig.setHostType(GXFtpConfig.GX_FTP_AS400);
        // End FTP configuration

        // Events capturing
        this.gx_preConnect += new GXPreConnectEventHandler(user_preConnect);
        this.gx_postConnect += new GXPostConnectEventHandler(user_postConnect);
        this.gx_preSendKeys += new GXPreSendKeyEventHandler(user_preSendKeys);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(user_postSendKeys);
        this.gx_screenSeqMismatch += new GXScreenSeqMismatchEventHandler(user_screenSeqMismatch);
        this.gx_changeNextForm += new GXChangeNextFormEventHandler(user_changeNextForm);
        this.gx_preSyncHostWithForm += new GXPreSyncHostWithFormEventHandler(user_preSyncHostWithForm);
        this.gx_preFillForm += new EventHandler(user_preFillForm);
        this.gx_postFillForm += new EventHandler(user_postFillForm);
        this.gx_preOpenWin += new GXPreOpenWinEventHandler(user_preOpenWin);
        // End of events capturing

        bool cookieExist = false;
        HttpCookieCollection cookies = Request.Cookies;
        if (cookies != null)
        {
            for (int i = 0; i < cookies.Count; i++)
            {
                if (cookies[i].Name.Equals("gx_fontDimensionsCollection"))
                { cookieExist = true; break; }
            }
            if (!cookieExist)
            { Response.Cookies.Set(new HttpCookie("gx_fontDimensionsCollection", "8_4.8_12*9_5.4_14*10_6_15*11_6.6_17*12_7.2_18*13_7.8_20*14_8.4_21*15_9_23*16_9.6_24*17_10.2_26*18_10.8_27*19_11.4_29*20_12_30*21_12.6_32*22_13.2_33*23_13.8_35*24_14.4_36*25_15_38*26_15.6_39*27_16.2_41*28_16.8_42*29_17.4_44*30_18_45**")); }
        }

        FetchComapnyConfig();
    }

    protected override void OnPreRender(EventArgs e)
    {
        base.OnPreRender(e);
        InsertSessionKeeper();
        ExecutePCCommand();
    }

    protected void user_preConnect(object sender, GXPreConnectEventArgs e)
    {
        // Occurs before gx_connect , gx_attach 
        // Use e.isNewSession  to know if the user is going to be attached to an existing session or connecting to a new one. 
        // Use e.sessionConfig to change the connect to ApplinX server parameters

    }

    protected void user_postConnect(object sender, GXPostConnectEventArgs e)
    {
        bool isNew = Session[SESSION_IS_NEW] != null;
        bool initiatePathProcedure = Session[FIRST_IFRAME] == null || (string)Session[IFRAME_TYPE] != "main";
        bool isSIGNON = gx_session != null && (gx_session.getScreen().getName().Contains("SIGNON"));
        if (isNew)//
        {
            Session.Remove(SESSION_IS_NEW);
        }
        // occurs after gx_connect , gx_attach 
        // use e.isNewSession to know if the user was attached to an existing session or connected to a new one.

        // Reset existing sessions to the launch screen for GALWEB sessions
        if (initiatePathProcedure && isNew && isGalSession())
        {
            try
            {
                GXPathResponse res = gx_session.executePath("SessionExit");
                if (!bool.Parse(res.getVariable("Success"))) // check for return failure
                {
                    SessionManager.SessionManager mgr = new SessionManager.SessionManager();
                    // Cancel session request for any existing applinx session with the same session id requested
                    SessionManager.CancelSessionRequest cancelReq = new SessionManager.CancelSessionRequest()
                    {
                        username = ConfigurationManager.AppSettings[CONF_ADMIN_WS_USER],
                        password = ConfigurationManager.AppSettings[CONF_ADMIN_WS_PASS],
                        sessionId = gx_appConfig.SessionConfig.SessionId
                    };
                    SessionManager.CancelSessionResponse cancelRes = mgr.cancelSession(cancelReq);
                }
            }
            catch (System.Exception ex)
            { }
        }

        if (isGalSession() && isSIGNON)// if job was ended in as400 but applinx session still exists
        {
            LoginRequest loginReq = GetCurrentLoginRequest();
            string decryptedPassword = Decrypter.DecryptString(loginReq.Password);
            ExitFromSignOn(loginReq.UserName, decryptedPassword);
            GXPathRequest req = CreateRequestForAPPLNXGO(loginReq);
            gx_executePathUpdateScreen(req);
        }

        bool isDSPMSG = gx_session.getScreen().getName().Contains("DSPMSG");
        bool isDSPPGMMSG = gx_session.getScreen().getName().Contains("DSPPGMMSG");
        bool isAPPLNXGO = gx_session.getScreen().getName().Contains("APPLNX_GO");
        bool isSessionFromError = Session[NEW_SESSION_FROM_ERROR] != null;
        // Execute auto navigation when the initial screen is APPLNX_GO or one of the messages screen that appear before it
        if (initiatePathProcedure && gx_session != null && isNew && !isSessionFromError && (isAPPLNXGO || isDSPPGMMSG || isDSPPGMMSG))
        {
            if (isGalSession())
            {
                LoginRequest loginReq = GetCurrentLoginRequest();
                if (loginReq.BlankSession != "true")
                {
                    GXPathRequest req = CreateRequestForAPPLNXGO(loginReq);
                    gx_executePathUpdateScreen(req);
                }
                else
                {
                    GXClientBaseObjectFactory.detachSession(gx_session);
                    Response.Write("<script type='text/javascript'>");
                    Response.Write("document.location = 'about:blank';");
                    Response.Write("</script>");
                    Response.End();
                }
            }
            else
            {
                Response.Redirect("logoff.aspx");
            }
        }

        if (Session[FIRST_IFRAME] != null)
        {
            Session.Remove(FIRST_IFRAME);
        }
    }

    protected void user_screenSeqMismatch(object sender, GXScreenSeqMismatchEventArgs e)
    {
        // Occurs if the form seq. screen number is different from the gx_session seq. screen number.
        // Use e.sendToHost  to send the data to the host any way.
        e.sendToHost = true;
        if (gx_session != null && gx_getForm(gx_session.getScreen().getName()) != gx_form.FormName)
        {
            Session["SEND_LOADED"] = true;
            gx_handleHostResponse();
        }
    }

    protected void user_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        // Occurs before gx_processHostKeyRequest(GXSendKeysRequest sendKeyRequest),
        // which is activated from a browser pf key or when ENTER is pressed, or javascript:gx_SubmitKey(key).
        // Use e.sendKeyRequest to change the send key request to ApplinX server.

        Session[LAST_FIELDS] = getInputsFromScreenAsString();

        if (Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN] != null && Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN_CONTROLS] != null && e.sendKeyRequest.getInputFields().Length > 0 && !gx_appConfig.IsInstant)
        {
            GXInputField[] inputFields = e.sendKeyRequest.getInputFields();
            Control gx_screenArea = (Control)Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN_CONTROLS];

            for (int inputIndex = 0; inputIndex < inputFields.Length; inputIndex++)
            {
                GXInputField currentInput = inputFields[inputIndex];
                try
                {
                    Control currentControl = gx_screenArea.FindControl(currentInput.getName());
                    if (currentControl != null && currentControl is HtmlInputText)
                    {
                        ((HtmlInputText)currentControl).Value = currentInput.getValue();
                    }

                    if (currentControl != null && currentControl is HtmlSelect)
                    {
                        ((HtmlSelect)currentControl).Value = currentInput.getValue();
                    }
                } catch (System.Exception exception)
                {

                }
            }

            StringWriter sw = new StringWriter();
            HtmlTextWriter w = new HtmlTextWriter(sw);
            gx_screenArea.RenderControl(w);
            Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN] = sw.GetStringBuilder().ToString();
        }
    }

    protected void user_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        // Occurs after gx_processHostKeyRequest(GXSendKeysRequest sendKeyRequest),
        // which is activated from a browser pf key or when ENTER is pressed, or javascript:gx_SubmitKey(key)
        string[] openedScreens = new string[] { "OWITC_SFL1", "CPQ01_SFL" };/*"CHQ01_SFL10", "CHQ01_SFL30" after fix 412*/
        string currentScreen = gx_session.getScreen().getName();
        string isFound = Array.Find(openedScreens, element => element == currentScreen);
        if (isFound != null)
        {
            gx_session.sendKeys("[pf2]");
        }

        /*if (gx_session != null && !gx_session.getScreen().isWindow() && !gx_session.getScreen().getName().Contains("APPLNX_GO"))
        {
            Session.Remove(GXDefaultLogicWebForm.SESSION_LAST_SCREEN);
            StringWriter sw = new StringWriter();
            HtmlTextWriter w = new HtmlTextWriter(sw);
            Control gx_screenArea = null;
            // Gets the screenArea control (according to current page)
            if (gx_appConfig.IsInstant)
            {
                gx_screenArea = Page.Form.FindControl("winEnvelope").FindControl("GXPagePlaceHolder").FindControl("gx_screenArea");
                if (gx_screenArea != null)
                {
                    // Save the page's HTML
                    gx_screenArea.RenderControl(w);
                    Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN] = sw.GetStringBuilder().ToString().Replace("id=\"gx_screenArea\"", "id=\"gx_screenAreaInstantBackGround\" name=\"gx_screenAreaInstantBackGround\"");
                }
            }
            else
            {
                try
                {
                    if (Page.Form != null)
                    {
                        gx_screenArea = Page.Form.FindControl("winEnvelope").FindControl("GXPagePlaceHolder");
                        if (gx_screenArea != null)
                        {
                            // Save the page's HTML
                            gx_screenArea.RenderControl(w);
                            Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN] = sw.GetStringBuilder().ToString();
                        }
                    }
                }
                catch (System.Exception exception)
                {
                    Console.Write(exception);
                }

            }
        }*/

        //Trying prevent Enter clicking on  Drop-Down fields 
        //ConsoleKeyInfo pressedKey = Console.ReadKey();
        //if (pressedKey.Key == ConsoleKey.Enter)
        //{
        //	e.Handled = true;
        //}


    }

    protected void user_changeNextForm(object sender, GXChangeNextFormEventArgs e)
    {
        // occurs before loading next page , by gx_handleHostResponse
        // use e.nextForm , for example logon.aspx , to change the next page
    }

    protected void user_preFillForm(object sender, EventArgs e)
    {
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
    }

    protected void user_postFillForm(object sender, EventArgs e)
    {
        // Occurs after gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        if (Session["SEND_LOADED"] != null && gx_session.getScreen().getName() != "APPLNX_GO")
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "loaded", "setTimeout(() => {sendMessage(top, new Message(\"loaded\", \"You can now show the iframe\"));}, 100);", true);
            Session.Remove("SEND_LOADED");
        }
    }
    protected void user_preSyncHostWithForm(object sender, GXPreSyncHostWithFormEventArgs e)
    {
        // Occurs in before gx_syncHostWithForm , used to add parameters to the map path
    }

    public override void gx_processHostKeyRequest(GXSendKeysRequest sendKeyRequest)
    {
        // This function is activated from a browser pf key or enter was pressed , or javascript:gx_SubmitKey(key)
        base.gx_processHostKeyRequest(sendKeyRequest);
        ////saving the last host key and fields values that send for being able get the last scenario before a failure 
        Session[LAST_HOST_KEY] = sendKeyRequest.getKeys();

    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="inputFields"></param>
    /// <returns></returns>
    public string getInputsFromScreenAsString()
    {
        String listOfFields = string.Empty;
        //GXIFieldCollectionQuery qu = new GXIFieldCollectionQuery();
        int count = Request.Form.Count;

        // has the option  test if isProtected
        GXGetScreenRequest req = new GXGetScreenRequest();
        req.addVariable(GXBaseObjectConstants.GX_VAR_HOST_WINDOW_ENABLED, "false");
        GXIField[] fields = gx_session.getScreen(req).getFields().getFields();
        for (int j = 0; j < fields.Length; j++)
        {
            if (!fields[j].isProtected())
            {
                if (fields[j].getName() != null)
                {
                    listOfFields += "{" + fields[j].getName() + ":" + fields[j].getContent() + "}" + ",";
                }
            }
        }


        return listOfFields;
    }

    // User exits for pop-ups manager
    public override void gx_refreshWindow(Object sender, EventArgs e)
    {
        // Occurs when a modal window is closed , the event is on the main window page
        base.gx_refreshWindow(sender, e);
    }
    public override void gx_closeWindow(Object sender, EventArgs e)
    {
        // Occurs when a modal window is closed, in the modal window page
        gx_doCloseWindow("[pf3]");
    }

    protected void user_preOpenWin(object sender, GXPreOpenWinEventArgs e)
    {
        // Occurs before a window is opened, use e.openWin = false, to cancel opening the window,
        // and to change the window size.

        //			if (gx_session.getScreen(new GXGetScreenRequest()).getName() ==  ...){
        //				e.openWin = false;
        //			}
    }
    // End of user exits for pop-ups manager 

    // User exits for tables
    public override void gx_changeTr(int RowIndex, HtmlTableRow tr, GXITableRow row)
    {
        // Occurs every time a new table row (TR) with run-time data is created.
        // Allows you to customize the TR according to the current host row.

        // if a certain field contains dashes hide the row
        //				if (row.getItemContent("<COLUMN_NAME>").IndexOf("---") >= 0){
        //					tr.Visible = false;
        //				}
    }
    public override void gx_changeTd(int ColIndex, HtmlTableCell td, GXITableRow row)
    {
        //Occurs every time a new table cell TD with run-time data is created.
        //Allows you to customize the table data TD according to the current host
        //row.

        // if a certain field is hidden, change the css class name to a disabled CSS class
        //				if ( ((GXFieldTableCell)row.getItem("<COLUMN_NAME>")).isVisible() == true){
        //					td.Attributes["class"] = "<DISABLE_GRAY_CSS_CLASS_NAME>";
        //				}
    }
    public override void gx_changeControl(int ColIndex, HtmlTableCell td, Control ctrl, GXITableRow row)
    {
        // Occurs every time a new control inside a TD with run-time data is created.
        // Allows you to customize the controls according to the current host row.

        // if the created element is a link, get it's content from a desired column
        //				if (ctrl is HtmlAnchor){
        //					HtmlAnchor myAnchor= (HtmlAnchor)ctrl;
        //					myAnchor.InnerHtml = row.getItemContent("<COLUMN_NAME>");
        //				}
    }

    /// <summary>
    /// Error handling for applinx error
    /// </summary>
    /// <param name="err">Applinx exception (generated by the framework)</param>
    public override void gx_handleSessionError(com.sabratec.applinx.baseobject.GXGeneralException err)
    {
        // param preparation
        //ExtendedException extendedEx = new ExtendedException("0", err.Message, err);

        try
        {
            if (gx_session != null && gx_getForm(gx_session.getScreen().getName()) != gx_form.FormName)
            {
                gx_handleHostResponse();
            }
        }
        catch (System.Exception exception)
        {

        }

        string stackTrace = string.Empty;
        if (err != null)
        {
            stackTrace = err.StackTrace;
        }
        MethodBase callMethod = new StackTrace().GetFrame(1).GetMethod();
        object[] paramArr = callMethod.GetParameters().ToArray();

        //set parameters into Session and Aplication layer for being able use them after the session is closed/collapsed
        Session[ERR_EXCEPTION_STACK] = err.StackTrace;
        Application[ERR_EXCEPTION_STACK] = err.StackTrace;
        Application[INNER_EXCEPTION_MESSAGE] = err.Message;
        Application[ERR_CODE] = err.getErrorCode();
        base.gx_handleSessionError(err);
        //GXResponseCodes.ERROR_USER_ALREADY_ATTACHED;
    }
    // End of user exits for tables

    /// <summary>
    /// Sets font size dynamically for instant pages
    /// </summary>
    /// <returns>font size mapping by screen resolution</returns>
    public override Map getColumnMappingPerResolution()
    {
        // TODO: set into config file
        // All font sizes map
        Map columnsMappingPerResoulation = new HashMap();
        // Low resultions font sizes
        Map lowResMapping = new HashMap();
        lowResMapping.put(new Integer(SCREEN_WIDTH_NORMAL), new Integer(15));
        lowResMapping.put(new Integer(SCREEN_WIDTH_WIDE), new Integer(15));
        // High resultions font sizes
        Map highResMapping = new HashMap();
        highResMapping.put(new Integer(SCREEN_WIDTH_NORMAL), new Integer(18)); //23 (max size)
        highResMapping.put(new Integer(SCREEN_WIDTH_WIDE), new Integer(18)); //19 (max size)

        /*Map mapping1 = new HashMap();
		mapping1.put(new Integer(80), new Integer(23));
		mapping1.put(new Integer(132), new Integer(19));*/
        Map mapping2 = new HashMap();
        mapping2.put(new Integer(80), new Integer(18));
        mapping2.put(new Integer(132), new Integer(18));
        // Font sizes registration
        columnsMappingPerResoulation.put("LowRes", lowResMapping);
        columnsMappingPerResoulation.put("HighRes", highResMapping);
        //columnsMappingPerResoulation.put("1280X768", mapping1);
        columnsMappingPerResoulation.put("1920X1200", mapping2);
        return columnsMappingPerResoulation;
    }

    #region Custom methods

    //executing the logging function  with  all the necessary  parameters
    protected void writeToDailyLog(string code, string message, string errorGuid, string stackTrace, string lastHostKey, string lastFields)
    {
        string screenName = Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN_NAME] != null ? Session[GXDefaultLogicWebForm.SESSION_LAST_SCREEN_NAME].ToString() : string.Empty;
        List<string> screenCallStack = new List<string>();
        screenCallStack = (List<string>)Session["screenCallStack"];
        string screenCallStackAsString = screenCallStack != null ? string.Join(",", screenCallStack) : "";

        string username = getCurrentUserName();
        DBHelper dbHelper = new DBHelper(AppCache.getCompany(), username);
        DateTime currentTime = DateTime.Now;
        string date = currentTime.ToString("yyyyMMdd");
        string timestamp = currentTime.ToString("yyyyMMddHHmmssffffff");
        string callStackString = screenCallStackAsString.Substring(System.Math.Max(0, screenCallStackAsString.Length - 100));
        int index = callStackString.LastIndexOf(',');
        string program = "";
        if (index == -1)
        {
            program = callStackString;
        }
        else if (index + 1 < callStackString.Length)
        {
            program = callStackString.Substring(index + 1);
        }
        string type = gx_appConfig.SessionConfig.SessionId.StartsWith(username) ? "H" : "HU";
        if (message.Contains("Object reference not set to an instance of an object."))
        {
            type = "N";
        }
        string url = HttpContext.Current.Request.Url.AbsoluteUri;
        string option = url.Substring(url.LastIndexOf('/') + 1);
        if (option.All(char.IsDigit) == false)
        {
            option = "0";
        }

        string sqlStmt = string.Format("INSERT INTO GALPHP.SNE (SNECMP, SNEUSR, SNETYP, SNESID, SNESVR, SNEOPT, SNEMSG, SNEPGM, SNECSTK, SNEDAT, SNETIME) VALUES (?,?,?,?,?,?,?,?,?,{0},{1})", date, timestamp);
        string[] parameters = new string[] { AppCache.getCompany(), username, type, gx_appConfig.SessionConfig.SessionId, HttpContext.Current.Server.MachineName, option, message, program, callStackString };
        dbHelper.ExecuteNonQuery(sqlStmt, parameters);
        //log4netLogger.writeByLog4net(level, message, getCurrentUserName(), gx_appConfig.SessionConfig.SessionId, Session.SessionID, Response.StatusCode, screenName, this.GetType().Name, errorGuid, screenCallStackAsString, stackTrace, lastHostKey, lastFields);
    }

    /// <summary>
    /// Get current user name
    /// </summary>
    /// <returns>User name</returns>
    public string getCurrentUserName()
    {
        LoginRequest req = (LoginRequest)Session[SESSION_LOGIN_OBJ];
        if (req != null)
        { return req.UserName; }
        return string.Empty;
    }

    /// <summary>
    /// substring the current user name from the sessionId string 
    /// (for not using the windows authentication as indicator for getting the user name)
    /// </summary>
    /// <returns> user Name</returns>
    public string getUserIDfromSessionID()
    {
        string sessionID = gx_appConfig.getSessionConfig().getSessionId().ToString();
        if (isGalSession())
        {
            for (int i = 0; i < sessionID.Length; i++)
            {
                if (char.IsDigit(sessionID[i]))
                {
                    //return the user name that appear inside the GalWeb sessionID
                    return sessionID.Substring(0, i);
                }
            }
        }
        //return the Windows authentication usename if exist
        else if (getCurrentUserName() != null && getCurrentUserName() != "")
        {
            return getCurrentUserName();
        }
        //return the username who run the proccess
        return Environment.UserName; ;
    }

    /// <summary>
    /// Used to keep session consistency when using GalWeb tabs
    /// </summary>
    protected void InsertSessionKeeper()
    {
        // Injects an hidden payload to keep the session ID as part of the page to keep session consistency on multiple tabs
        HiddenField myHidden = new HiddenField();
        myHidden.ID = PAGE_KEEPER_NAME;
        myHidden.ClientIDMode = ClientIDMode.Static;
        myHidden.Value = gx_appConfig.SessionConfig.SessionId;
        if (Form != null && (this.GetType().IsSubclassOf(typeof(GXDefaultLogicWebForm))))
        {
            Form.Controls.Add(myHidden);
        }
    }

    /// <summary>
    /// Checks and executes any PC commands from previous screen (after PCO screen is skipped)
    /// </summary>
    protected void ExecutePCCommand()
    {
        if (Session[SESSION_PC_CMD] != null)
        {
            string command = Session[SESSION_PC_CMD].ToString();
            Session.Remove(SESSION_PC_CMD);
            //Response.Write(string.Format("<script>window.open('{0}','_blank');</script>", command));
            string currentCompany = "";
            LoginRequest req = GetCurrentLoginRequest();
            if (req != null)
            {
                currentCompany = req.Company;
            }
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "PCCMD", string.Format("executePCCommand('{0}','{1}');", command, currentCompany), true);
            //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "unlockScreen", "gx_unlockScreen();", true);
        }
    }

    /// <summary>
    /// Returns a device ID based on configuration and given session id
    /// </summary>
    /// <param name="id">Session ID</param>
    /// <returns>Device ID</returns>
    protected string BuildDeviceID(string id)
    {
        StringBuilder DeviceID = new StringBuilder();
        DeviceID.Append(ConfigurationManager.AppSettings[CONF_DEVICE_PREFIX]);
        // cutting the id to reach a maximum of 10 characters
        int preFixLength = ConfigurationManager.AppSettings[CONF_DEVICE_PREFIX].Length;
        int maxlength = System.Math.Min(MAX_DEVICE_LEN, preFixLength + id.Length);
        DeviceID.Append(id.Substring(0, maxlength));

        return DeviceID.ToString();
    }

    /// <summary>
    /// Marks current web session as a GalWeb session
    /// </summary>
    protected void MarkSessionAsGal()
    {
        Session[SESSION_IS_GAL] = true;
    }

    /// <summary>
    /// Is the current web session a GalWeb session
    /// </summary>
    /// <returns></returns>
    protected static bool isGalSession()
    {
        return (HttpContext.Current.Session[SESSION_IS_GAL] != null);
    }

    /// <summary>
    /// Get current session's active applinx session object with all its login parameters
    /// </summary>
    /// <returns>Login request details</returns>
	protected static LoginRequest GetCurrentLoginRequest()
    {
        bool queryStringExists = HttpContext.Current.Request.QueryString != null && HttpContext.Current.Request.QueryString["user"] != null;
        NameValueCollection parms = HttpUtility.ParseQueryString(HttpContext.Current.Request.Url.Query);
        LoginRequest req = (LoginRequest)HttpContext.Current.Session[SESSION_LOGIN_OBJ];
        if (!isGalSession() && !queryStringExists && req == null)
        {
            req = new LoginRequest();
            req.Company = AppCache.getCompany();
            req.UserName = AppCache.getCompany() + "_PHP";
        }
        else if (!isGalSession() && queryStringExists && req == null)
        {
            req = new LoginRequest();
            req.Company = parms["company"];
            req.UserName = parms["user"];
            req.Password = parms["password"];
            req.Timestamp = parms["ts"];
            req.SessionID = parms["session_id"];
            req.BlankSession = parms["blank_session"];
            HttpContext.Current.Session[SESSION_LOGIN_OBJ] = req;
        }
        return req;
    }

    /// <summary>
    /// Set current session's active applinx session object with all its login parameters
    /// </summary>
    /// <param name="req">Login request details</param>
	protected void SetCurrentLoginRequest(LoginRequest req)
    {
        Session[SESSION_LOGIN_OBJ] = req;
    }

    protected void CleanSessionStorage()
    {
        Session.Clear();
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "clearStorage", "clearStorage();", true);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sessionId"></param>
    /// <returns></returns>
    public static GXIClientBaseObject GetGxSession(string sessionId)
    {
        GXAttachToSessionRequest sessionRequest = new GXAttachToSessionRequest();
        XmlDocument doc = new XmlDocument();
        doc.Load(HttpContext.Current.Server.MapPath("~") + "config/gx_appConfig.xml");
        sessionRequest.setApplicationName(doc.DocumentElement.SelectSingleNode("/GXWebAppConfig/SessionConfig/ApplicationName").InnerText);
        sessionRequest.setServerURL(doc.DocumentElement.SelectSingleNode("/GXWebAppConfig/SessionConfig/ServerURL").InnerText);
        if (sessionId != "")
        {
            sessionRequest.setSessionID(sessionId);
        }
        else
        {
            sessionRequest.setSessionID((string)HttpContext.Current.Session["SessionId"]);
        }
        GXIClientBaseObject baseObject = GXClientBaseObjectFactory.getBaseObject(sessionRequest);
        return baseObject;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="baseObject"></param>
    public static void DetachGxSession(GXIClientBaseObject baseObject)
    {
        GXClientBaseObjectFactory.detachSession(baseObject);
    }

    protected static GXPathRequest CreateRequestForAPPLNXGO(LoginRequest userDetails)
    {
        GXPathRequest req = new GXPathRequest("LaunchProgram");
        req.addVariable("Company", userDetails.Company);
        req.addVariable("UserName", userDetails.UserName);
        req.addVariable("Timestamp", userDetails.Timestamp);

        return req;
    }

    protected static string DictionaryToJson(Dictionary<string, string> toJason)
    {
        return JsonConvert.SerializeObject(toJason);
    }


    protected Dictionary<string, object> JsonToDictionary(string filepath)
    {
        return JsonConvert.DeserializeObject<Dictionary<string, object>>
            (File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + filepath + ".json"));
    }

    protected void FetchComapnyConfig()
    {
        if (Session["companyConfig"] == null)
        {
            Dictionary<string, object> generalConfig = JsonToDictionary("/companyConfig/GENERAL");

            string company = AppCache.getCompany();
            bool comapnyConfigExists = File.Exists(AppDomain.CurrentDomain.BaseDirectory + "/companyConfig/" + company + ".json");
            if (comapnyConfigExists)
            {
                Dictionary<string, object> companyConfig = JsonToDictionary("/companyConfig/" + company);
                foreach (KeyValuePair<string, object> entry in generalConfig)
                {
                    if (!companyConfig.ContainsKey(entry.Key))
                    {
                        companyConfig.Add(entry.Key, entry.Value);
                    }
                }
                Session["companyConfig"] = companyConfig;
            }
            else
            {
                Session["companyConfig"] = generalConfig;
            }
        }

        try
        {
            if (Session["companyConfig"] != null)
            {
                Dictionary<string, object> sessionCompanyConfig = (Dictionary<string, object>)Session["companyConfig"];
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setPcCmdUrl", "sessionStorage.setItem('pcCmdUrl', '" + (string)sessionCompanyConfig["pcCmdUrl"] + "');", true);
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setDateFormat", "sessionStorage.setItem('dateFormat', '" + (string)sessionCompanyConfig["dateFormat"] + "');", true);
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setImagePathUrl", "sessionStorage.setItem('itemImagePath', '" + (string)sessionCompanyConfig["itemImagePath"] + "');", true);
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setendMonth", "sessionStorage.setItem('endMonth', '" + (string)sessionCompanyConfig["endMonth"] + "');", true);
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "setNumberFormat", "sessionStorage.setItem('numberFormat', '" + (string)sessionCompanyConfig["numberFormat"] + "');", true);
            }
        }
        catch (System.Exception e)
        {
        }
    }

    private void ExitFromSignOn(string username, string password)
    {
        GXSendKeysRequest req = new GXSendKeysRequest();
        req.addInputField("user", username);
        req.addInputField("password", password);
        req.setKeys("[enter]");
        gx_session.sendKeys(req);

        if (gx_session.getScreen().getName().Contains("APPLNX_GO"))
        {
            return;
        }
        else if (gx_session.getScreen().getName().Contains("SIGNON"))
        {
            string message = gx_session.getScreen().getFieldContent("message").Trim();
            string pattern = @"(CPF)(1120|1392|1107)";
            RegexOptions options = RegexOptions.Multiline | RegexOptions.IgnoreCase;
            if (Regex.IsMatch(message, pattern, options))
            {
                //TODO ADD LOGIC IF DETAILS ARE WRONG
            }
            else
            {
                //TODO IS IT POSSIBLE?
            }
        }
    }

    private static SessionManager.GetSessionRequest CreateSession(string sessionId)
    {
        SessionManager.SessionManager mgr = new SessionManager.SessionManager();
        // Cancel session request for any existing applinx session with the same session id requested
        SessionManager.GetSessionRequest sessionReq = new SessionManager.GetSessionRequest()
        {
            username = ConfigurationManager.AppSettings[CONF_ADMIN_WS_USER],
            password = ConfigurationManager.AppSettings[CONF_ADMIN_WS_PASS],
            sessionId = sessionId
        };
        return sessionReq;
    }

    protected void CloseSession(string sessionId)
    {
        SessionManager.SessionManager mgr = new SessionManager.SessionManager();
        // Cancel session request for any existing applinx session with the same session id requested
        SessionManager.CancelSessionRequest cancelReq = new SessionManager.CancelSessionRequest()
        {
            username = ConfigurationManager.AppSettings[CONF_ADMIN_WS_USER],
            password = ConfigurationManager.AppSettings[CONF_ADMIN_WS_PASS],
            sessionId = sessionId
        };
        try
        {
            SessionManager.CancelSessionResponse cancelRes = mgr.cancelSession(cancelReq);
        }
        catch (System.Exception exception)
        {

        }
    }

    private string GetCSSIDFromDBConfig(LoginRequest userDetails)
    {
        DBHelper dbHelper = new DBHelper(userDetails.Company, userDetails.UserName);
        return dbHelper.CSSID;
    }

    [WebMethod]
    public static string UpdateCurrentSessionScreen(string queryParams)
    {
        NameValueCollection userDetails = HttpUtility.ParseQueryString(queryParams);
        LoginRequest currentSession = GetCurrentLoginRequest();
        if (currentSession == null)
        {
            currentSession = new LoginRequest(userDetails["user"], userDetails["password"], userDetails["company"],
                userDetails["ts"], userDetails["session_id"], null);
        }
        else
        {
            currentSession.Timestamp = userDetails["ts"];
            currentSession.Company = userDetails["company"];
        }
        HttpContext.Current.Session[SESSION_LOGIN_OBJ] = currentSession;

        try
        {
            GXIClientBaseObject baseObject = GetGxSession(userDetails["session_id"]);
            GXPathResponse res = baseObject.executePath("SessionExit");
            GXPathRequest req = CreateRequestForAPPLNXGO(currentSession);
            baseObject.executePath(req);
            DetachGxSession(baseObject);
        }
        catch (System.Exception e) { }

        return "success";
    }

    [WebMethod]
    public static string GoToAPPLNXGO()
    {
        LoginRequest currentSession = (LoginRequest)HttpContext.Current.Session[SESSION_LOGIN_OBJ];
        try
        {
            GXIClientBaseObject baseObject = GetGxSession(currentSession.SessionID);
            GXPathResponse res = baseObject.executePath("SessionExit");
            DetachGxSession(baseObject);
        }
        catch (System.Exception e) { }

        return "success";
    }
    #endregion
}
