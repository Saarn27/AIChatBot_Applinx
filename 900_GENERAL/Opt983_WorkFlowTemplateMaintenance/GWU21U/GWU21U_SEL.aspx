<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWU21U_SEL.aspx.cs" Inherits="GWU21U_SEL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">WORKFLOW - MASSIVE USER UPDATE</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="sub-headline">
                <span>From</span>
            </div>
            <gal-input label-size="small" label-text="User type :" input-size="medium" no-description>
                <select id="userTypeFrom_FUSRTYP" runat="server" />
            </gal-input>
            <gal-input-help label-size="small" input-size="xlarge" dynamic-label>
                <input id="titleTypeFrom_TYPEF" runat="server" />
                <input id="fromUserCode_FUSR" runat="server" />
                <input id="fromUserName_FUSRD" runat="server" />
            </gal-input-help>
            <div class="line"></div>
            <div class="sub-headline">
                <span>To</span>
            </div>
            <gal-input label-size="small" label-text="User type :" input-size="medium" no-description>
                <select id="userTypeTo_TUSRTYP" runat="server" />
            </gal-input>

            <gal-input-help label-size="small" input-size="xlarge" dynamic-label>
                <input id="titleTypeTo_TYPET" runat="server" />
                <input id="toUserCode_TUSR" runat="server" />
                <input id="toUserName_TUSRD" runat="server" />
            </gal-input-help>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
    </div>
</asp:Content>
