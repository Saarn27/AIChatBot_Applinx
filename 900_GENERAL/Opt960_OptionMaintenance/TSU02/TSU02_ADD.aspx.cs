using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI.HtmlControls;

public partial class TSU02_ADD : GalLogicWebForm
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
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        FillComboBox(system_SYS, AppCache.GetTableData("T23", new string[] { "X", "SYS", "SYS" }));
        FillComboBox(orgSystem_OSYS, AppCache.GetTableData("T23", new string[] { "X", "SYS", "SYS" }));
        DisableComboBox(new HtmlSelect[] { menuOption_MENU, longDescriptionColor_COLORD, orgSystem_OSYS, system_SYS, subTitleColor_COLORT });

    }
}