using com.sabratec.applinx.baseobject;
using System;

public partial class TWVU01_A_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
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
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        AppendIconKeyToToolbar(hostKeysToolbar, "", "default");
        addHeaderRow(TWVU01_A_SFL_1);
       int ErrorColor = gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("prcFilter_S_TWVPRCU", 0).getBGColor();
        if (ErrorColor == 10)
        {
            prcFilter_S_TWVPRCU.Style.Add("border", "#ff2149 1px solid");
            prcFilter_S_TWVPRCU.Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
        }
    }

}