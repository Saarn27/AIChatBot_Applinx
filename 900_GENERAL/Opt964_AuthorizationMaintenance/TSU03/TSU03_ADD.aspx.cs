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


public partial class TSU03_ADD : GalLogicWebForm
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
        try
        {
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        if (gx_session.getScreen(ScreenRequest).getFieldContent("btn_F10").Trim().ToLower().Contains("add"))
        {
            btn_F10.InnerText = "Add";
        }
        else
        {
            btn_F10.InnerText = "Update";
        }

        DisableComboBox(new HtmlSelect[] { authority_AAUT });
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    }

    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}