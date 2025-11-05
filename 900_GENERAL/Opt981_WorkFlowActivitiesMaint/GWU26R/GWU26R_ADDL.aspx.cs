using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWU26R_ADDL : GalLogicWebForm
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
    protected void page_preFillForm(object sender, EventArgs e){
        try
        {
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "stopLevel_STOPLVL", "workFlowType_S1GFTYP1", "phone_USRPHN" },hiddenField,true,true);
        //ToggleIndicatorField(new string[] {  "holdReleaseCode_HLDT" }, hiddenField, false, true);

        //FillComboBox(countryCode_COUNTRY, AppCache.GetTableData("T3", new string[] { "C" }));
        //FillComboBox(salesman_SALMAN, AppCache.GetTableData("CRC", new string[] { "G" }));
        //FillComboBox(paymentTerms_PAYT, AppCache.GetTableData("T1", new string[] { "P" }));
        //FillComboBox(vatCode_VATCOD, AppCache.GetTableData("T1", new string[] { "V" }));
        //FillComboBox(cifFob_SHIPTYP, AppCache.GetTableData("T1", new string[] { "F" }));
        //FillComboBox(courierCode_COURIER, AppCache.GetTableData("T1", new string[] { "C" }));
        //FillComboBox(methodCode_SPC, AppCache.GetTableData("T1", new string[] { "S" }));
    }
}