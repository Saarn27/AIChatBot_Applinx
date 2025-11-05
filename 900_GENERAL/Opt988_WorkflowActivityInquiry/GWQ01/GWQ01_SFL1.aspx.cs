using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWQ01_SFL1 : GalLogicWebForm
{
  
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
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
        FillComboBox(typeFilter_SGFHTYP, AppCache.GetTableData("GFH", new string[] { "D" }));
        ToggleIndicatorField(new string[] { "gmfx_GMFX"}, hiddenField, false, false, true);
        AppendIconKeyToToolbar(hostKeysToolbar, "gmfx_GMFX", "gmfx");
    }
}