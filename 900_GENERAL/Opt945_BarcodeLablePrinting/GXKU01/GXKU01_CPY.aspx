<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXKU01_CPY.aspx.cs" Inherits="GXKU01_CPY" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">BARCODE LABEL</h1>
        <span class="sub-headline blue-headline" id="Quantity" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Label type:" label-size="small" input-size="large2">
                        <input id="LabelType_LBL" runat="server">
                        <input id="LabelTypedes_LBLDSC" runat="server">
                    </gal-input>
                    <gal-input label-text="Item number:" label-size="small" input-size="xlarge">
                        <input id="ItemNumber_ITEM8" runat="server">
                        <input id="ItemNumberdes_ITEMDSC" runat="server">
                    </gal-input>
                    <div class="line"></div>
                    <gal-input label-text="Copies:" label-size="small" input-size="xsmall" no-description>
                        <input id="Copies_QTY2" runat="server">
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Confirm</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>


</script>
</asp:Content>
