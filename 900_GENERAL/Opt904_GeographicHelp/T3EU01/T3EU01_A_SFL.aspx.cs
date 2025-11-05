using com.sabratec.applinx.baseobject;
using System;

public partial class T3EU01_A_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar,new string[] {"add"});
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        AppendIconKeyToToolbar(hostKeysToolbar, "H_GMFX", "gmfx");
    }
}