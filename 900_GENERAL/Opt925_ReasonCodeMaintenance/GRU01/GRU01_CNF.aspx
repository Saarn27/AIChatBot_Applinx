<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GRU01_CNF.aspx.cs" Inherits="GRU01_CNF" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">MASSIVE MULTY COMPANY UPDATE </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <span>This action will massively update the file GR Are you sure?</span>

        </div>
        <div class="modal-bottom">
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
        </div>
    </div>
</asp:Content>

