using com.sabratec.applinx.baseobject;
using com.sabratec.util;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

public partial class T2U01_ADD3 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update", "add", "copy" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
    }

    protected void page_postFillForm(object sender, EventArgs e)
    {
        string subHeadline = gx_session.getScreen(ScreenRequest).getFieldContent("type", 0);
        int table1Length = FakeTable1.Rows.Count;
        int table2Length = FakeTable2.Rows.Count;
        Debug.WriteLine(table1Length);
        Debug.WriteLine(table2Length);
        Dictionary<string, Tuple<string, string>> Table1IdsList = new Dictionary<string, Tuple<string, string>>() {
            { "keysType1_DSC1", Tuple.Create("code_C1","description_D1") },
            { "keysType2_DSC2", Tuple.Create("code_C2","description_D2") },
            { "keysType3_DSC3", Tuple.Create("code_C3","description_D3") },
            { "keysType4_DSC4", Tuple.Create("code_C4","description_D4") },
            { "keysType5_DSC5", Tuple.Create("code_C5","description_D5") },
            { "keysType6_DSC6", Tuple.Create("code_C6","description_D6") }
        };

        Dictionary<string, Tuple<string, string>> Table2IdsList = new Dictionary<string, Tuple<string, string>>() {
            { "description_DATA1", Tuple.Create("value_VAL1","typeData_TDD1") },
            { "description_DATA2", Tuple.Create("value_VAL2","typeData_TDD2") },
            { "description_DATA3", Tuple.Create("value_VAL3","typeData_TDD3") },
            { "description_DATA4", Tuple.Create("value_VAL4","typeData_TDD4") },
            { "description_DATA5", Tuple.Create("value_VAL5","typeData_TDD5") },
            { "description_DATA6", Tuple.Create("value_VAL6","typeData_TDD6") },
            { "description_DATA7", Tuple.Create("value_VAL7","typeData_TDD7") },
            { "description_DATA8", Tuple.Create("value_VAL8","typeData_TDD8") },
            { "description_DATA9", Tuple.Create("value_VAL9","typeData_TDD9") },
            { "description_DATA10",Tuple.Create("value_VAL10","typeData_TDD10") }
        };

        //Debug.WriteLine(Table1IdsList.ElementAt(0));

        for (int i = Table1IdsList.Count - 1; i >= 0; i--)
        {
            var TargetedItem = Table1IdsList.ElementAt(i);
            string text1 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Key, 0);
            string text2 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Value.Item1, 0);
            string text3 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Value.Item2, 0);
            if (String.IsNullOrEmpty(text1) && String.IsNullOrEmpty(text2) && String.IsNullOrEmpty(text3))
            {
                FakeTable1.Rows.RemoveAt(i + 1);
            }
        }

        for (int i = Table2IdsList.Count - 1; i >= 0; i--)
        {
            var TargetedItem = Table2IdsList.ElementAt(i);
            string text1 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Key, 0);
            string text2 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Value.Item1, 0);
            string text3 = gx_session.getScreen(ScreenRequest).getFieldContent(TargetedItem.Value.Item2, 0);
            if (String.IsNullOrEmpty(text1) && String.IsNullOrEmpty(text2) && String.IsNullOrEmpty(text3))
            {
                FakeTable2.Rows.RemoveAt(i + 1);
            }
        }

    }

}