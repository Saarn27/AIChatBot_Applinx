using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GTU01_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "new task" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(taskType_GRDOC, AppCache.GetTableData("T23", new string[] { "G", "GEN", "TSK" }));
        FillComboBox(filterDueDate_DUEF, AppCache.GetTableData("T23", new string[] { "G", "GEN", "TS1" }));
        ToggleIndicatorField(new string[] { "entity_GTCOD" }, hiddenField, true, true, false);
        ToggleIndicatorField(new string[] { "entityDesc_ENTDSC", "entity_GTKEY" }, hiddenField, false, false);
    }
}