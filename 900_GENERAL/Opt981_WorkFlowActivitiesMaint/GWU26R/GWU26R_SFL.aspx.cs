using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWU26R_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
		this.gx_preFillForm += new EventHandler(user_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        addHeaderRow(workFlowRoutingTable_SFL);
    }
    protected void user_preFillForm(object sender, EventArgs e){
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "errror_ERRN"}, hiddenField, true, true);
        // FillComboBox(filterType_SEL2, AppCache.GetTableData("T23", new string[] { "F", "ITM", "PKT" },new string[] { "T23PR3,T23DSCL" }));
        //FillComboBox(filterWorkflowType_SLTYP, AppCache.GetTableData("GFH", new string[] { "D" })); 
        //FillComboBox(filterWorkFlowCustVendNum__SLCST, AppCache.GetTableData("FCT", new string[] { "D" }));
    }
}