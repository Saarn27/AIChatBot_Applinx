using System;
using System.Web.UI.HtmlControls;

public partial class CRTU02_NEWUPD_ZS : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

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
        FillComboBox(salesman_SLSMNU, AppCache.GetTableData("CRC", new string[] { }));
        FillComboBox(state_STATU, AppCache.GetTableData("T3", new string[] { "S" }));
        FillComboBox(region_RGNU, AppCache.GetTableData("T3", new string[] { "R" }));
    }
}