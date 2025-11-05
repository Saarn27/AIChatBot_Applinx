using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using System;
using System.Web.UI.HtmlControls;

public partial class TRU10_SFL1 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(remarkSubject_SUBJ, AppCache.GetTableData("T23", new string[] { "G", "GEN", "C" }));
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        string str1 = gx_session.getScreen(new GXGetScreenRequest()).getFieldContent("remarkSubject_SUBJ", 0);
        remarkSubject_SUBJ.Value = str1;

        for (int rowIndex = 1; rowIndex < generalRemarkTable_SFL1.Rows.Count; rowIndex++)
        {
            string remarkText = ((HtmlInputText)generalRemarkTable_SFL1.Rows[rowIndex].Cells[2].Controls[1]).Value;
            if (remarkText.Contains("<"))
            {
                remarkText = remarkText.Replace("<", "(");
            }
            if (remarkText.Contains(">"))
            {
                remarkText = remarkText.Replace(">", ")");
            }
            ((HtmlInputText)generalRemarkTable_SFL1.Rows[rowIndex].Cells[2].Controls[1]).Value = remarkText;
        }
    }
}