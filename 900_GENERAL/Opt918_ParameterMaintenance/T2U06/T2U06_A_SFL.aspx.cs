using com.sabratec.applinx.baseobject;
using com.sabratec.util;
using System;
using System.Web;
using System.Web.UI.HtmlControls;

public partial class T2U06_A_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add", "next" });
            AppendIconKeyToToolbar(hostKeysToolbar, "btn_H_GMFX", "gmfx");
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
       
    }
      
}