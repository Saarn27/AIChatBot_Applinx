using com.sabratec.dotnet.framework.events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for instant
/// </summary>
public partial class GNU03_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        int rowsCount = GNU03_SFL_1.Rows.Count;
        if (GNU03_SFL_1.Rows[rowsCount - 1].Cells[4].Controls[0] is HtmlGenericControl)
        {
            int textLength = ((HtmlGenericControl)GNU03_SFL_1.Rows[rowsCount - 1].Cells[4].Controls[0]).InnerText.Length;
            if (((HtmlGenericControl)GNU03_SFL_1.Rows[rowsCount - 1].Cells[4].Controls[0]).InnerText[textLength - 1] == '+')
            {
                ((HtmlGenericControl)GNU03_SFL_1.Rows[rowsCount - 1].Cells[4].Controls[0]).InnerText =
                    ((HtmlGenericControl)GNU03_SFL_1.Rows[rowsCount - 1].Cells[4].Controls[0]).InnerText.Substring(0, textLength - 1);
            }
        }
    }


}