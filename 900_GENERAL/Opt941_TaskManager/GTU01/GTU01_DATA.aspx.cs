using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class GTU01_DATA : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update", "add", "accept" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        DisableComboBox(new HtmlSelect[] { taskMethod_GTTMTD });
        ToggleIndicatorField(new string[] { "longRemarks2_REM2", "longRemarks3_REM3" }, hiddenField, true, false);
        FillComboBox(taskMethod_GTTMTD, AppCache.GetTableData("T23", new string[] { "G", "HLP", "GT1" }));
    }

}