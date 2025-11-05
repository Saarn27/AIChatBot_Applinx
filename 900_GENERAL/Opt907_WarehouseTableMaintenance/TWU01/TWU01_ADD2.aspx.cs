using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class TWU01_ADD2 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
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
            CreateToolBar(hostKeysToolbar, new string[] { "add","more data", "update" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(fullAverageUsage_TWDA11, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TWC" }));
        FillComboBox(allocationReport_WHFREP, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TWA" }));
        FillComboBox(cmsSendWhsType_TWDA15, AppCache.GetTableData("T23", new string[] { "G", "STD", "CWH" }));
        FillComboBox(forceCoo_FCOO, AppCache.GetTableData("T3", new string[] {"C"}));
        FillComboBox(connectWhs_TWDA162, AppCache.GetTableData("TW", new string[] { }));
        FillComboBox(connectOper_DA714, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TWE" }));
        FillComboBox(carbideIssue_DA706, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TWB" }));
        FillComboBox(blockIntercompany_DA709, AppCache.GetTableData("T23", new string[] { "G", "HLP", "TWD" }));
        DisableComboBox(new HtmlSelect[] { fullAverageUsage_TWDA11, slipRlsControl_RELEAS, allocationReport_WHFREP, cmsSendWhsType_TWDA15, forceCoo_FCOO, connectWhs_TWDA162, connectOper_DA714, stkForDelivery_DA701, carbideIssue_DA706,blockIntercompany_DA709, commercialItemCtl_DA710, exceptionWhs_DA702 });

    }
}