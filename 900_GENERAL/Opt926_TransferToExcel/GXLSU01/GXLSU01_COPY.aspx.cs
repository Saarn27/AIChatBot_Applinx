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


public partial class GXLSU01_COPY : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "save" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        ToggleIndicatorField(new string[] { "SqlQuery", "CSQL_2", "CSQL_3", "CSQL_4", "CSQL_5", "CSQL_6", "CSQL_7", "CSQL_8", "CSQL_9", "CSQL_10", "CSQL_11", "CSQL_12", "CSQL_13", "CSQL_14" }, hiddenField, true);
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
    }
}