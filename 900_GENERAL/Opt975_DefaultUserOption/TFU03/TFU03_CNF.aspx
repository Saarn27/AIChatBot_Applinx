<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU03_CNF.aspx.cs" Inherits="TFU03_CNF" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Massive Multy Company Update</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form-modal main-area-form ">
            <span>This action will massively update the file TF.</span>
            <span>Are you sure?</span>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
        </div>
    </div>

</asp:Content>
