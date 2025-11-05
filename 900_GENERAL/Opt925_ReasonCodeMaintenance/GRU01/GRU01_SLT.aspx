<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GRU01_SLT.aspx.cs" Inherits="GRU01_SLT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">REASON ENTRY </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" style="min-height: 300px">
            <gal-input label-text="Reason subject:" input-size="large" label-size="small2" no-description>
                <select id="ReasonSubject_COD" runat="server"></select>
            </gal-input>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('enter');">Continue</button>
        </div>
    </div>
</asp:Content>
