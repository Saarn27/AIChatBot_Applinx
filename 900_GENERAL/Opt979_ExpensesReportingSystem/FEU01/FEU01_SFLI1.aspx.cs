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
using System.Web.UI.WebControls;


public partial class FEU01_SFLI1 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "new" }, null, true);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(inputAbovetype_HTYP, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }, new string[] { "T23COD", "T23DSCL" }));
        ToggleIndicatorField(new string[] { "F6" }, hiddenField, true);
        DisableComboBox(new HtmlSelect[] { inputAbovetype_HTYP });
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        HtmlTableRow totalsRow = this.GetTotalsRow(new string[] { "" ,"TOTAL", "", "", "", "TotalsAmount_TVTS", "", "TotalsApprovedAmount_TVTSA" });
        FEU01_SFLI1_1.Rows.Add(totalsRow);
    }

}