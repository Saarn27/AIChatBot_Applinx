<%@ Page MasterPageFile="~/template.master" Inherits="GTU01_REASON" CodeFile="GTU01_REASON.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">CLOSE REASON</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <gal-input label-size="small" label-text="Close reason:" input-size="large" no-description>
                <select id="closeReason_CLSREASON" runat="server"></select>
            </gal-input>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSGW" runat="server"></span>
                <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');" data-bs-dismiss="modal">Confirm</button>
            </div>
        </div>
    </div>
</asp:Content>
