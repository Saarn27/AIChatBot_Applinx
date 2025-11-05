using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OWTSI_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar,new string[] { "gmfx"});
            AppendIconKeyToToolbar(hostKeysToolbar, "gmfx_GMFX", "gmfx");
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        //FillComboBox(company_CMP1, AppCache.GetTableData("TC", new string[] { "G" }));
        //FillComboBox(company_CMP2, AppCache.GetTableData("TC", new string[] { "G" }));
        //FillComboBox(company_CMP3, AppCache.GetTableData("TC", new string[] { "G" }));
        //FillComboBox(filterEmployeeNumber_SEL4, AppCache.GetTableData("YP", new string[] { "G" }));
        //FillComboBox(filterDepartment_SEL5, AppCache.GetTableData("FCT", new string[] { "D" }));
    }
}