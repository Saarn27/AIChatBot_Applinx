using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using com.sabratec.util;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class TRU01_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update", "date", "reference", "user" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        //if the remark from type "RGA REMARK", dont display 'typeRemark' field
        var remarkName = gx_session.getScreen().getFieldContent("remarksEntryType_DSCL").ToUpper();
        if (remarkName == "RGA REMARK")
        {
            hiddenField.Value = "ctl00_GXPagePlaceHolder_typeRemark#true#false";
        }

        ToggleIndicatorField(new string[] { "typeRemark", "remarkRefLine_LINR" }, hiddenField, true, true);
        if (!gx_session.getScreen().getFieldInstance("opt_OPT", 0).isVisible())
        {
            remarksEntryTable_SFL.Attributes.Add("class", remarksEntryTable_SFL.Attributes["class"] + " no-selection-table");
            remarksEntryTable_SFL.Rows[0].Cells[0].Style.Add("display", "none");
            remarksEntryTable_SFL.Rows[1].Cells[0].Style.Add("display", "none");
        }
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        getRemarks();
        //sendKeyRequest();

        var lastColumn = gx_session.getScreen().getFieldContent("userTitle").ToLower();
        if (lastColumn.Contains("ref"))
        {
            userTitle.InnerText = "Reference";
        }
        var typeValue = gx_session.getScreen().getFieldContent("typeRemark").ToUpper();
        if (typeValue != "-")
        {
            switch (typeValue)
            {
                case "G":
                    typeDescription.Value = "GAL SYSTEM";
                    break;
                case "F":
                    typeDescription.Value = "FINANCE";
                    break;
                case "M":
                    typeDescription.Value = "MANUFACTURE";
                    break;
                case "X":
                    typeDescription.Value = "PERSONAL OR GROUP MENU";
                    break;
            }
        }
        else
        {
            typeDescription.Value = " ";
            typeRemark.Value = " ";
        }

        for (int rowIndex = 1; rowIndex < remarksEntryTable_SFL.Rows.Count; rowIndex++)
        {
            string remarkText = ((HtmlInputText)remarksEntryTable_SFL.Rows[rowIndex].Cells[1].Controls[1]).Value;
            if (remarkText.Contains("<"))
            {
                remarkText = remarkText.Replace("<", "(");
            }
            if (remarkText.Contains(">"))
            {
                remarkText = remarkText.Replace(">", ")");
            }
            ((HtmlInputText)remarksEntryTable_SFL.Rows[rowIndex].Cells[1].Controls[1]).Value = remarkText;
        }

        try
        {
            GXPathRequest req = new GXPathRequest("TRU01_SFLtoTRU01_SFL");
            GXPathResponse response = gx_session.executePath(req);
            string[] date = response.getVariableArray("userCode_F1");
            string[] reference = response.getVariableArray("userCode_F1_1");
            Session.Remove("userCode_F1");
            Session.Remove("userCode_F1_1");
            HtmlTableRowCollection rows = remarksEntryTable_SFL.Rows;
            for (int rowIndex = 1; rowIndex < rows.Count; rowIndex++)
            {
                HtmlTableCell cell = new HtmlTableCell("td");
                HtmlGenericControl span = new HtmlGenericControl("span")
                {
                    InnerText = date[rowIndex - 1]
                };
                cell.Attributes.Add("columntype", "date");
                cell.Controls.Add(span);
                span.Attributes.Add("dateformat", "dd/mm/yy");
                span.Attributes.Add("galtype", "date");

                rows[rowIndex].Cells.Add(cell);

                cell = new HtmlTableCell("td");
                span = new HtmlGenericControl("span")
                {
                    InnerText = reference[rowIndex - 1]
                };
                cell.Controls.Add(span);
                rows[rowIndex].Cells.Add(cell);
            }
        }
        catch (Exception exception)
        {

        }

        //string label = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("userTitle");
        //if (label == "Date")
        //{
        //    remarksEntryTable_SFL.Rows[0].Cells[3].Attributes.Add("columntype", "date");
        //    int rows = remarksEntryTable_SFL.Rows.Count;
        //    for (int i = 1; i < rows; i++)
        //    {
        //        remarksEntryTable_SFL.Rows[i].Cells[3].Attributes.Add("columntype", "date");
        //        HtmlGenericControl dateCell = ((HtmlGenericControl)remarksEntryTable_SFL.Rows[i].Cells[3].Controls[1]);
        //        dateCell.Attributes.Add("galtype", "date");
        //        dateCell.Attributes.Add("dateformat", "dd/mm/yy");
        //    }
        //}


    }

    protected void page_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        var str = e.sendKeyRequest.getKeys();
        if (str.ToLower() == "[pf11]")
        {
            e.sendKeyRequest.setKeys("");
        }
    }

    public void sendKeyRequest()
    {
        GXSendKeysRequest backScreen = new GXSendKeysRequest();
        backScreen.setKeys("[pf12]");
        gx_session.sendKeys(backScreen);
        gx_handleHostResponse();
    }

    public void getRemarks()
    {
        var refLine = gx_session.getScreen().getFieldContent("remarkRefLine_LINR").Trim();
        var sys = gx_session.getScreen().getFieldContent("typeRemark").Trim();
        var sbj = gx_session.getScreen().getFieldContent("remarkTypeKey_DSC").Replace(':', ' ').Replace('.', ' ').Trim();
        var keyD = gx_session.getScreen().getFieldContent("remarkTypeNumber_KEY").Trim();
        Dictionary<string, string> parameters = new Dictionary<string, string>();
        if (sys == "-")
        {
            parameters["system"] = " ";
        }
        else
        {
            parameters["system"] = sys;
        }
        parameters["subject"] = sbj;
        parameters["keyD"] = keyD;
        string activateRemark = "sendMessage(top, new Message('remark', JSON.stringify({system :'" + parameters["system"] + "',subject:'" + sbj + "',keyD:'" + keyD + "',refLine:'" + refLine + "'})));";
        Session["ACTIVATE_REMARK"] = activateRemark;
    }
}