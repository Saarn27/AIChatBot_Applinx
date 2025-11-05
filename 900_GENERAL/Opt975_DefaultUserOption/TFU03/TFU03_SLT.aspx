<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU03_SLT.aspx.cs" Inherits="TFU03_SLT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Default Fields Per Option</h1>
            </div>
            <div class="related-fields-area">
                <gal-input-help label-text="Option:" label-size="medium" input-size="xlarge">
                    <input id="option_OPTION" runat="server" />
                    <input id="optionDescription_OPTIOND" runat="server" />
                </gal-input-help>

                <gal-input-help label-text="Program name:" label-size="medium" input-size="xlarge" no-description>
                    <input id="programName_PGM_NAME" runat="server" />
                </gal-input-help>

                <gal-input-help label-text="System:" label-size="medium" input-size="xlarge">
                    <input id="system_SYS" runat="server" />
                    <input id="systemDescription_SYSD" runat="server" />
                </gal-input-help>
                <div class="centered-flex">
                    <gal-input-help label-size="medium" input-size="xlarge" dynamic-label>
                        <input id="userGroupTitle" runat="server" />
                        <input id="userGroup_USR" runat="server" />
                        <input id="userGroupName_NME" runat="server" />
                    </gal-input-help>
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Default user for system option - YYYYYYYYYY"></span>
                </div>
            </div>
            <div class="message-container  message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG_SLT" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>

    </div>


</asp:Content>
