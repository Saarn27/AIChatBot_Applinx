using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class GWU21_ADDL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add", "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        ToggleIndicatorField(new string[] { "workflowCostCenter_CST" , "workflowRole_ROLE", "workflowStopLevel_STOPLVL", "workflowStartType_SGFDA08", "lastUserUpdated_LSUPD",
            "lastDateUpdated_LSUPT", "documentNum_DOCN" , "workflowNotifyCode_NTNUM" , "workflowNotifyUser_NTUSR"
             ,"programBef" , "programAft" }, hiddenField, true);
        FillComboBox(workflowStartType_SGFDA08, AppCache.GetTableData("T23", new string[] { "F", "CST", "DIS" }));
        FillComboBox(holdReleaseCode_HLDT, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }));
        DisableComboBox(new HtmlSelect[] { holdReleaseCode_HLDT });
        if (gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("F10_Dynamic").Trim().ToLower().Contains("f10"))
        {
            DynamicButton.Style.Remove("display");
            DynamicButton.Style.Add("display", "block");
        }
        else
        {
            DynamicButton.Style.Remove("display");
            DynamicButton.Style.Add("display", "none");
        }
    }


}