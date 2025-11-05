<%@ Page MasterPageFile="~/template.master" Inherits="TRU01_SLT" CodeFile="TRU01_SLT.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">REMARKS ENTRY </h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="large" label-text="Company / System :" input-size="large" no-description>
                        <select id="companyOrSystem_CMP" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" label-text="Remark subject :" input-size="large" no-description>
                        <select id="remarkSubjectCode_COD" runat="server" onchange="gx_SubmitKey('[enter]')" />
                    </gal-input>
                    <gal-input-help label-size="large" input-size="large" dynamic-label no-description>
                        <input id="remarkDiscription_DSC" runat="server" />
                        <input id="remarkKey_KEYA" runat="server" />
                    </gal-input-help>
                </div>
            </div>

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
