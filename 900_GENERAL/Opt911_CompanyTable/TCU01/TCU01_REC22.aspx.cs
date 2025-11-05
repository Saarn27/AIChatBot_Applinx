using com.sabratec.applinx.baseobject;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TCU01_REC22 : GalLogicWebForm
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
            CreateToolBar(hostKeysToolbar, new string[] { "update", "addfld" });
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        ToggleIndicatorField(new string[] { "NAME33", "NAME34", "NAME35", "NAME36", "NAME37", "NAME39", "NAME40", "NAME41", "NAME42", "NAME43", "NAME44", "NAME45",
                                            "VAL33","VAL34","VAL35","VAL36","VAL37","VAL39","VAL40","VAL41","VAL42","VAL43","VAL44","VAL45",
                                            "LEN_1", "LEN_2", "LEN_3", "LEN_4", "LEN_5", "LEN_6", "LEN_7", "LEN_8", "LEN_9", "LEN_10", "LEN_11", "LEN_12"}, hiddenField, true, false, true);

    }
}