using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class T1U01P_ADD : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
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
        FillComboBox(holdType_HOLDC, AppCache.GetTableData("GH", new string[] { "OC" }));
        FillComboBox(localUse_LCUSE, AppCache.GetTableData("T23", new string[] { "G","HLP","T1P" }));
        FillComboBox(extendPayCode_EXTPAY, AppCache.GetTableData("CC5", new string[] { "5", "1" }));
    }

}