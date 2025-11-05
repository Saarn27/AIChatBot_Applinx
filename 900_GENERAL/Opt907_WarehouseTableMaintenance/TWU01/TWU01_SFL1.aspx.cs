using com.sabratec.applinx.baseobject;
using System;

public partial class TWU01_SFL1 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "next", "add" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
    }

    protected void page_postFillForm(object sender, EventArgs e)
    {
        // Occurs after gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        addHeaderRow(warehouseTable_SFL1);
    }
}