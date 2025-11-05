using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OWT23_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        var type1Titel = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("type1");
        var type2Titel = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("type2");
        var TitelString = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("titleT23");

        if (type1Titel.Contains(":"))
        {
            type1.InnerText = type1Titel.Replace(':', ' ');
        }
        if (type2Titel.Contains(":"))
        {
            type2.InnerText = type2Titel.Replace(':', ' ');
        }
        if (TitelString.Contains(":"))
        {
            titleT23.InnerText = TitelString.Replace(':', ' ');
        }
    }
}