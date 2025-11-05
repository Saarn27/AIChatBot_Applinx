using com.sabratec.dotnet.framework.events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for instant
/// </summary>
public partial class GHQ03W_SFL0 : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
    
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_postFillForm(object sender, EventArgs e)
    {
      HtmlTableRow totalsRow = this.GetTotalsRow(new string[] { "", "Total", "", "totalRecords_TOTREC" });
    GHQ03W_SFL0_1.Rows.Add(totalsRow); 
    }


}