using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI.HtmlControls;

public partial class OWTSG_SFL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e){}
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "next","add", "create"}, null, true);
            ToggleIndicatorField(new string[] { "jobDescHeader" }, hiddenField, true);
            FillComboBox(typeSel_STR1, AppCache.GetTableData("T23", new string[] { "G", "GEN", "USC" }));
            //ToggleIndicatorField(new string[] { "F6Add" }, hiddenField, true);
            //CreateToolBar(hostKeysToolbar);

        }
        catch (Exception error)
        {
            Console.Write(error);
        }

        if (gx_session.getScreen().getFieldContent("jobDescHeader", 0).Trim() == "")
        {
            jobDescHeader.Style.Add("display", "none");
            OWTSG_SFL_1.Rows[1].Cells[5].Style.Add("display", "none");
            OWTSG_SFL_1.Rows[0].Cells[5].Style.Add("display", "none");
        }
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        // Occurs after gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        //addHeaderRow(FGU01_SFL1_1);
    }
  
    
}