using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWU26_SFLR : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
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
    protected void page_postFillForm(object sender, EventArgs e)
    {
        addHeaderRow(userToReturnTable_SFLR);
    }
    protected void page_preFillForm(object sender, EventArgs e){
        try
        {
            //CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        //ToggleIndicatorField(new string[] { "localSc_CS", "vendorSc_CS2", "frequencyCode_CS3", "stockStatus_STATUS" },hiddenField,true,true);
        //ToggleIndicatorField(new string[] { "itemDescription2_DSCA", "drawingNumber_DRAWIN", "longItemDescription1_DES1",
        //    "longItemDescription2_DES2", "longItemDescription3_DES3", "longItemDescription4_DES4" }, hiddenField, true, false);
    }
}