using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class GWU21_SFLSEQ : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "check logic" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "sequenceInput_SEQS" }, hiddenField, true);
    }

    protected void page_postFillForm(object sender, EventArgs e)
    {
        int rowsCount = workFlowMaintenanceTable_SFLSEQ.Rows.Count;

        for (int rowIndex = 1; rowIndex < rowsCount; rowIndex++)
        {
            bool UserInput = gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("userNameCode_USERS", rowIndex - 1).isProtected();
            if (UserInput)
                workFlowMaintenanceTable_SFLSEQ.Rows[rowIndex].Cells[1].Style.Add("background-color", "var(--BackgroundWhite) !important");
        }
    }

}