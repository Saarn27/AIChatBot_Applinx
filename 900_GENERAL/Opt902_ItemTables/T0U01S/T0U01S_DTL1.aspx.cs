using System;
using System.Web.UI.HtmlControls;

public partial class T0U01S_DTL1 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }

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
            CreateToolBar(hostKeysToolbar, new string[] { "add", "copy", "update", "reactive", "delete", "next tab" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(building_BLD, AppCache.GetTableData("T23", new string[] { "M", "GEN", "BLD", "HA" }));
        FillComboBox(type_ATYPE, AppCache.GetTableData("T23", new string[] { "G", "ITM", "SET" }));
        FillComboBox(subType_DA06, AppCache.GetTableData("T23", new string[] { "G", "ITM", "SE1" }));

        DisableComboBox(new HtmlSelect[] { building_BLD, type_ATYPE, subType_DA06 });
    }


}