using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI;

public partial class T0U01A_SFL1 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add" ,"next" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        //try
        //{
        //    int rowsAmount = gx_session.getScreen(new GXGetScreenRequest()).getTable().getRows().getRowCount();
        //    GXSendKeysRequest req = new GXSendKeysRequest();
        //    for (int rowIndex = 0; rowIndex < rowsAmount; rowIndex++)
        //    {
        //        var commandValue = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("selectOption_S", rowIndex).Trim();
        //        var DltErrorMsg = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("errorMessege_EARA1",0).Trim() == "CAN NOT DELETE AN SYSTEM TABLE.";
        //        if (commandValue != "" && DltErrorMsg)
        //        {
        //            req.addInputField("selectOption_S", rowIndex, "");
        //        }
        //    }
        //    if (req.getInputFields().Length > 0)
        //    {
        //        req.setKeys("[tab]");
        //        gx_session.sendKeys(req);
        //    }
        //}
        //catch (Exception exception)
        //{
        //}
    }
}
