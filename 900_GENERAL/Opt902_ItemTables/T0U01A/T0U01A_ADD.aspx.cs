using System;

public partial class T0U01A_ADD : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(applicationType_TOLINS2, AppCache.GetTableData("T23", new string[] { "G", "ITM", "SET" }));
        FillComboBox(producer_PRODUCER2, AppCache.GetTableData("TW"));
        FillComboBox(line_FATHER1, AppCache.GetTableData("T0", new string[] { "L" }));
        FillComboBox(productGroup_FATHER2, AppCache.GetTableData("T0", new string[] { "G" }));
        FillComboBox(discountGroup_DISGRP, AppCache.GetTableData("T0", new string[] { "D" }));
        FillComboBox(class1_CLASS1, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CL1" }));
        FillComboBox(campaign_CAMPAIGN, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CMP" }));
        FillComboBox(twoD_LINK, AppCache.GetTableData("T23", new string[] { "G", "GEN", "D2" }));
        FillComboBox(hsrManfNon_T0DA11, AppCache.GetTableData("T0", new string[] { "V" }));
        FillComboBox(hsrManfNon1_T0DA12, AppCache.GetTableData("T0", new string[] { "V" }));





    }
}