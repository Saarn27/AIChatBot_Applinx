using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class TWVU01_B_AUC : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update", "copy", "add" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(InvFrequency_B_TWVINVF, AppCache.GetTableData("T23", new string[] { "G", "CST", "FRQ" }));
        FillComboBox(OrderType_B_TWVOPNPT, AppCache.GetTableData("T23", new string[] { "G", "SUP", "TYO" }));
        FillComboBox(ShippingMethod_B_TWVSPC, AppCache.GetTableData("T1", new string[] { "S" }));
        FillComboBox(LocalOption_B_TWVOPT, AppCache.GetTableData("T23", new string[] { "G", "VND", "LCL" }));
        FillComboBox(Owner_B_TWVOWN, AppCache.GetTableData("T23", new string[] { "G", "VND", "OWN" }));
        FillComboBox(Format_B_TWVFMT, AppCache.GetTableData("T23", new string[] { "G", "VND", "FMT" }));
        FillComboBox(Vending_B_TWVVTYP, AppCache.GetTableData("T23", new string[] { "G", "VND", "VMT" }));
        FillComboBox(Consignment_B_TWVCONS, AppCache.GetTableData("T23", new string[] { "G", "VND", "CTY" }));
        FillComboBox(ScanItemNo_B_TWVSCN, AppCache.GetTableData("T23", new string[] { "G", "VND", "ITM" }));
        FillComboBox(SortByOrderTypeD_B_TWVSORT, AppCache.GetTableData("T23", new string[] { "G", "VND", "VND" }));
        FillComboBox(ControlledInv_B_TWVINVW, AppCache.GetTableData("T23", new string[] { "G", "HLP", "BD1" }));
        DisableComboBox(new HtmlSelect[] { InvFrequency_B_TWVINVF, OrderType_B_TWVOPNPT ,ShippingMethod_B_TWVSPC,LocalOption_B_TWVOPT,
                                           Owner_B_TWVOWN,Format_B_TWVFMT,Vending_B_TWVVTYP,Consignment_B_TWVCONS,ScanItemNo_B_TWVSCN,
                                           SortByOrderTypeD_B_TWVSORT,ControlledInv_B_TWVINVW,QuotationFileType_B_TWVQUTT,
                                           PriceSource_B_TWVPRCU,OpenOrderFor_B_TWVOPNP,stockEvent_B_TWVCOD8,stockCheck_B_TWVCWQ});
    }


}