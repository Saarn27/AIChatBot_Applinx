<%@ Page MasterPageFile="~/template.master" Inherits="TWVU01_B_MAIL" CodeFile="TWVU01_B_MAIL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="header" runat="server"></h1>
        <span class="separating-line">|</span>
        <span id="mode" class="headline blue-headline"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input label-text="Mail address - From" label-size="medium" input-size="xxlarge" no-description>
                    <input id="MailAddressFrom_B_TWVEMFR" input-size="small" runat="server" />
                </gal-input>
                <div class="line"></div>
                <gal-input label-text="Mail address - To" label-size="medium" input-size="xxlarge" no-description>
                    <input id="MailAddressTo_B_TWVEMTO" input-size="small" runat="server" />
                </gal-input>
                <gal-input label-text="Mail address - To" label-size="medium" input-size="xxlarge" no-description>
                    <input id="MailAddressTo_B_TWVEMTO1" input-size="small" runat="server" />
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        var header = document.getElementById("ctl00_GXPagePlaceHolder_header");
        var headerArr = header.innerText.split('-');
        var mode = document.getElementById("mode");
        header.innerText = headerArr[0];
        mode.innerText = headerArr[1];
    </script>
</asp:Content>
