using com.sabratec.applinx.baseobject;
using com.sabratec.applinx.baseobject.table;
using com.sabratec.dotnet.framework.events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for instant
/// </summary>
public partial class GNU02_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "send" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(entity_AGNTYPE, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }));

        DisableComboBox(new HtmlSelect[] { entity_AGNTYPE });

    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        for (int rowIndex = 1; rowIndex < GNU02_SFL_1.Rows.Count; rowIndex++)
        {
            if (!gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("user_USR", rowIndex - 1).isUnderlined())
            {
                GNU02_SFL_1.Rows[rowIndex].Style.Add("display", "none");
            }
           
        }
        int disprd_rows = 0;
        for (int rowIndex = 1; rowIndex < GNU02_SFL_2.Rows.Count; rowIndex++)
        {
            
            if (!gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("user_USR2", rowIndex - 1).isUnderlined())
            {
                GNU02_SFL_2.Rows[rowIndex].Style.Add("display", "none");
                disprd_rows += 1;
            }
        }
        if (disprd_rows == 5)
        {
            GNU02_SFL_2.Style.Add("display", "none");
        }
    }
}