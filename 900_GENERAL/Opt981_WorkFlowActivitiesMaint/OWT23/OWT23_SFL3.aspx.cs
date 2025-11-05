using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;

public partial class OWT23_SFL3 : GalLogicWebForm
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
        GetMultipleSelectedCommand(OWT23_SFL3_1, "opt_OPT", "1", pageIndex);
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
        if (!e.nextForm.ToLower().Contains("OWT23_SFL3".ToLower()))
        {
            Session.Remove("GetMultipleSelectedCommand_OWT23_SFL3_1");
        }
    }
}