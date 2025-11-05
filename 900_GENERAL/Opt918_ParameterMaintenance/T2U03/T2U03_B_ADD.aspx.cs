using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using com.sabratec.util;
using System;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class T2U03_B_ADD : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        FillComboBox(stockCode_B_SC, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CS" }, new string[] { "T23COD", "T23DSCL" }));
        FillComboBox(frequencyCode_B_FRQ, AppCache.GetTableData("T23", new string[] { "G", "ITM", "FR" }, new string[] { "T23COD", "T23DSCL" }));
        DisableComboBox(new HtmlSelect[] { stockCode_B_SC, frequencyCode_B_FRQ });
    }

    protected void page_postSendKeys(object sender, GXPostSendKeyEventArgs e)
    {
        RemoveSystemMessageFromScreen();
    }

}