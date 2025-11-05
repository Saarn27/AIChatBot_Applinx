using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OWTC_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //ConcatStrings("itemNumber_TCAT", "itemDescription_TCATD", " : ", true, itemNumber_TCAT);
        //ConcatStrings("transactionType_TTYPE", "transactionDescription_TTDSC", " : ", true, transactionType_TTYPE);
        //ConcatStrings("userCode_TUSR", "userName_TUSRD", " : ", true, userCode_TUSR);
        //ConcatStrings("unitOfMeasure_TUM", "UnitOfMeasureDescription_TUMD", " : ", true, unitOfMeasure_TUM);
        //ConcatStrings("customerNumber_TCUST", "customerNmae_TCUSTD", " : ", true, customerNumber_TCUST);
        //ConcatStrings("salesmanCode_TSM", "salesmanName_TSMD", " : ", true, salesmanCode_TSM);
        //ConcatStrings("warehouseCode_TWHS", "warehouseName_TWHSD", " : ", true, warehouseCode_TWHS);
        //ConcatStrings("currencyCode_TCUR", "currencyDescription_TCURD", " : ", true, currencyCode_TCUR);
    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e){
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "next" });

        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        //FillComboBox(costCenter_SLCST, AppCache.GetTableData("FCT", new string[] { "D" }));
        //FillComboBox(filterTypeWorkFlow_SLTYP, AppCache.GetTableData("GFH", new string[] { "D" }));
        //ToggleIndicatorField(new string[] { "orderSign" }, hiddenField, true, true);
        //AppendIconKeyToToolbar(hostKeysToolbar, "", "default");

    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        addHeaderRow(OWTC_SFL_1);
        // Occurs after gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        
    }
}