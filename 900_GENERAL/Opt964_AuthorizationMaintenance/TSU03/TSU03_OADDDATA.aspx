<%@ Page MasterPageFile="~/template.master" Inherits="TSU03_OADDDATA" CodeFile="TSU03_OADDDATA.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline" runat="server">ADITIONAL DATA</h1>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form">

            <div class="column-form">
                <div class="spaced-column">
                    
                        <span style="margin-left: 15px;">Will be returned by the authority program "OTS" as an optional</span>
                    <br />
                    <span style="margin-left: 100px;">PLEASE WAIT...</span>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
