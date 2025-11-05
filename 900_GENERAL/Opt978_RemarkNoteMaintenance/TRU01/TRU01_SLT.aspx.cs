using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TRU01_SLT : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(companyOrSystem_CMP, AppCache.GetTableData("T23", new string[] { "X", "SYS", "SYS",null,null,"N" }));
        FillComboBox(remarkSubjectCode_COD, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }));
        ToggleIndicatorField(new string[] { "remarkKey_KEYA" }, hiddenField, true,true,true,true);
    }
}