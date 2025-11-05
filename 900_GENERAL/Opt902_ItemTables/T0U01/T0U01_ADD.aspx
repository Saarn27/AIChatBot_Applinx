<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD.aspx.cs" Inherits="T0U01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">GENERAL TABLE OF ITEMS </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="related-fields-area">
                <gal-input label-size="medium2" label-text="Type - General:" input-size="xxsmall" no-description>
                    <input id="typeGeneral_ATYP" runat="server" />
                </gal-input>
                <gal-input label-size="medium2" label-text="Subject code:" input-size="xxsmall" no-description>
                    <input id="subjectCode_ACOD" runat="server" />
                </gal-input>
                <gal-input label-size="medium2" label-text="Short description:" input-size="large" no-description>
                    <input id="shortDescription_ASDS" runat="server" />
                </gal-input>
                <gal-input label-size="medium2" label-text="Long description:" input-size="xxlarge" no-description>
                    <input id="longDescription_ADSC" runat="server" />
                </gal-input>
                <gal-input label-size="medium2" label-text="Short description-Local:" input-size="large" no-description>
                    <input id="shortDescLocal_ASDSL" runat="server" />
                </gal-input>
                <gal-input label-size="medium2" label-text="Long description-Local:" input-size="xxlarge" no-description>
                    <input id="longDescLocal_ADSCL" runat="server" />
                </gal-input>
                <gal-input label-size="medium2" label-text="System code:" input-size="xxsmall,xxsmall" no-description>
                    <input id="imcCode_AIMC" runat="server" />
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="I=system"></span>
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMessage_MSG1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
            </div>
        </div>
    </div>
</asp:Content>
