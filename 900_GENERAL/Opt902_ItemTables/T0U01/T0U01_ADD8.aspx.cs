using System;
using System.Web.UI.HtmlControls;

public partial class T0U01_ADD8 : GalLogicWebForm
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
        ToggleIndicatorField(new string[] { "descriptionPrefix_APRFX", "costingCode_ACOC2" }, hiddenField);
        DisableComboBox(new HtmlSelect[] { EnrichmentCode_T0DSP, Corporate_ADA03, Type_TOLINS2, Statistics_ADSP2, Exceptions_AMATT2, qa_ACODB2, LotManagement_ACODC2, SystemCode_AIMC2 });
        FillComboBox(Type_TOLINS2, AppCache.GetTableData("T23", new string[] { "G", "ITM", "SET" }));


    }
}