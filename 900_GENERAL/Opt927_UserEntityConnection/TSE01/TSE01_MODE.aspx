<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSE01_MODE.aspx.cs" Inherits="TSE01_MODE" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">USER & ENTITY CONNECTION </h1>
        <span class="sub-headline blue-headline" id="MODE" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">

        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="Entity type 1:" label-size="medium" input-size="large">
                        <input id="B_GSSYS" runat="server">
                        <input id="B_GSSYS_D" runat="server">
                    </gal-input-help>

                    <gal-input-help label-size="medium" input-size="xlarge" dynamic-label>
                        <input id="B_ENTITY1" runat="server">
                        <input id="B_GSKEYA" runat="server">
                        <input id="B_GSKEYA_D" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="Entity type 2:" label-size="medium" input-size="large">
                        <input id="B_GSCODA" runat="server">
                        <input id="B_GSCODA_D" runat="server">
                    </gal-input-help>
                    <gal-input-help label-size="medium" input-size="xlarge" dynamic-label>
                        <input id="B_ENTITY2" runat="server">
                        <input id="B_GSVALA2" runat="server">
                        <input id="B_GSVALA2D" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="User:" label-size="medium" input-size="xlarge">
                        <input id="B_GSVALA1" runat="server">
                        <input id="B_GSVALA1D" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Roll:" label-size="medium" input-size="large" no-description>
                        <select id="B_GSSBJ" runat="server"></select>
                    </gal-input>
                    <gal-input-help label-text="Alternative User 1:" label-size="medium" input-size="xlarge">
                        <input id="ALT_USER1" runat="server">
                        <input id="ALTUSR1DSC" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Alternative User 2:" label-size="medium" input-size="xlarge">
                        <input id="ALT_USER2" runat="server">
                        <input id="ALTUSR2DSC" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">

                    <gal-input label-text="Update user:" label-size="medium" input-size="xlarge">
                        <input id="B_GSUSRU" runat="server">
                        <input id="B_GSUSRU_D" runat="server">
                    </gal-input>
                    <gal-input label-text="Update date:" label-size="medium" input-size="small2" no-description>
                        <input id="B_GSTUPD" runat="server" galtype="date" dateformat="dd/mm/yy">
                    </gal-input>
                </div>
            </div>

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="MSG2" runat="server"></span>
                <button id="F10AddBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"></button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
        <span id="F10Add" runat="server" style="display: none;"></span>
        <script>
            let btn_final = document.getElementById("F10AddBtn");
            let title = document.querySelector("#ctl00_GXPagePlaceHolder_MODE");
            switch (title.innerHTML.trim()) {
                case ("ADD"):
                    btn_final.innerText = "Add";
                    break;
                case ("UPDATE"):
                    btn_final.innerText = "Update";
                    break;
                default:
                    btn_final.style.display = "none";
            }
        </script>
</asp:Content>
