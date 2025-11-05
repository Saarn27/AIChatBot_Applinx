using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWU26_SFL2 : GalLogicWebForm
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
    protected void page_preFillForm(object sender, EventArgs e){
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "approve", "decline" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "returnLabelByUser_OT162", "returnLabelByUserDesc_OT262", "workFlowRemark1_RMKF1", "workFlowRemark2_MINFO", "remark2", "remark3" },hiddenField,true,false,false);
        ToggleIndicatorField(new string[] { "workFlowComment_UTSKL", "remark1" }, hiddenField, true, true);
        ToggleIndicatorField(new string[] { "F4_Dynamic", "F10_Dynamic" }, hiddenField);
    }
}