using System;
using System.Web.UI.HtmlControls;

public partial class GWU21_ADD : GalLogicWebForm
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
        FillComboBox(workFlowType_ADDWFT, AppCache.GetTableData("GFH", new string[] { "D" }));
        ToggleIndicatorField(new string[] { "lastUserUpdated_LSUPD", "lastDateUpdated_LSUPT" }, hiddenField, true);
        DisableComboBox(new HtmlSelect[] { workFlowType_ADDWFT });

    }
}