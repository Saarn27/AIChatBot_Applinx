using System;
using System.Web.UI.HtmlControls;

public partial class T0U01_ADD5 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
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
            CreateToolBar(hostKeysToolbar, new string[] { "add/update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        DisableComboBox(new HtmlSelect[] { SystemCode_AIMC2 });
        FillComboBox(ProductType_PRDTP, AppCache.GetTableData("T23", new string[] { "G", "ITM", "SET" }));

    }
}