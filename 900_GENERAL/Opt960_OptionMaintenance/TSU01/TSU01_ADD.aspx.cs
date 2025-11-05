using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI.HtmlControls;

public partial class TSU01_ADD : GalLogicWebForm
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
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        FillComboBox(system_AS_COD, AppCache.GetTableData("T23", new string[] { "X", "SYS", "SYS" }));
        ToggleIndicatorField(new string[] { "lastUpdatedBy_AUPDUSR", "lastUpdatedBy_AUPDDAT" }, hiddenField, true, true);

    }
}