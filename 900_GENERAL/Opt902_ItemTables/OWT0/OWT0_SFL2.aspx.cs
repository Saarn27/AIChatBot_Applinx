using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;

public partial class OWT0_SFL2 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
        this.gx_preSendKeys += new GXPreSendKeyEventHandler(page_preSendKeys);
        this.gx_changeNextForm += new GXChangeNextFormEventHandler(page_changeNextForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {

        if (Session["pageIndexValue"] == null)
        {
            Session["pageIndexValue"] = 1;
        }
        int pageIndex = Int32.Parse(Session["pageIndexValue"].ToString());
        Session.Remove("pageIndexValue");
        GetMultipleSelectedCommand(OWT0_SFL2_1, "opt_SEL", "1", pageIndex);
    }

    protected void page_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        string keyPressed = e.sendKeyRequest.getKeys().ToLower();
        string pageIndexInputValue = ((HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl("pageIndex")).Value;
        int pageIndex = 0;
        if (pageIndexInputValue == "")
        {
            pageIndexInputValue = "1";
        }

        if (keyPressed == "[pagedn]")
        {
            pageIndex = Int32.Parse(pageIndexInputValue) + 1;
            pageIndexInputValue = pageIndex.ToString();
        }
        else if (keyPressed == "[pageup]" && Int32.Parse(pageIndexInputValue) > 1)
        {
            pageIndex = Int32.Parse(pageIndexInputValue) - 1;
        }

        if (pageIndex != 0)
        {
            Session["pageIndexValue"] = pageIndexInputValue;
        }
    }

    protected void page_changeNextForm(object sender, GXChangeNextFormEventArgs e)
    {
        if (!e.nextForm.ToLower().Contains("OWT0_SFL2".ToLower()))
        {
            Session.Remove("GetMultipleSelectedCommand_OWT0_SFL2_1");
        }
    }
}