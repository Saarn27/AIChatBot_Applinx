using System;
using System.Web.UI.HtmlControls;

public partial class GHRU03_B_ADD : GalLogicWebForm
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
        FillComboBox(warehouse_B_WHS, AppCache.GetTableData("TW"));
        FillComboBox(state_B_STATE, AppCache.GetTableData("T3", new string[] { "S" }));
        DisableComboBox(new HtmlSelect[] { state_B_STATE, warehouse_B_WHS });
    }
}