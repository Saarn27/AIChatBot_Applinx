<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="CRTU02_SCR1.aspx.cs" Inherits="CRTU02_SCR1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">Managing Links</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">

        <div class="main-area-form main-area-form-modal">

            <gal-input label-text="Record Type:" label-size="small" input-size="medium" no-description>
                <select id="recordType_RECTYP" runat="server"></select>
            </gal-input>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
    </div>

</asp:Content>
