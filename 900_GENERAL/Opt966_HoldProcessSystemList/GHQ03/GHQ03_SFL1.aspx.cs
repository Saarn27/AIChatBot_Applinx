using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for instant
/// </summary>
public partial class GHQ03_SFL1 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "next" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(sc_STKCOD, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CS" }));
        FillComboBox(fact_FACT, AppCache.GetTableData("MTF", new string[] { }));
        FillComboBox(ent_TYP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }));
        ToggleIndicatorField(new string[] { "cust_CUST", "ord_ORD", "item_CAT" }, hiddenField, true, true, true);



    }


}