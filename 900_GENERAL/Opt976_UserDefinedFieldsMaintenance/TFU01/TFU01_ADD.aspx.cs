using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;


public partial class TFU01_ADD : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(program_TFDA04, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }));
        FillComboBox(type1_TYP1, AppCache.GetTableData("T23", new string[] { "G", "CST", "TYP" }));
        FillComboBox(type2_TYP2, AppCache.GetTableData("T23", new string[] { "G", "CST", "TYP" }));
        FillComboBox(line_LINE, AppCache.GetTableData("T23", new string[] { "X", "SYS", "CVT" }));
        ToggleIndicatorField(new string[] { "Desc_ADESC" }, hiddenField, true);
        DisableComboBox(new HtmlSelect[] { dataType_ATYP, recordType_ATYP1, mandatory_AMND, program_TFDA04, print_APRT, type1_TYP1, type2_TYP2, line_LINE });
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    }
}