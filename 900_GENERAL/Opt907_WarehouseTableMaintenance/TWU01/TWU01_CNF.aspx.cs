using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TWU01_CNF : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        //this.gx_preFillForm += new EventHandler(page_preFillForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
   /* protected void page_preFillForm(object sender, EventArgs e)
    {
        
        *//*FillComboBox(partOfStk_PART, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW1" }));
        FillComboBox(whsType_TYPE, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WHS" }));
        FillComboBox(receiptCode_RECEIP, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW2" }));
        FillComboBox(planningCod_PLAN, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW3" }));
        FillComboBox(atpType_ATPSEQ, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW4" }));
        FillComboBox(classCentralWhs_GRP, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TW5" }));*//*
    }*/
}