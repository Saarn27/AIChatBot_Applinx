using com.sabratec.dotnet.framework.events;
using System;

public partial class TCU01_PWD : GalLogicWebForm
{
    private bool enteredPassword = false;
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_preSendKeys += new GXPreSendKeyEventHandler(page_preSendKeys);
        this.gx_changeNextForm += new GXChangeNextFormEventHandler(page_changeNextForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        string keyPressed = e.sendKeyRequest.getKeys().ToLower();
        bool inputExists = e.sendKeyRequest.getInputFields().Length > 0;
        if (keyPressed == "[enter]" && inputExists)
        {
            enteredPassword = true;
        }
    }

    protected void page_changeNextForm(object sender, GXChangeNextFormEventArgs e)
    {
        string nextPage = e.nextForm.ToLower();
        if ((nextPage.Contains("instant") || nextPage.Contains("iiq02_locsfl") || nextPage.Contains("dsppgmmsg")) && enteredPassword)
        {
            Session["remoteCPC"] = Company_R_CMP.Value + ": " + company_R_TCNME.Value;

            LoginRequest currentUserDetails = GetCurrentLoginRequest();
            Session["originCompany"] = currentUserDetails.Company;
            currentUserDetails.Company = Company_R_CMP.Value.ToUpper();
            SetCurrentLoginRequest(currentUserDetails);
        }
        else
        {
            Session.Remove("remoteCPC");
            Session.Remove("goToRemoteCPC");
        }
    }

}