
using System;
using System.Threading.Tasks;
using System.Web.UI.HtmlControls;
using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using com.sabratec.util;


public partial class T3U01_ADD2 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
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
        ToggleIndicatorField(new string[] { "Vat_type_Address_number_label", "vat2_ADRESNO1", "devition_DIVISION", "locUs_GLOBUS", "sys_IMCNTR", "cnt_GLOBTR", "fre_FRET", "UpdateDate_UPDDATE", "LastUpdatedUser_UPDUSR" }, hiddenField,true,true,false);  //  single, hasLabel, isLast
        ToggleIndicatorField(new string[] { "srtstat_SORTS", "cst_CSTTYP", "print_COO" }, hiddenField);  //  single, hasLabel, isLast
        FillComboBox(sys_IMCNTR, AppCache.GetTableData("T23", new string[] { "F", "LTS", "CNT" }));
        DisableComboBox(new HtmlSelect[] { SystemCode_IMC, sys_IMCNTR, fre_FRET, srtstat_SORTS, cst_CSTTYP, print_COO });
    }
    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}