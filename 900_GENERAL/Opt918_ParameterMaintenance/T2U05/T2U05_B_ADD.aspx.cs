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


public partial class T2U05_B_ADD : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {

        FillComboBox(Frequency_B_FRQ, AppCache.GetTableData("T23", new string[] { "G", "ITM", "FR" }));
        FillComboBox(RecommededSc_B_SC, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CS" }));

        DisableComboBox(new HtmlSelect[] { Frequency_B_FRQ, Occur6mnt_B_OCCURX, RecommededSc_B_SC });
    }
    protected void page_postFillForm(object sender, EventArgs e)
    { }

    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}