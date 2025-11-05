using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using Newtonsoft.Json;
using com.sabratec.applinx.presentation.tags;
using com.sabratec.applinx.baseobject;
using System.Text.RegularExpressions;
using System.IO;
using System.Web.UI;
using com.sabratec.dotnet.framework.events;
using System.Drawing;

public partial class TNU01_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add" }, null);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {

        int tableLength = TNU01_SFL_1.Rows.Count;
        string pattern = @"^(.*?)\s*\((\d+%)\)$";
        for (int i = 1; i < tableLength; i++)
        {
            try
            {
                HtmlGenericControl cell = ((HtmlGenericControl)TNU01_SFL_1.Rows[i].Cells[2].Controls[0]);
                Match match = Regex.Match(cell.InnerText, pattern);
                if (match.Groups[1].Value.Trim() != "" && match.Groups[2].Value.Trim() != "")
                {

                    cell.InnerHtml =
                        "<div class='centered-flex' style='justify-content:space-between'>"
                        + "<span>" + match.Groups[1].Value.Trim() + "</span><span style='color:red'>" + "(" + match.Groups[2].Value.Trim() + ")" + "</span>" +
                        "</div>";
                }
            }
            catch { }
        }


    }

}