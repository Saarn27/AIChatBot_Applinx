using com.sabratec.applinx.baseobject;
using System;
using System.Web.UI.HtmlControls;

public partial class TSLQ03_SFL1 : GalLogicWebForm
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
        // Occurs before gx_fillForm() or gx_fillForm(GXScreensCollection screen)
        try
        {
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "userName_USER" }, hiddenField, true, true);

    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        removeLastColumn();
    }
    protected void removeLastColumn()
    {
        bool isEmpty = (gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("userCode_USER", 0).getContent().Trim() == "") &&
            (gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("userCode_USER", 1).getContent().Trim() == "") && (!gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("titleUserToCheck", 0).isUnderlined());
        if (isEmpty)
        {
            for (var i = 0; i < optionNotUserTable_SFL1.Rows.Count; i++)
            {
                optionNotUserTable_SFL1.Rows[i].Cells[4].Style.Add("display", "none");
            }
        }
    }
}