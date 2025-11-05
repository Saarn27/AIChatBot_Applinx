using System;
using System.Web.UI.HtmlControls;

public partial class GHU01_RLS : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "release", "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[]
        {"AccessoriesDie_R_GHTLINE", "R_GHTRSN", "R_GHTMSG"}, hiddenField, true, true);
    }
}