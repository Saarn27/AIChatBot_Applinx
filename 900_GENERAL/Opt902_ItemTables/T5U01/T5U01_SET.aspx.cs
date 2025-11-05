using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;

public partial class T5U01_SET : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(mainTableLang_SETMAIC, AppCache.GetTableData("T23", new string[] { "G", "GEN", "LNG" }));
        FillComboBox(localTableLang_SETLOCC, AppCache.GetTableData("T23", new string[] { "G", "GEN", "LNG" }));

        DisableComboBox(new HtmlSelect[] { mainTableLang_SETMAIC, localTableLang_SETLOCC });

        if (String.IsNullOrEmpty(gx_session.getScreen(ScreenRequest).getFieldContent("sysTableLocalLabel", 0).Trim()))
        {
            hiddenField.Value = "ctl00_GXPagePlaceHolder_localTableLang_SETLOCC#true#false";
        }
        if (String.IsNullOrEmpty(gx_session.getScreen(ScreenRequest).getFieldContent("updateUserLabel", 0).Trim()))
        {
            if (String.IsNullOrEmpty(hiddenField.Value))
            {
                hiddenField.Value = "ctl00_GXPagePlaceHolder_updateUserLabel#true#false";
            } else
            {
                hiddenField.Value = ",ctl00_GXPagePlaceHolder_updateUserLabel#true#false";
            }
        }
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "hideField", "hideField();", true);
    }
}