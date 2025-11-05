using System;
using System.Web.UI.HtmlControls;

public partial class T0U01S_DTL2 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add", "copy", "update", "reactive", "delete", "next tab" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(checkOrder_T0CDR, AppCache.GetTableData("T23", new string[] { "M", "ORD", "RC" }));
        FillComboBox(bomAllocation_T0DA01, AppCache.GetTableData("T23", new string[] { "M", "BOM", "ALO" }));
        FillComboBox(displayGroup_DSPGRP, AppCache.GetTableData("T23", new string[] { "M", "STT", "DS" }));
        FillComboBox(activityType_ACTTYP, AppCache.GetTableData("T23", new string[] { "M", "STT", "MC" }));
        FillComboBox(autoWOrder_T0MATT, AppCache.GetTableData("T23", new string[] { "M", "ORD", "AO" }));
        FillComboBox(defaultWarehouse_WHS, AppCache.GetTableData("TW"));

        DisableComboBox(new HtmlSelect[] { rebuildStatus_T0CDL, checkOrder_T0CDR, usedInException_T0CODB, bomAllocation_T0DA01, displayGroup_DSPGRP,
                activityType_ACTTYP, defaultWarehouse_WHS, autoWOrder_T0MATT});
    }
}