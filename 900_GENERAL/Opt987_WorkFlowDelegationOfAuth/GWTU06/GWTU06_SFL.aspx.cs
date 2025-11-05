using com.sabratec.applinx.baseobject;
using System;

public partial class GWTU06_SFL : GalLogicWebForm
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(SEL5, AppCache.GetTableData("GFH", new string[] { "D" }));
        FillComboBox(SEL4, AppCache.GetTableData("FCE"));
    }
}