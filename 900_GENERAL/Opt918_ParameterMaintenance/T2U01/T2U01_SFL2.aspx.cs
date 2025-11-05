using com.sabratec.applinx.baseobject;
using com.sabratec.util;
using System;
using System.Web;
using System.Web.UI.HtmlControls;

public partial class T2U01_SFL2 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add", "next" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        //ToggleIndicatorField(new string[] {"col1_SEL1"}, hiddenField, true, true);
        //ToggleIndicatorField(new string[] {"col2_SEL2"}, hiddenField, true, true);
        //ToggleIndicatorField(new string[] {"col3_SEL3"}, hiddenField, true, true);
        //ToggleIndicatorField(new string[] {"col4_SEL4"}, hiddenField, true, true);
        //ToggleIndicatorField(new string[] {"col5_SEL5"}, hiddenField, true, true);
        //ToggleIndicatorField(new string[] {"col6_SEL6"}, hiddenField, true, true);
    }
      
}