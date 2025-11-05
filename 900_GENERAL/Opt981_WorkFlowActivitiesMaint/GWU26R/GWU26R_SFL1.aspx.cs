using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWU26R_SFL1 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
		this.gx_preFillForm += new EventHandler(user_preFillForm);
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
   
    protected void user_preFillForm(object sender, EventArgs e){
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        
    }
}