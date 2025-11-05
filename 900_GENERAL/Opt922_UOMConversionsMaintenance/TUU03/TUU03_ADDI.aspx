<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TUU03_ADDI.aspx.cs" Inherits="TUU03_ADDI" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">SPECIAL</h1>
        <span class="headline no-title-case">UOM </span>
        <h1 class="headline">MAINTENANCE </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form related-fields-area">
                <div class="spaced-column">
                    <gal-input-help label-text="Item:" label-size="medium" input-size="xlarge2">
                        <input id="Item_ITM" runat="server">
                        <input id="Item_ITMD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Vendor:" label-size="medium" input-size="large">
                        <input id="Vendor_IVND" runat="server">
                        <input id="Vendor_IVNDD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Source UOM:" label-size="medium" input-size="large">
                        <input id="SourceUom_ISRC" runat="server">
                        <input id="sourceUOM_ISRCD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Destination UOM:" label-size="medium" input-size="large">
                        <input id="DestinationUom_IDST" runat="server">
                        <input id="DesUOM_IDSTD" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Factor:" label-size="medium" input-size="large" no-description>
                        <input id="Factor_IFCT" runat="server">
                    </gal-input>
                    <gal-input label-text="System Code:" label-size="medium" input-size="xxsmall" no-description>
                        <select id="Imc_IMC" runat="server">
                            <option value=""></option>
                            <option value="I">I</option>
                        </select>
                    </gal-input>
                    <gal-input label-text="Last updated by:" label-size="medium" input-size="small2" no-description>
                        <input id="LastUpdatedBy_AUPDUSR" runat="server">
                    </gal-input>
                    <gal-input label-text="Last updated:" label-size="medium" input-size="small" no-description>
                        <input id="lastUpdDate_AUPDDAT" runat="server" galtype="date" dateformat="ddmmy">
                    </gal-input>
                    <input id="hiddenField" runat="server" style="display: none;" />
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMsg_EARA1" runat="server"></span>
                <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update / Add</button>
            </div>
        </div>
    </div>
</asp:Content>
