using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class T0U01HO_ADD : GalLogicWebForm
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
        FillComboBox(countryOfExport_COOCA, AppCache.GetTableData("T3", new string[] { "C" }));
        DisableComboBox(new HtmlSelect[] { countryOfExport_COOCA });
        ToggleIndicatorField(new string[] { "Surcharge_SURCHRG" }, hiddenField, true);
    }
}