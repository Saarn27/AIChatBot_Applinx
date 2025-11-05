<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_CNF.aspx.cs" Inherits="T0U01_CNF" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">MASSIVE MULTY COMPANY UPDATE</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="related-fields-area">
                <h6>This action will massively update the file T0.</h6>
                <h6>Are you sure?</h6>
            </div>
            <div style="display: flex; justify-content: flex-end; margin-top: 10px; gap: 10px">
                <button type="button" class="btn btn-secondary btn-galweb big-button" onclick="gx_SubmitKey('[pf12]');">Cancel</button>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
            </div>
        </div>
    </div>
</asp:Content>
