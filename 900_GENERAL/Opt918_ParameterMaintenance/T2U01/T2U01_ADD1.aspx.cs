using com.sabratec.applinx.baseobject;
using com.sabratec.util;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class T2U01_ADD1 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update" ,"add","copy"});
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        DisableComboBox(new HtmlSelect[] { imcSysCode_AIMC, typeCodeTable2_TYPD01, typeCodeTable2_TYPD02, typeCodeTable2_TYPD03 , typeCodeTable2_TYPD04 , typeCodeTable2_TYPD05 , typeCodeTable2_TYPD06 , typeCodeTable2_TYPD07 , typeCodeTable2_TYPD08 , typeCodeTable2_TYPD09 , typeCodeTable2_TYPD010 });
    }

    protected void page_postFillForm(object sender, EventArgs e)
    {
        string subHeadline = gx_session.getScreen(ScreenRequest).getFieldContent("type",0);
        int table1Length = FakeTable1.Rows.Count;
        int table2Length = FakeTable2.Rows.Count;
        //Debug.WriteLine(table1Length);
        //Debug.WriteLine(table2Length);
        Dictionary<string, string> Table1IdsList = new Dictionary<string, string>() { 
            { "code_COD1", "desc_DSC1" },
            { "code_COD2", "desc_DSC2" },
            { "code_COD3", "desc_DSC3" },
            { "code_COD4", "desc_DSC4" },
            { "code_COD5", "desc_DSC5" },
            { "code_COD6", "desc_DSC6" }
        };

        Dictionary<string, string> Table2IdsList = new Dictionary<string, string>() {
            { "descriptionTable2_DATA1", "typeCodeTable2_TYPD01" },
            { "descriptionTable2_DATA2", "typeCodeTable2_TYPD02" },
            { "descriptionTable2_DATA3", "typeCodeTable2_TYPD03" },
            { "descriptionTable2_DATA4", "typeCodeTable2_TYPD04" },
            { "descriptionTable2_DATA5", "typeCodeTable2_TYPD05" },
            { "descriptionTable2_DATA6", "typeCodeTable2_TYPD06" },
            { "descriptionTable2_DATA7", "typeCodeTable2_TYPD07" },
            { "descriptionTable2_DATA8", "typeCodeTable2_TYPD08" },
            { "descriptionTable2_DATA9", "typeCodeTable2_TYPD09" },
            { "descriptionTable2_DATA10", "typeCodeTable2_TYPD010" }
        };

        //Debug.WriteLine(Table1IdsList.ElementAt(0));

        if (subHeadline == "DISPLAY")
        {
            for (int i = Table1IdsList.Count - 1; i >= 0; i--)
            {
                var TargetedItem = Table1IdsList.ElementAt(i);
                string text1 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Key, 0);
                string text2 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Value, 0);
                if (String.IsNullOrEmpty(text1) && String.IsNullOrEmpty(text2))
                {
                    FakeTable1.Rows.RemoveAt(i + 1);
                }
            }

            for (int i = Table2IdsList.Count - 1; i >= 0; i--)
            {
                var TargetedItem = Table2IdsList.ElementAt(i);
                string text1 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Key, 0);
                string text2 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Value, 0);
                if (String.IsNullOrEmpty(text1) && String.IsNullOrEmpty(text2))
                {
                    FakeTable2.Rows.RemoveAt(i + 1);
                }
            }

        }
    }

}