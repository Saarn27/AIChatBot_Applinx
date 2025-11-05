<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_CNF" CodeFile="TWU01_CNF.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">MASSIVE MULTI COMPANY UPDATE</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG" style="overflow: inherit !important;">
        <div class="main-area-form main-area-form-modal">
            <label>This action will massively update the file TW.</label><br />
            <label>Are you sure?</label>
        </div>
        <div class="modal-bottom">
            <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[Enter]');" data-bs-dismiss="modal">Continue</button>
        </div>
    </div>
</asp:Content>
