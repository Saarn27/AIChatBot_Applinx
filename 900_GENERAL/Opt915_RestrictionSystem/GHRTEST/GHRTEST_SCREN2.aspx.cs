using System;
using System.Web.UI.HtmlControls;

public partial class GHRTEST_SCREN2 : GalLogicWebForm
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
        //FillComboBox(warehouse_WHS, AppCache.GetTableData("TW"));
        //FillComboBox(stateCode_STATE, AppCache.GetTableData("T3", new string[] { "S" }));
        //FillComboBox(shipMethod_SPC, AppCache.GetTableData("T1", new string[] { "S" }));
    }
}