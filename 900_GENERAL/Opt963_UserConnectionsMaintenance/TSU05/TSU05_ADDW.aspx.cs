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


public partial class TSU05_ADDW : GalLogicWebForm
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

        bool updateVisible = gx_session.getScreen(ScreenRequest).getFieldInstance("updbtn", 0).isVisible();
        if (!updateVisible)
        {
            if (String.IsNullOrEmpty(hiddenField.Value))
            {
                hiddenField.Value += "ctl00_GXPagePlaceHolder_updbtn";
            }
            else
            {
                hiddenField.Value += "ctl00_GXPagePlaceHolder_updbtn";
            }
            
        }

        bool lastDivIsHidden = !(gx_session.getScreen(ScreenRequest).getFieldContent("lastUpdatedBy").Trim().ToLower().Contains("last"));
        if (lastDivIsHidden)
        {
            if (String.IsNullOrEmpty(hiddenField.Value))
            {
                hiddenField.Value += "ctl00_GXPagePlaceHolder_lastDiv#false#false";
                hiddenField.Value += ",ctl00_GXPagePlaceHolder_lastDiv2#false#false";
            }
            else
            {
                hiddenField.Value += ",ctl00_GXPagePlaceHolder_lastDiv#false#false";
                hiddenField.Value += ",ctl00_GXPagePlaceHolder_lastDiv2#false#false";
            }
        }

        ToggleIndicatorField(new string[] { }, hiddenField, true);
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    }

    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }
}