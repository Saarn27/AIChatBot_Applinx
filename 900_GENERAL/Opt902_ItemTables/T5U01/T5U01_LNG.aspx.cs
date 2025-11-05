using System;
using System.Web.UI.HtmlControls;

public partial class T5U01_LNG : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add/update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(sysTableMain_DEFMAIC, AppCache.GetTableData("T23", new string[] { "G", "GEN", "LNG" }));
        FillComboBox(sysTableLocal_DEFLOCC, AppCache.GetTableData("T23", new string[] { "G", "GEN", "LNG" }));
        FillComboBox(selectLanguage_LNGCOD, AppCache.GetTableData("T23", new string[] { "G", "GEN", "LNG" }));

        DisableComboBox(new HtmlSelect[] { sysTableMain_DEFMAIC, sysTableLocal_DEFLOCC });

        if (String.IsNullOrEmpty(gx_session.getScreen(ScreenRequest).getFieldContent("localLabel", 0).Trim()))
        {
            hiddenField.Value = "ctl00_GXPagePlaceHolder_sysTableLocal_DEFLOCC#true#false";
        }
        ToggleIndicatorField(new string[] { "subjectKey_TBLCOD", "mainFieldLong_M_DSCL", "translateLong_T_DSCL", "updateUser_UPDUSR" }, hiddenField, true);
    }
}