using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI.HtmlControls;

public partial class GHRU04_ADD : GalLogicWebForm
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        string subTitle = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("msg_HODAAA");
        if (subTitle == "A D D")
            msg_HODAAA.InnerText = "Add";
        else if (subTitle == "DISPLAY")
            msg_HODAAA.InnerText = "Display";
        else if (subTitle == "DETETE" || subTitle == "DELETE")
            msg_HODAAA.InnerText = "Delete";
        else if (subTitle == "UPDATE")
            msg_HODAAA.InnerText = "Update";
        else if (subTitle == "COPY-ADD")
            msg_HODAAA.InnerText = "Copy-Add";


    }
}