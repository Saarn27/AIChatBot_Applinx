using System;
using System.Web.UI.HtmlControls;

public partial class GHRU01_ADD : GalLogicWebForm
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
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "shipMethod_CSPC", "country_CNTRY" }, hiddenField, true, true);
        DisableComboBox(new HtmlSelect[] { restrictType_AINC, groupType_AGRPT, groupType_ADSTT });

    }

}