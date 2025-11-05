<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_APPROVE" CodeFile="GWU26_APPROVE.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">APPROVE CONFIRMATION</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
         <%--   <gal-input label-text=" " input-size="xxlarge" no-description>
                <label>Are you sure that you want to approve ? </label>
            </gal-input>--%>
                <div class="column-form">
                <div class="spaced-column">
                    <div>
                        <span>Are you sure that you want to approve?</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
        </div>
       <%-- <div class="message-container" style="margin-top:0px;">
            <span class="invalid-feedback" id="msg_DCLMSG" runat="server"></span>
        </div>--%>
    </div>
</asp:Content>
