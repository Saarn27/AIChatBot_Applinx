using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;

public partial class T0U01_ADD3 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_preSendKeys += new GXPreSendKeyEventHandler(page_preSendKeys);
        this.gx_changeNextForm += new GXChangeNextFormEventHandler(page_changeNextForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add/update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        //DisableComboBox(new HtmlSelect[] { PrintValue_PRTVAL, HeaderGroup_HEAD, SystemCode_AIMC2 });
        FillComboBox(groupType_GRPTYPE, AppCache.GetTableData("T23", new string[] { "G", "ITM", "SET" }));
        DisableComboBox(new HtmlSelect[] { groupType_GRPTYPE, SystemCode_AIMC2, BuildGlobalFile_T0DA01 });
    }

    protected void page_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        string keyPressed = e.sendKeyRequest.getKeys().ToLower();
        if (keyPressed == "[pf10]")
        {
            Session[ATTEMP_TO_UPDATE_GALTABLE] = "true";
        }
    }

    protected void page_changeNextForm(object sender, GXChangeNextFormEventArgs e)
    {
        string nextScreenName = GetNextScreenName(e.nextForm).ToUpper();
        string currentScreenName = this.GetType().BaseType.Name;
        if (currentScreenName != nextScreenName && Session[ATTEMP_TO_UPDATE_GALTABLE] != null)
        {
            Session.Remove(ATTEMP_TO_UPDATE_GALTABLE);
            string[] keys = new string[] { "G" };
            AppCache.resetTableData("T0", keys);
        }
    }
}