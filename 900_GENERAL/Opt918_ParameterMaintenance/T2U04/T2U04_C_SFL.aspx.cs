using com.sabratec.applinx.baseobject;
using com.sabratec.util;
using System;
using System.Web;
using System.Web.UI.HtmlControls;

public partial class T2U04_C_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "delete" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        addHeaderRow(T2U04_C_SFL_1);
    }

}