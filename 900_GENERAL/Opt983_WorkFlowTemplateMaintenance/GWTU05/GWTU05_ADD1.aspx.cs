using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;

public partial class GWTU05_ADD1 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        FillComboBox(Code_code1, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WFK" }));
        FillComboBox(Code_code2, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WFK" }));
        FillComboBox(Code_code3, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WFK" }));
        FillComboBox(Code_code4, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WFK" }));
        FillComboBox(Code_code5, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WFK" }));
        FillComboBox(Code_code6, AppCache.GetTableData("T23", new string[] { "G", "GEN", "WFK" }));
        FillComboBox(WorkflowType_ACOD, AppCache.GetTableData("GFH", new string[] { "D" }));

    }
    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}