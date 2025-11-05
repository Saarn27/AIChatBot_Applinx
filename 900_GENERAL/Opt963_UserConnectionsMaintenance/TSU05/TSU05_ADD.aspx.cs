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


public partial class TSU05_ADD : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
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
        try
        {           
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        ToggleIndicatorField(new string[] { "company_ACMPG", "defaultmenu_A_TSGSYS", "gmn_ATSGGMNU", "menl_ATSGLNG", "allowSysSEL_ATSGCOD5", "userLim_ADA1",
                            "remote_ATYP1", "allowp_STSGTYP1", "updateuser_AUPDUSR" }, hiddenField, true);
        DisableComboBox(new HtmlSelect[] { menl_ATSGLNG });
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    }

    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}