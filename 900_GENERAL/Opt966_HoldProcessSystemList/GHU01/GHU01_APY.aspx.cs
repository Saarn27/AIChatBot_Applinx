using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI.HtmlControls;

public partial class GHU01_APY : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "apply hold" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        string value = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("entity_P_TYPE", 0).Trim();
        //FillComboBox(HoldType_A_GHTHLD, AppCache.GetTableData("GH", new string[] {value}));
        //FillComboBox(ActionCode_A_GHTEXP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "HLD" }));
        //Hide fields:
        ToggleIndicatorField(new string[] 
        {"line_A_GHTLINE", "reason_A_GHTRSN","sNotification_A_GHTMSG"}, hiddenField, true, true);
    }
}