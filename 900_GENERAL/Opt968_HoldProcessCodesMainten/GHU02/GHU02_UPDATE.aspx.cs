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


public partial class GHU02_UPDATE : GalLogicWebForm
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


        FillComboBox(Entity_GHTYPE, AppCache.GetTableData("T23", new string[] { "G", "GEN", "RMK" }, new string[] { "T23COD", "T23DSCL" }));
        FillComboBox(ActionCode_GHEXP, AppCache.GetTableData("T23", new string[] { "G", "GEN", "HLD" }, new string[] { "T23COD", "T23DSCL" }));

        DisableComboBox(new HtmlSelect[] { Entity_GHTYPE, ActionCode_GHEXP, AuthDisplay_GHDSP, SendNotification_GHMSG, HoldCodeValue_GHFHLD, ExternalSystem_GHEXT });
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    }
    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}