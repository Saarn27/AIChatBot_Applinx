using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class TWU01_ADD1 : GalLogicWebForm
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
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add","more data", "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(opOrd_CDF, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW6" }));
        FillComboBox(stockType_FINANCE, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW7" }));
        FillComboBox(forCustomerType1_D_TWDA041, AppCache.GetTableData("T23", new string[] { "G", "CST", "TYP" }));
        FillComboBox(forCustomerType2_D_TWDA042, AppCache.GetTableData("T23", new string[] { "G", "CST", "TYP" }));
        FillComboBox(typeAutoLot_AUTOLO, AppCache.GetTableData("T23", new string[] { "G", "ITM", "ALT" }));
        FillComboBox(fatherWhsOem_OEM, AppCache.GetTableData("TW", new string[] { }));
        FillComboBox(fontColor_D_TWCODA, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW8" }));
        FillComboBox(centralWhsService_CENSTK, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW9" }));
        FillComboBox(numForLocInvoice_LOCINV, AppCache.GetTableData("TN"));
        DisableComboBox(new HtmlSelect[] { opOrd_CDF, stockType_FINANCE, forCustomerType1_D_TWDA041, typeAutoLot_AUTOLO, forCustomerType2_D_TWDA042, fatherWhsOem_OEM, fontColor_D_TWCODA, numForLocInvoice_LOCINV, centralWhsService_CENSTK, displayOnScreen_DISP });

    }
}