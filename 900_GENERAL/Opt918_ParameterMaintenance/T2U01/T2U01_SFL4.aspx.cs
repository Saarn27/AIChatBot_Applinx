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


public partial class T2U01_SFL4 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add","next" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        if (col1_SEL1 != null)
        {
            ToggleIndicatorField(new string[] { "col1_SEL1" }, hiddenField, true, true);
        }

    }

    private string[][] getSupplierDescFromCC(string SupplierNumber)
    {
        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);
        string sqlStmt = String.Format("SELECT CNME FROM GALF6{0}.CC WHERE CUST = {1}", currentUserDetails.Company, SupplierNumber);
        string[] parameters = new string[] { };
        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        return result;
    }

    protected void page_postFillForm(object sender, EventArgs e)
    {
        int tableLength = T2U01_SFL4_1.Rows.Count;
        string Title = gx_session.getScreen(ScreenRequest).getFieldContent("title_TITLE", 0).Trim();
        string Th1 = gx_session.getScreen(ScreenRequest).getFieldContent("col1_T1", 0).Trim();
        string Td1 = gx_session.getScreen(ScreenRequest).getFieldContent("Supplier_K1", 0).Trim();

        string modifiedTitle = Title.Split(',')[0].Trim();

        if (Th1 == "SUPPLIER" && modifiedTitle == "TYPE: TARIFF")
        {
            for (int i = 1; i < T2U01_SFL4_1.Rows.Count; i++)
            {
                string supplierNumber = gx_session.getScreen(ScreenRequest).getFieldContent("Supplier_K1", i - 1).Trim();
                string[][] descResult = getSupplierDescFromCC(supplierNumber);

                if (descResult.Length > 0 && descResult[0].Length > 0)
                {
                    string description = descResult[0][0];
                    T2U01_SFL4_1.Rows[i].Cells[2].Controls.Add(new LiteralControl(description));
                }
            }
        }
        else
        {
            for (int i = 0; i < tableLength; i++)
            {
                T2U01_SFL4_1.Rows[i].Cells.RemoveAt(2);
            }
        }

        for (int num = tableLength - 2; num >= 0; num--)
        {
            string SupplierText = gx_session.getScreen(ScreenRequest).getFieldContent("Supplier_K1", num).Trim();
            string DescriptionText = gx_session.getScreen(ScreenRequest).getFieldContent("Description_DESCL", num).Trim();
            if (string.IsNullOrEmpty(SupplierText) && string.IsNullOrEmpty(DescriptionText))
            {
                T2U01_SFL4_1.Rows.RemoveAt(num + 1);
            }
        }

    }


}