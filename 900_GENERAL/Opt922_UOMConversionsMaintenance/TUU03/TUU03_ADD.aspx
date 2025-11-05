<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TUU03_ADD.aspx.cs" Inherits="TUU03_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">SPECIAL</h1>
        <span style="font-size: 17px; font-weight: 600;">UOM </span>
        <h1 class="headline">MAINTENANCE </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input-help label-size="medium" label-text="Source UOM:" input-size="large">
                    <input id="SourceUom_SRC" runat="server">
                    <input id="sourceUOM_SRCD" runat="server">
                </gal-input-help>
                <gal-input-help label-size="medium" label-text="Destination UOM:" input-size="large">
                    <input id="DestinationUom_DST" runat="server">
                    <input id="destinUOM_DSTD" runat="server">
                </gal-input-help>
                <gal-input label-size="medium" label-text="Factor:" input-size="large" no-description>
                    <input id="Factor" runat="server">
                </gal-input>
                <gal-input label-size="medium" label-text="System code:" input-size="xxsmall" no-description>
                    <select id="Imc_IMC" runat="server">
                        <option value=""></option>
                        <option value="I">I</option>
                    </select>
                </gal-input>
                <gal-input label-size="medium" label-text="Last updated by:" input-size="small,small" no-description>
                    <input id="LastUpdatedBy_AUPDDAT" runat="server">
                    <input id="lastUpdated_AUPDDAT" runat="server">
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMsg_EARA1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
