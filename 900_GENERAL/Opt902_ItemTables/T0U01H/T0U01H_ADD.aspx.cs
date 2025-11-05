using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.WebControls;

public partial class T0U01H_ADD : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }

     protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        ToggleIndicatorField(new string[] { "Surcharge_SURCHRG" }, hiddenField, true);





    }
}