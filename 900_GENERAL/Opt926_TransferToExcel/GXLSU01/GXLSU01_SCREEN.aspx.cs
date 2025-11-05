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


public partial class GXLSU01_SCREEN : GalLogicWebForm
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
       CreateToolBar(hostKeysToolbar, new string[] {"save"});
      }
        catch (Exception error)
      {  
        Console.Write(error);
      }

        ToggleIndicatorField(new string[] { "SqlQuery_ISQL", "SqlQuery_ISQL3", "SqlQuery_ISQL2", "SqlQuery_ISQL4", "SqlQuery_ISQL5", "SqlQuery_ISQL6", "SqlQuery_ISQL7", "SqlQuery_ISQL8", "SqlQuery_ISQL9", "SqlQuery_ISQL10", "SqlQuery_ISQL11", "SqlQuery_ISQL12", "SqlQuery_ISQL13", "SqlQuery_ISQL14" }, hiddenField, true);
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    } 
}