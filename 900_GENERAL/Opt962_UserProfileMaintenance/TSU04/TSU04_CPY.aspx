<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU04_CPY.aspx.cs" Inherits="TSU04_CPY" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">COPY USER </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-size="large" input-size="medium" label-text="From default company:">
                        <input id="FromDftCompany_CMPD" runat="server" />
                        <input id="Xx_CMPDDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="medium" label-text="From user type:">
                        <input id="FromUserType_FTYP" runat="server" />
                        <input id="U_FTYPD" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="medium" label-text="From user:" no-description>
                        <input id="FromUser_FUSR" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="column-form related-fields-area">
                <div class="spaced-column">
                    <gal-input label-size="large" input-size="medium" label-text="To user type:" no-description>
                        <select id="ToUserType_TTYP" runat="server"></select>
                    </gal-input>
                    <gal-input label-size="large" input-size="medium" label-text="To user:" no-description>
                        <input id="ToUser_TUSR" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="xlarge" label-text="User name:" no-description>
                        <input id="UserName_TNME" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="medium" label-text="Option:" no-description>
                            <gx:GXCheckBox ID="Option_OPTCP" runat="server" UncheckedValue="" CheckedValue="Y" />
                        </gal-input>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Include all authorities"></span>
                    </div>
                    <gal-input label-size="large" input-size="medium" label-text="Current user profile cmd:" no-description>
                        <gx:GXCheckBox ID="CrtusrprfCmd_CRTPRFCPY" runat="server" UncheckedValue="" CheckedValue="Y" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="MSG3" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Copy</button>
            </div>
        </div>

    </div>
</asp:Content>
