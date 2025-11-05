using System;
using System.Web.UI.HtmlControls;

public partial class T0U01S_DTL4 : GalLogicWebForm
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
        FillComboBox(orderTypes_T0DA07_1, AppCache.GetTableData("T23", new string[] { "M", "ORD", "OT" }));
        FillComboBox(orderTypes_T0DA07_2, AppCache.GetTableData("T23", new string[] { "M", "ORD", "OT" }));
        FillComboBox(orderTypes_T0DA07_3, AppCache.GetTableData("T23", new string[] { "M", "ORD", "OT" }));
        FillComboBox(defaultBucket_T0DA11, AppCache.GetTableData("MB"));

        DisableComboBox(new HtmlSelect[] { systemCode_AIMC2, mandatoryCust_T0DA03, orderTypes_T0DA07_1, orderTypes_T0DA07_2, orderTypes_T0DA07_3, defaultBucket_T0DA11 });
    }
}