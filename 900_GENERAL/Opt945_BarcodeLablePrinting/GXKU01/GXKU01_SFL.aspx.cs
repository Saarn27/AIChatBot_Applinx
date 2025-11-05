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


public partial class GXKU01_SFL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add","wrksplf","print" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        AppendIconKeyToToolbar(hostKeysToolbar, "", "default");

    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        int tableLength = GXKU01_SFL_1.Rows.Count;

        for (int i = 1; i < tableLength; i++)
        {
            bool optionIsHidden = !gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("Opt_SEL", i - 1).isUnderlined();
            if (optionIsHidden)
            {
                GXKU01_SFL_1.Rows[i].Cells[0].Controls.RemoveAt(0);
                GXKU01_SFL_1.Rows[i].Cells[0].Controls.RemoveAt(0);
                GXKU01_SFL_1.Rows[i].Cells[0].Controls.RemoveAt(0);
                GXKU01_SFL_1.Rows[i].Cells[4].Controls.RemoveAt(2);
            }
        }
    }


}