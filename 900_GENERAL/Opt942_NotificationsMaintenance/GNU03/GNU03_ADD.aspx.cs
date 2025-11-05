using com.sabratec.dotnet.framework.events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for instant
/// </summary>
public partial class GNU03_ADD : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(entity_AGNTYPE, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }));
        FillComboBox(roll_AROLL, AppCache.GetTableData("T23", new string[] { "G", "GEN", "ROL" }));
        
    }


}