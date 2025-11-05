using System;
using System.Web.UI.HtmlControls;

public partial class T0U01S_DTL3 : GalLogicWebForm
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
        FillComboBox(recommendationType_RECTYP, AppCache.GetTableData("T23", new string[] { "G", "ITM", "REC" }));
        FillComboBox(setType_T0CODE, AppCache.GetTableData("T23", new string[] { "M", "ACS", "ST" }));

        DisableComboBox(new HtmlSelect[] { recommendationType_RECTYP, setType_T0CODE, forCosting_T0DA02 });
    }
}