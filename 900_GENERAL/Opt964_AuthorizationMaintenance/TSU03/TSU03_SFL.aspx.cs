using System;
using com.sabratec.applinx.baseobject;
using System.Web.UI.HtmlControls;
using com.sabratec.dotnet.framework.events;

public partial class TSU03_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {        
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add" }, null, true);                        
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    }

    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}