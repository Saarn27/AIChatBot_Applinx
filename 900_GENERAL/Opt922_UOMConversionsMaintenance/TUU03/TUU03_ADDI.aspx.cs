using System;
using System.Web.UI.HtmlControls;
using com.sabratec.applinx.baseobject;

public partial class TUU03_ADDI : GalLogicWebForm
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)

        ToggleIndicatorField(new string[] { "LastUpdatedBy_AUPDUSR", "lastUpdDate_AUPDDAT" }, hiddenField, true, true);
        if (gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("Imc_IMC", 0).isProtected())
        {
            Imc_IMC.Attributes.Add("disabled", "true");
        }

    }

}