using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;


public partial class FER02_SLT : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
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
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "print" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(ExpenseType_EXPT1, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT2, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT3, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT4, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT5, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT6, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT7, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT8, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT9, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));
        FillComboBox(ExpenseType_EXPT10, AppCache.GetTableData("T23", new string[] { "F", "GEN", "EXT" }));

        DisableComboBox(new HtmlSelect[] { ExpenseType_EXPT1, ExpenseType_EXPT2, ExpenseType_EXPT3, ExpenseType_EXPT4, ExpenseType_EXPT5, ExpenseType_EXPT6, ExpenseType_EXPT7, ExpenseType_EXPT8, ExpenseType_EXPT9, ExpenseType_EXPT10 });

    }
    protected void page_postFillForm(object sender, EventArgs e)
    { }


}