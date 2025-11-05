<%@ Page MasterPageFile="~/template.master" Inherits="TSU03_CNFRM" CodeFile="TSU03_CNFRM.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline" runat="server">ATTENTION</h1>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <span id="text_TXT1" runat="server"></span>
                <span id="text_TXT2" runat="server"></span>
                <input id="option_CNF" runat="server" style="display: none" />
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="cancel-btn" class="btn btn-light btn-white big-button" onclick="gx_SubmitKey('[pf12]');">No</button>
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="document.getElementById('ctl00_GXPagePlaceHolder_option_CNF').value='Y';gx_SubmitKey('[pf10]');">Yes</button>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
