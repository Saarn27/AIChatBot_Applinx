using System;
using System.Web.UI.HtmlControls;

public partial class GWU21U_SEL : GalLogicWebForm
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
            //CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(userTypeFrom_FUSRTYP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "USR" }));
        FillComboBox(userTypeTo_TUSRTYP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "USR" }));
    }
}