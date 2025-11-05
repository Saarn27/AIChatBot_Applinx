<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXKU01_MOVE_LIN.aspx.cs" Inherits="GXKU01_MOVE_LIN" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Massive Update</h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Printer type:" label-size="small" input-size="medium" no-description>
                        <select id="PrinterType_PRT_TYP" runat="server"></select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="From line:" label-size="small" input-size="xsmall" no-description>
                            <input id="FromLine_FROM_LINE" runat="server">
                        </gal-input>
                        <gal-input label-text="To line:" label-size="auto" input-size="xsmall" no-description>
                            <input id="ToLine_TO_LINE" runat="server">
                        </gal-input>
                    </div>
                    <div class="sub-headline blue-headline"><span>Top to bottom</span></div>
                    <div class="centered-flex">
                        <gal-input input-size="medium" no-description>
                            <gx:GXCheckBox ID="TtoBInc_UP" CheckedValue="1" UncheckedValue="" runat="server" />
                        </gal-input>
                        <gal-input label-text="Increment:" label-size="auto" input-size="xsmall" no-description>
                            <input id="TtoBIncrement_UP_NUM" runat="server">
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input input-size="medium" no-description>
                            <gx:GXCheckBox ID="TtoBRedu_DOWN" CheckedValue="1" UncheckedValue="" runat="server" />
                        </gal-input>
                        <gal-input label-text="Reduction:" label-size="auto" input-size="xsmall" no-description>
                            <input id="TtoBReduction_DOWN_NUM" runat="server">
                        </gal-input>
                    </div>
                    <div class="sub-headline blue-headline"><span>Start position</span></div>
                    <div class="centered-flex">
                        <gal-input input-size="medium" no-description>
                            <gx:GXCheckBox ID="SPInc_RIGHT" CheckedValue="1" UncheckedValue="" runat="server" />
                        </gal-input>
                        <gal-input label-text="Increment:" label-size="auto" input-size="xsmall" no-description>
                            <input id="SPIncrement_RIGHT_NUM" runat="server">
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input input-size="medium" no-description>
                            <gx:GXCheckBox ID="SPRedu_LEFT" CheckedValue="1" UncheckedValue="" runat="server" />
                        </gal-input>
                        <gal-input label-text="Reduction:" label-size="auto" input-size="xsmall" no-description>
                            <input id="SPReduction_LEFT_NUM" runat="server">
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG3" runat="server"></span>
                <button id="F10_updateBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10_update" runat="server" style="display: none;"></span>
    <script>
        var F10_update_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10_update").innerText.trim() == "";
        var F10_update_Btn = document.getElementById("F10_updateBtn");
        if (F10_update_isHidden) {
            F10_update_Btn.style.display = "none"
        }



</script>
</asp:Content>
