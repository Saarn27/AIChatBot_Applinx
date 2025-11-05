using com.sabratec.applinx.baseobject;
using System;

public partial class GWU21W_SFL : GalLogicWebForm
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
        FillComboBox(approveSelection_SLTYP1, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WFB" }));
        //FillComboBox(module_HMOD, AppCache.GetTableData("TSP", new string[] { "G", " ", " " }));
    }
}