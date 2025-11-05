using System;

public partial class TSU04_DTL1 : GalLogicWebForm
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar,new string[] {"next tab","update"});
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(UserClass_TYP1, AppCache.GetTableData("T23", new string[] { "G", "GEN", "CLS" }));
        FillComboBox(Region_RGN, AppCache.GetTableData("T3", new string[] { "R" }));
        FillComboBox(Territory_TER, AppCache.GetTableData("T3", new string[] { "T" }));
        FillComboBox(Warehouse_WHS, AppCache.GetTableData("TW"));
    }
}