using System;
using System.Web.UI.HtmlControls;
using com.sabratec.applinx.baseobject;

public partial class TUU03_ADD : GalLogicWebForm
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
   
        ToggleIndicatorField(new string[] { "LastUpdatedBy_AUPDDAT" }, hiddenField, true, true, false);
        ToggleIndicatorField(new string[] { "sourceUOM_SRCD" }, hiddenField, false, false, false);
        ToggleIndicatorField(new string[] { "destinUOM_DSTD" }, hiddenField, false, false, true);
        DisableComboBox(new HtmlSelect[] { Imc_IMC });

    }

}