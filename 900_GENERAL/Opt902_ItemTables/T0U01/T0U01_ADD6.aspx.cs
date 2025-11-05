using System;

public partial class T0U01_ADD6 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add/update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "LineType_LINETYPE", "DefaultDiscount_DFT_DISC6", "SalePriceFactor_T0QTYM_6", "MpcFactor_T0DN02_6", "DutyFactor_DUTP" }, hiddenField);

    }
}