using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TCU01_REC2 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update","addfld" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(SYS, AppCache.GetTableData("T23", new string[] { "X", "SYS", "SYS" }));

        ToggleIndicatorField(new string[] { "VAL20", "VAL21", "VAL22", "VAL11", "VAL12", "VAL13", "VAL29", "VAL32", "VAL17", "VAL18", "VAL19", "VAL23", "VAL24", "VAL25", "VAL1",
                                            "len1_1","len1_2","len1_3","len1_4","len1_5","len1_6","len1_7","len1_8","len1_9","len1_10","len1_11","len1_12","len1_13","len1_14","len1_15",
                                            "VAL2", "VAL3", "VAL4", "VAL5", "VAL14", "VAL15", "VAL16", "VAL6", "VAL7", "VAL8", "VAL9", "val10", "VAL26", "VAL27", "val28",
                                            "len2_1", "len2_2", "len2_3", "len2_4", "len2_5", "len2_6", "len2_7", "len2_8", "len2_9", "len2_10", "len2_11", "len2_12", "len2_13", "len2_14", "len2_15"}, hiddenField, true, false, false);
        ToggleIndicatorField(new string[] { "NAME30", "NAME31" }, hiddenField, true, false, false);
        ToggleIndicatorField(new string[] { "NAME20", "NAME21", "NAME22", "NAME11", "NAME12", "NAME13", "NAME29", "NAME32", "NAME17", "NAME18", "NAME19", "NAME23", "NAME24", "NAME25", "NAME1",
                                            "NAME2", "NAME3", "NAME4", "NAME5", "NAME14", "NAME15", "NAME16", "NAME6", "NAME7", "NAME8", "NAME9", "NAME10", "NAME26", "NAME27", "NAME28"}, hiddenField, true, true, true);


    }
}