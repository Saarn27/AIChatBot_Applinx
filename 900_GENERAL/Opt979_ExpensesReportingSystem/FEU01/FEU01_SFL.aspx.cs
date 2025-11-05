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


public partial class FEU01_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "new","reference number","gal number" }, null, true);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(StatusNe_NSTS1, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXS" }));
        FillComboBox(StatusNe_NSTS2, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXS" }));
        FillComboBox(inputAboveS_HSTS, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXS" }));
        ToggleIndicatorField(new string[] { "inputAbovesalesman_HSMD", "inputAbovefrom_HOPN", "inputAboveto_HOPNT" }, hiddenField);
        AppendIconKeyToToolbar(hostKeysToolbar, "", "default");
    }
}