using System;
using System.Web.UI.HtmlControls;

public partial class GHU01_DSP : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        //Hide fields:
        ToggleIndicatorField(new string[]
        {"line_E_GHTLINE", "reasonCode_E_GHTRSN"}, hiddenField, true, true);
        DisableComboBox(new HtmlSelect[] { status_E_GHTSTS });

    }
}