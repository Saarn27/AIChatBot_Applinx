using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;

public partial class TNU01_ADD : GalLogicWebForm
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
        try
        {
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(systemCode_SYS, AppCache.GetTableData("T23", new string[] { "X", "SYS", "SYS" }));
        FillComboBox(systemApplication_SYSAPPC, AppCache.GetTableData("T23", new string[] { "X", "SYS", "APP" }));
        DisableComboBox(new HtmlSelect[] { systemApplication_SYSAPPC, systemCode_SYS });

        ToggleIndicatorField(new string[] { "btn_F10", "endPrefix_LABEL", "endPrefix_TNDA01", "toNumeratorValue_label", "toNumerator_TONUM", "lastOpen_LABEL", "lastOpen_LSTOPN" }, hiddenField, true);
    }
    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }

}