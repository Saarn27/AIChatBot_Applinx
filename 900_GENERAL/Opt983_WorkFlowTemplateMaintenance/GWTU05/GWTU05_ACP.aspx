<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU05_ACP.aspx.cs" Inherits="GWTU05_ACP" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">DELETE CONFIRMATION </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <gal-input label-text="Are you sure to delete the line? " label-size="xlarge" input-size="xxsmall" no-description>
                <%--<input id="AreYouSureToDeleteTheLine_YN" runat="server" />--%>
                <gx:GXCheckBox ID="AreYouSureToDeleteTheLine_YN" CheckedValue="Y" UncheckedValue="N" runat="server" />
            </gal-input>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSGA" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Accept</button>
        </div>
    </div>
</asp:Content>
