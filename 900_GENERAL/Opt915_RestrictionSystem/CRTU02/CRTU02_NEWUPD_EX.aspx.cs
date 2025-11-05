using System;
using System.Web.UI.HtmlControls;

public partial class CRTU02_NEWUPD_EX : GalLogicWebForm
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        //FillComboBox(salesman_SALMAN, AppCache.GetTableData("CRC", new string[] { }));
        //FillComboBox(omitSalseman_SALMANN, AppCache.GetTableData("CRC", new string[] { }));
        //  ToggleIndicatorField(new string[] { "group_CPAKEYT2_A" }, hiddenField, true, false);
    }
}