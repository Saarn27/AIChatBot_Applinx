using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using System;

public partial class CRTU02_CTL_EX : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "next","add" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(recordType_RECTYP, AppCache.GetTableData("T23", new string[] { "G", "STT", "PST" }));
    }


}