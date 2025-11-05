using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;

public partial class T0U01_ADD2 : GalLogicWebForm
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
    protected void page_preFillForm(object sender, EventArgs e)
    {

        FillComboBox(Class_CLASS1, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CL1" }));
        DisableComboBox(new HtmlSelect[] { SystemCode_AIMC2 });

    }
    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}