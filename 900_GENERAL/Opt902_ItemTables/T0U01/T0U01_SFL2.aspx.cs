using com.sabratec.applinx.baseobject;
using System;

public partial class T0U01_SFL2 : GalLogicWebForm
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
        string th = gx_session.getScreen(ScreenRequest).getFieldContent("headerSel4_HEADL", 0).Trim();
        if (th == "") {
            int tableLength = TOU01_SFL2_1.Rows.Count;
            for (int i = 0; i < tableLength; i++)
            {
                TOU01_SFL2_1.Rows[i].Cells.RemoveAt(5);
            }
        }
    }
}