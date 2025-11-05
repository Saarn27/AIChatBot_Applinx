using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI.HtmlControls;

public partial class GSU25_ADD : GalLogicWebForm
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
        FillComboBox(productGroup_APRGRP, AppCache.GetTableData("T0", new string[] { "G"}));
        FillComboBox(line_APRGRPL, AppCache.GetTableData("T0", new string[] { "L" }));
        FillComboBox(itemType_AITMTYP, AppCache.GetTableData("T23", new string[] { "G","ITM","TYP" }));
        DisableComboBox(new HtmlSelect[] { userType_AUSRTYP, productGroup_APRGRP, line_APRGRPL, itemType_AITMTYP });
        ToggleIndicatorField(new string[] { "lastUpdate_ATUPD", "updateUser_AUSRU" }, hiddenField, true, true);







    }
}