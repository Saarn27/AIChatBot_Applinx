using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GTU01_SFLA : GalLogicWebForm
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
        ToggleIndicatorField(new string[] { "filterTaskTypeDesc_PTSK" }, hiddenField, true, true);
        //FillComboBox(boxType_ABTXT, AppCache.GetTableData("T23", new string[] { "G", "ITM", "BOX" }));
    }
}