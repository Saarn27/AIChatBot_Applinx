using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for instant
/// </summary>
public partial class GHQ03_DSP : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
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
            CreateToolBar(hostKeysToolbar);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "entityLine_E_GHTLINE", "reasonCode_E_GHTRSN", "sendMessageYesNo_E_GHTMSG" }, hiddenField, true, true);
        DisableComboBox(new HtmlSelect[] { holdStatus_E_GHTSTS, holdCode_E_GHTFHLD });
    }
}