using System;
using System.Web.UI.HtmlControls;

public partial class TRU05_ADD : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add to bank list" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

       ToggleIndicatorField(new string[] { "remarkAddNumber_NOTEH" }, hiddenField, true, false);
       // FillComboBox(fromWhs_FWHS, AppCache.GetTableData("TW", new string[] { }));
       // FillComboBox(toWhs_TWHS, AppCache.GetTableData("TW", new string[] { }));
       // FillComboBox(reason_RSN, AppCache.GetTableData("GR", new string[] { "SKA" }));
    }
}