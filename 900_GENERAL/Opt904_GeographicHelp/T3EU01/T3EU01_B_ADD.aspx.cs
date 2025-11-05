
using System;
using System.Threading.Tasks;
using System.Web.UI.HtmlControls;
using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using com.sabratec.util;


public partial class T3EU01_B_ADD : GalLogicWebForm
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
        FillComboBox(Industry_IND_FLD, AppCache.GetTableData("T3", new string[] { "I" }));
        DisableComboBox(new HtmlSelect[] { Industry_IND_FLD, SystemCode_SYSCOD_FLD });
    }

}