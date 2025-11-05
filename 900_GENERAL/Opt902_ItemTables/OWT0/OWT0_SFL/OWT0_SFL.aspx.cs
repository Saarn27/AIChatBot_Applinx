using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OWT0_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        if (gx_session.getScreen().getFieldContent("ln_LIN", 0).Trim() == "")
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(4);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(4);
        }
        if (gx_session.getScreen().getFieldContent("fa_FAC", 0).Trim() == "")
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(5);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(5);
        }
        if (gx_session.getScreen().getFieldContent("tp_TYP1", 0).Trim() == "")
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(4);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(4);
        }
        if (gx_session.getScreen().getFieldContent("dsp_DSP", 0).Trim() == "")
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(4);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(4);
        }

        ToggleIndicatorField(new string[] { "gr_SEL3" }, hiddenField, false,true,true);
        //FillComboBox(boxType_ABTXT, AppCache.GetTableData("T23", new string[] { "G", "ITM", "BOX" }));


        

    }
}