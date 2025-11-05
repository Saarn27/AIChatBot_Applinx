<%@ Page MasterPageFile="~/template.master" Inherits="TNU01_ADD" CodeFile="TNU01_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline">Numerator Table Maintaince</h1>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input label-text="System code:" label-size="medium" input-size="large" no-description>
                    <select id="systemCode_SYS" runat="server" />
                </gal-input>
                <gal-input label-text="System application:" label-size="medium" input-size="large" no-description>
                    <select id="systemApplication_SYSAPPC" runat="server" />
                </gal-input>
                <gal-input label-text="System code:" label-size="medium" input-size="xxsmall" no-description>
                    <gx:GXCheckBox ID="systemCode_IMC" CheckedValue="I" UncheckedValue="" runat="server" />
                </gal-input>
                <span class="line"></span>
                <gal-input label-text="Numerator code:" label-size="medium" input-size="xxsmall" no-description>
                    <input id="numeratorCode_COD" runat="server" />
                </gal-input>
                <gal-input label-text="Check related file:" label-size="medium" input-size="xxsmall" no-description>
                    <gx:GXCheckBox ID="checkRelatedFile_B_TNDA02" CheckedValue="Y" UncheckedValue="" runat="server" />
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Y=Yes"></span>
                </gal-input>
                <span class="line"></span>
                <gal-input label-text="Description:" label-size="medium" input-size="xlarge" no-description>
                    <input id="descriptdon_ADSC" runat="server" />
                </gal-input>
                <div class="centered-flex">
                    <gal-input label-text="Numerator value:" label-size="medium" input-size="small2" no-description>
                        <input id="numeratorValue_NUM" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" input-size="xxsmall" no-description dynamic-label>
                        <input id="endPrefix_LABEL" runat="server" />
                        <input id="endPrefix_TNDA01" runat="server" />
                    </gal-input>
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="A-Z"></span>
                </div>
                <gal-input label-size="medium" input-size="medium" no-description dynamic-label>
                    <input id="toNumeratorValue_label" runat="server" />
                    <input id="toNumerator_TONUM" runat="server" />
                </gal-input>
                <span class="line"></span>
                <gal-input label-size="medium" input-size="small" no-description dynamic-label>
                    <input id="lastOpen_LABEL" runat="server" />
                    <input id="lastOpen_LSTOPN" runat="server" />
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                <button id="btn_F10" runat="server" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[PF10]');">Update / Add</button>
            </div>
        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
