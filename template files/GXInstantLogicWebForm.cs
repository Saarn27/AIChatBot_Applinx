using System;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using com.sabratec.dotnet.framework;
using com.sabratec.applinx.baseobject;
using com.sabratec.applinx.framework.web;

using com.sabratec.applinx.presentation;
using com.sabratec.applinx.presentation.transforms;
using com.sabratec.util;
using System.Linq;
using System.Collections.Generic;
using System.Globalization;
using System.Web.UI;

public class GXInstantLogicWebForm : GXDefaultLogicWebForm
{
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        gx_appConfig.IsInstant = true;
        if (Session["localNewPassword"] != null)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "localNewPassword", (string)Session["localNewPassword"], true);
            Session.Remove("localNewPassword");
        }
    }

    protected override void OnPreRender(EventArgs e)
    {
        base.OnPreRender(e);

        // Instant configuration

        registerInstantTransforms();
    }

    public virtual void registerInstantTransforms()
    {
        //gx_appConfig.InstantConfig.addTagListener(new UserTagTransform1());
        //gx_appConfig.InstantConfig.addCompletionListener(new UserCompletionTransform1());
        // add here more transform registrations
    }
}
