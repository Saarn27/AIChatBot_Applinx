using com.sabratec.applinx.baseobject;
using com.sabratec.util;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class T2U01_SFL3 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "add", "next" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        if (col1_SEL1 != null)
        {
            ToggleIndicatorField(new string[] { "col1_SEL1" }, hiddenField, true, true);
        }
        if (col2_SEL2 != null)
        {
            ToggleIndicatorField(new string[] { "col2_SEL2" }, hiddenField, true, true);
        }
        if (col3_SEL3 != null)
        {
            ToggleIndicatorField(new string[] { "col3_SEL3" }, hiddenField, true, true);
        }
        if (col4_SEL4 != null)
        {
            ToggleIndicatorField(new string[] { "col4_SEL4" }, hiddenField, true, true);
        }
        if (col5_SEL5 != null)
        {
            ToggleIndicatorField(new string[] { "col5_SEL5" }, hiddenField, true, true);
        }
        if (col6_SEL6 != null)
        {
            ToggleIndicatorField(new string[] { "col6_SEL6" }, hiddenField, true, true);
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
        int tableLength = T2U01_SFL3_1.Rows.Count;
        string Title = gx_session.getScreen(ScreenRequest).getFieldContent("title_TITLE", 0).Trim();
        string Th1 = gx_session.getScreen(ScreenRequest).getFieldContent("col1_T1", 0).Trim();
        GXIField Th1Color = gx_session.getScreen(ScreenRequest).getFieldInstance("col1_T1", 0);
        string Th2 = gx_session.getScreen(ScreenRequest).getFieldContent("col2_T2", 0).Trim();
        GXIField Th2Color = gx_session.getScreen(ScreenRequest).getFieldInstance("col2_T2", 0);
        string Th3 = gx_session.getScreen(ScreenRequest).getFieldContent("col3_T3", 0).Trim();
        GXIField Th3Color = gx_session.getScreen(ScreenRequest).getFieldInstance("col3_T3", 0);
        string Th4 = gx_session.getScreen(ScreenRequest).getFieldContent("col4_T4", 0).Trim();
        GXIField Th4Color = gx_session.getScreen(ScreenRequest).getFieldInstance("col4_T4", 0);
        string Th5 = gx_session.getScreen(ScreenRequest).getFieldContent("col5_T5", 0).Trim();
        GXIField Th5Color = gx_session.getScreen(ScreenRequest).getFieldInstance("col5_T5", 0);
        string Th6 = gx_session.getScreen(ScreenRequest).getFieldContent("col6_T6", 0).Trim();
        GXIField Th6Color = gx_session.getScreen(ScreenRequest).getFieldInstance("col6_T6", 0);

        string Td1 = gx_session.getScreen(ScreenRequest).getFieldContent("data1_K1", 0).Trim();
        string Td2 = gx_session.getScreen(ScreenRequest).getFieldContent("data2_K2", 0).Trim();
        string Td3 = gx_session.getScreen(ScreenRequest).getFieldContent("data3_K3", 0).Trim();
        string Td4 = gx_session.getScreen(ScreenRequest).getFieldContent("data4_K4", 0).Trim();
        string Td5 = gx_session.getScreen(ScreenRequest).getFieldContent("data5_K5", 0).Trim();
        string Td6 = gx_session.getScreen(ScreenRequest).getFieldContent("data6_K6", 0).Trim();

        //Debug.WriteLine(Th1Color.getFGColor().GetType());
        //Debug.WriteLine(Th2Color.getFGColor());

        string modifiedTitle = Title.Split(',')[0].Trim();

        if (Th1 == "SUPPLIER" && modifiedTitle == "TYPE: TARIFF")
        {
            for (int i = 1; i < T2U01_SFL3_1.Rows.Count; i++)
            {
                string supplierNumber = gx_session.getScreen(ScreenRequest).getFieldContent("data1_K1", i - 1).Trim();
                string[][] descResult = getSupplierDescFromCC(supplierNumber);

                if (descResult.Length > 0 && descResult[0].Length > 0)
                {
                    string description = descResult[0][0];
                    T2U01_SFL3_1.Rows[i].Cells[2].Controls.Add(new LiteralControl(description));
                }
            }
        } 
        else
        {
            for (int i = 0; i < tableLength; i++)
            {
                T2U01_SFL3_1.Rows[i].Cells.RemoveAt(2);
            }
        }
        if (Th1 == "SUPPLIER" && modifiedTitle == "TYPE: TARIFF")
        {
            var thList = new[] { Th6, Th5, Th4, Th3, Th2 };
            var tdList = new[] { Td6, Td5, Td4, Td3, Td2 };
            var colorList = new[] { Th6Color, Th5Color, Th4Color, Th3Color, Th2Color };
            var columnIndexes = new[] { 7, 6, 5, 4, 3 };

            for (int j = 0; j < thList.Length; j++)
            {
                if ((string.IsNullOrEmpty(thList[j]) && string.IsNullOrEmpty(tdList[j])) || colorList[j].getFGColor() == 10)
                {
                    for (int i = 0; i < tableLength; i++)
                    {
                        T2U01_SFL3_1.Rows[i].Cells.RemoveAt(columnIndexes[j]);
                    }
                }
            }
        }
        else
        {
            var thList = new[] { Th6, Th5, Th4, Th3, Th2 };
            var tdList = new[] { Td6, Td5, Td4, Td3, Td2 };
            var colorList = new[] { Th6Color, Th5Color, Th4Color, Th3Color, Th2Color };
            var columnIndexes = new[] { 6, 5, 4, 3, 2 };

            for (int j = 0; j < thList.Length; j++)
            {
                if ((string.IsNullOrEmpty(thList[j]) && string.IsNullOrEmpty(tdList[j])) || colorList[j].getFGColor() == 10)
                {
                    for (int i = 0; i < tableLength; i++)
                    {
                        T2U01_SFL3_1.Rows[i].Cells.RemoveAt(columnIndexes[j]);
                    }
                }
            }
        }




    }

}