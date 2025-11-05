using System;
using System.Web.UI.HtmlControls;

public partial class OWT3_SFL : GalLogicWebForm
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {

        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        if (gx_session.getScreen().getFieldContent("col3Label_KOT1", 0).Trim() == "")
        {
            col3Src_SEL3.Style.Add("display", "none");
            OWT3_SFL_1.Rows[1].Cells[3].Style.Add("display", "none");
            OWT3_SFL_1.Rows[0].Cells[3].Style.Add("display", "none");
        }
        if (gx_session.getScreen().getFieldContent("col4Label_KOT1", 0).Trim() == "")
        {
            col4Src_SEL4.Style.Add("display", "none");
            OWT3_SFL_1.Rows[1].Cells[4].Style.Add("display", "none");
            OWT3_SFL_1.Rows[0].Cells[4].Style.Add("display", "none");
        }
        if (gx_session.getScreen().getFieldInstance("actionBar", 0).isVisible() == false)
        {
            OWT3_SFL_1.Rows[1].Cells[0].Style.Add("display", "none");
            OWT3_SFL_1.Rows[0].Cells[0].Style.Add("display", "none");
        }
    }
}