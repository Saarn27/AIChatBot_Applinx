using System;
using System.Web.UI.HtmlControls;

public partial class TSQ06_SCR01 : GalLogicWebForm
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
    FillComboBox(system_SYS, AppCache.GetTableData("T23", new string[] { "X", "SYS", "SYS" }));
    }
}