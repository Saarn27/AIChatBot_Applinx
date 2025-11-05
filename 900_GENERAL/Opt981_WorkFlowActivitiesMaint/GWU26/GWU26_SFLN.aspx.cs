using com.sabratec.applinx.baseobject;
using com.sabratec.util;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWU26_SFLN : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
		this.gx_preFillForm += new EventHandler(user_preFillForm);
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
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
        FillComboBox(filterWorkflowType_SLTYP, AppCache.GetTableData("GFH", new string[] { "D" }));
        //FillComboBox(filterWorkFlowDep_SIMC, AppCache.GetTableData("FCT", new string[] { "D" }));
        AppendIconKeyToToolbar(hostKeysToolbar, "", "default");
        ToggleIndicatorField(new string[] { "astericFilter_SLINADV" }, hiddenField, false, false, true);

    }
}