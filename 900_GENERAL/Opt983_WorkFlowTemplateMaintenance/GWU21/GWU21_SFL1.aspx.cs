using com.sabratec.applinx.baseobject;
using System;

public partial class GWU21_SFL1 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar,new string[] { "add" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
       
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
        addHeaderRow(workFlowDefinitionMaintenence_SFL1);
        RemoveOptions();
    }
    private void RemoveOptions()
    {
        int tableLength = workFlowDefinitionMaintenence_SFL1.Rows.Count;
        for (int i = 2; i < tableLength; i++)
        {

            bool optionIsHidden = !gx_session.getScreen(new GXGetScreenRequest()).getFieldInstance("opt_OPT1", i - 2).isUnderlined();

            if (optionIsHidden)
            {
                workFlowDefinitionMaintenence_SFL1.Rows[i].Cells[0].Controls.Clear();
            }
        }

    }
}