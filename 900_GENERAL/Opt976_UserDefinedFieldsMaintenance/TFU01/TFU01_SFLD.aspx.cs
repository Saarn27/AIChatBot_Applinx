using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;


public partial class TFU01_SFLD : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "confirm" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }


    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        int TableLength = TFU01_SFLD_1.Rows.Count;
        string LastColumnValuesAsString = "";
        for (int i = 1; i < TableLength; i++)
        {
            string LastTd = gx_session.getScreen(ScreenRequest).getFieldContent("atype_ATYP1", i - 1).Trim();
            if (!string.IsNullOrEmpty(LastTd))
            {
                LastColumnValuesAsString += LastTd;
            }
        }
        if (LastColumnValuesAsString == "")
        {
            RemoveLastColumn(TableLength);
        }
    }

    public void RemoveLastColumn(int tableLength)
    {
        for (int i = 0; i < tableLength; i++)
        {
            TFU01_SFLD_1.Rows[i].Cells.RemoveAt(5);
        }
    }
}