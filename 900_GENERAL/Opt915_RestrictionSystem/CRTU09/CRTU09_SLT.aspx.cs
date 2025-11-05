using System;
using System.Web.UI.HtmlControls;

public partial class CRTU09_SLT : GalLogicWebForm
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
       // FillComboBox(recordType_RECTYP, AppCache.GetTableData("T23", new string[] { "G", "STT", "PST" }));
    }
}