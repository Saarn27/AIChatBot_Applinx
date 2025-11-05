using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GWU26I_SEL : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar,new string[] { "continue" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "UserRoleType_SUSRT", "UserRoleTypeCode_SGFUSR", "UserRoleTypeName_SGFUSRN" }, hiddenField, true, false, false);
        ToggleIndicatorField(new string[] { "itemNumberFrom_SICAT", "itemNumberTo_SICATTO", "projectNumber_SPROJECT" }, hiddenField, true, true);


        FillComboBox(itemGroup1_SIGRP1, AppCache.GetTableData("T0", new string[] { "G" }));
        FillComboBox(itemGroup2_SIGRP2, AppCache.GetTableData("T0", new string[] { "G" }));
        FillComboBox(itemGroup3_SIGRP3, AppCache.GetTableData("T0", new string[] { "G" }));
        FillComboBox(itemGroup4_SIGRP4, AppCache.GetTableData("T0", new string[] { "G" }));
        FillComboBox(itemGroup5_SIGRP5, AppCache.GetTableData("T0", new string[] { "G" }));

        FillComboBox(itemApplication1_SIAPP1, AppCache.GetTableData("T0", new string[] { "A" }));
        FillComboBox(itemApplication2_SIAPP2, AppCache.GetTableData("T0", new string[] { "A" }));
        FillComboBox(itemApplication3_SIAPP3, AppCache.GetTableData("T0", new string[] { "A" }));
        FillComboBox(itemApplication4_SIAPP4, AppCache.GetTableData("T0", new string[] { "A" }));
        FillComboBox(itemApplication5_SIAPP5, AppCache.GetTableData("T0", new string[] { "A" }));

        FillComboBox(lineNumberYN_SILIN1, AppCache.GetTableData("T0", new string[] { "L" }));
        FillComboBox(lineNumberYN_SILIN2, AppCache.GetTableData("T0", new string[] { "L" }));
        FillComboBox(lineNumberYN_SILIN3, AppCache.GetTableData("T0", new string[] { "L" }));

        FillComboBox(stockCode_SICS1, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CS" }));
        FillComboBox(stockCode_SICS2, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CS" }));
        FillComboBox(stockCode_SICS3, AppCache.GetTableData("T23", new string[] { "G", "ITM", "CS" }));

        FillComboBox(manufOrPurch_SIC1, AppCache.GetTableData("T23", new string[] { "G", "ITM", "TPM" }));
        FillComboBox(familyGroup_SFAM, AppCache.GetTableData("T0", new string[] { "F" }));
        AppendIconKeyToToolbar(hostKeysToolbar, "", "default");
    }

}