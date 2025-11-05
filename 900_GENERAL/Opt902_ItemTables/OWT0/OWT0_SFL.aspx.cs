using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OWT0_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);

    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {

        if (!gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("dsp", 0).isVisible())
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(7);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(7);
        }
        if (!gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("tp", 0).isVisible())
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(6);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(6);
        }
        if (!gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("fa", 0).isVisible())
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(5);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(5);
        }
        if (!gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("ln", 0).isVisible())
        {
            OWT0_SFL_1.Rows[0].Cells.RemoveAt(4);
            OWT0_SFL_1.Rows[1].Cells.RemoveAt(4);
        }
        ToggleIndicatorField(new string[] { "gr_SEL3" }, hiddenField, false, true, true);
    }
    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}
