using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWTU06_ADD : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(CostElement_CSTE, AppCache.GetTableData("FCE"));
        FillComboBox(WorkflowType_WFT, AppCache.GetTableData("GFH", new string[] { "D" }));
        ToggleIndicatorField(new string[] { "lastuserupdate_USRU", "LastDateUpdated_TUPD" }, hiddenField, true, true);

    }
}