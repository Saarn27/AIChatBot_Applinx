using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using com.sabratec.util;
using java.util;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class GWTU07_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
        this.gx_preSendKeys += new GXPreSendKeyEventHandler(page_preSendKeys);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add" }, null, true);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(type_ST1, AppCache.GetTableData("T23", new string[] { "G", "SUP", "PRF" }));
        FillComboBox(destinatioTypeFilter_SWDP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WDP" }));
        FillComboBox(supplierClassFilter_SVNDC, AppCache.GetTableData("T23", new string[] { "G", "SUP", "CLS" }));

        AppendIconKeyToToolbar(hostKeysToolbar, "gmfx_GMFX", "gmfx");
        DisableComboBox(new HtmlSelect[] { type_ST1, destinatioTypeFilter_SWDP, supplierClassFilter_SVNDC });
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        int fieldRow = 4;
        int startFieldColumn = 46;

        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);
        string sqlStmt = string.Format(
                   "SELECT T23COD,T23PR5 FROM GALF6{0}.T23 WHERE T23DSP <> 'N' AND T23SYS = 'G' AND T23SUB = 'SUP' AND T23SB1 = 'PRF'",
                   currentUserDetails.Company
               );
        string[] parameters = new string[] { };
        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        Dictionary<string, string> codeAndLength = CodeDescriptionArrayToDict(result);
        if (String.IsNullOrEmpty(type_ST1.Value))
        {
            hiddenField.Value = "ctl00_GXPagePlaceHolder_SelectionInputs1#true#false,ctl00_GXPagePlaceHolder_SelectionInputs2#true#false";
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "hideField", "hideField();", true);
        }
        else
        {

            string length = Regex.Match(codeAndLength[type_ST1.Value], @"^\d+").Value;
            SelectionInputs1.Attributes.Add("offset", "0");
            SelectionInputs1.Attributes.Add("maxlength", length);

            SelectionInputs2.Attributes.Add("offset", (Int32.Parse(length) + 1).ToString());
            SelectionInputs2.Attributes.Add("maxlength", length);

            Dictionary<string, string> offsets = new Dictionary<string, string>
            {
                { "SelectionInputs1", "0" },
                { "SelectionInputs2", (Int32.Parse(length) + 1).ToString() }
            };
            Session["GWT07_SFL_OFFSETS"] = offsets;

            if (Int32.Parse(length) == 10)
            {
                SelectionInputs1.Attributes["class"] = "no-color input-small2";
                SelectionInputs2.Attributes["class"] = "no-color input-small2";
            }
            else if (Int32.Parse(length) == 7 || Int32.Parse(length) == 5)
            {
                SelectionInputs1.Attributes["class"] = "no-color input-small";
                SelectionInputs2.Attributes["class"] = "no-color input-small";
            }
            else if (Int32.Parse(length) == 2)
            {
                SelectionInputs1.Attributes["class"] = "no-color input-xsmall";
                SelectionInputs2.Attributes["class"] = "no-color input-xsmall";
            }
            else if (Int32.Parse(length) == 1)
            {
                SelectionInputs1.Attributes["class"] = "no-color input-xxsmall";
                SelectionInputs2.Attributes["class"] = "no-color input-xxsmall";
            }

            string inputValue1 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow, startFieldColumn)).getContent().Trim();
            string inputValue2 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow, startFieldColumn + Int32.Parse(length) + 1)).getContent().Trim();
            if (!IsPostBack)
            {
                SelectionInputs1.Value = inputValue1;
                SelectionInputs2.Value = inputValue2;
            }

            var fields = gx_session.getScreen(ScreenRequest).getFields();
            int Input1BGColor = fields.getFieldByPosition(new GXPosition(fieldRow, startFieldColumn)).getBGColor();
            int Input2BGColor = fields.getFieldByPosition(new GXPosition(fieldRow, startFieldColumn + int.Parse(length) + 1)).getBGColor();

            if (Input1BGColor == 12)
            {
                SelectionInputs1.Style.Add("border", "#ff2149 1px solid");
                SelectionInputs1.Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
            }
            if (Input2BGColor == 12)
            {
                SelectionInputs2.Style.Add("border", "#ff2149 1px solid");
                SelectionInputs2.Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
            }
        }


    }

    protected void page_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        string keyPressed = e.sendKeyRequest.getKeys().ToLower();
        string desiredOffset = offsetToPress.Value;
        int fieldRow = 4;
        int startFieldColumn = 46;
        Dictionary<string, string> offsets = (Dictionary<string, string>)Session["GWT07_SFL_OFFSETS"];

        if (keyPressed == "[pf1]" && !String.IsNullOrEmpty(desiredOffset))
        {
            GXCursor cursor = new GXCursor(new GXPosition(fieldRow, startFieldColumn + Int32.Parse(desiredOffset)));
            e.sendKeyRequest.setCursor(cursor);
        }

        if (offsets != null)
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            for (int i = 1; i <= 2; i++)
            {
                string fieldId = String.Format("SelectionInputs{0}", i);
                HtmlInputText currentInput = (HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl(fieldId);
                string currentValue = currentInput.Value;
                string column = offsets[fieldId];

                GXPosition fieldPos = new GXPosition(fieldRow, startFieldColumn + Int32.Parse(column));
                setValueToInputReq.addInputField(fieldPos, currentValue);
            }
            gx_session.sendKeys(setValueToInputReq);
        }
        


    }

}