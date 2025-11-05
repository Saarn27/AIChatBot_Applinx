using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for instant
/// </summary>
public partial class GWU25W_ADDL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "next", "update","next user" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(reason_TYP, AppCache.GetTableData("T23", new string[] { "G", "SUP", "INR" }, new string[] { "T23COD,T23DSCL" }));
        //FillComboBox(reason_TYP, AppCache.GetTableData("T23", new string[] { "G", "SUP", "INR" }));
        ToggleIndicatorField(new string[] { "workflowNumber_ADDNUM", "workflowType_ADDWFT" }, hiddenField, true, true, true);

    }

}