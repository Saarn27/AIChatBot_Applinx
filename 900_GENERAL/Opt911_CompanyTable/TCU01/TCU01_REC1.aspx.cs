using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class TCU01_REC1 : GalLogicWebForm
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
        FillComboBox(CountryCode_CTR, AppCache.GetTableData("T3", new string[] { "C" }));
        FillComboBox(StateCode_STAT, AppCache.GetTableData("T3", new string[] { "S" }));
        ToggleIndicatorField(new string[] { "fromCode", "divisionRegion" }, hiddenField, true, true, true);
        DisableComboBox(new HtmlSelect[] { TestCode_CODCMP, CountryCode_CTR, StateCode_STAT });

    }
}