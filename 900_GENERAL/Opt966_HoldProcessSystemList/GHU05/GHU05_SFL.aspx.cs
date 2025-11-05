using com.sabratec.applinx.baseobject;
using System;

public partial class GHU05_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        //this.gx_postFillForm += new EventHandler(page_postFillForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(entitySelect_TYP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }));
        FillComboBox(holdActionSelect_EXP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "HLD" }));

        ToggleIndicatorField(new string[] { "CustomerNum_CUST", "customerOrder_ORD", "ItemNumber_CAT" }, hiddenField, true, true);
    }
    /*protected void page_postFillForm(object sender, EventArgs e)
    {
        // Occurs after gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        addHeaderRow(priceListHelpTable_OWDP0);
    }*/
}