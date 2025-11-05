<%@ Page MasterPageFile="~/template.master" Inherits="TSU03_OAUT" CodeFile="TSU03_OAUT.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline">AUTHORITY CODES</h1>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <span>0=Not Authorized</span>
        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>

</asp:Content>
