<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U06_B_ADD.aspx.cs" Inherits="T2U06_B_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="title_B_HEADER" runat="server"></h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="sub-headline blue-headline"><span>Keys</span></div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="Warehouse:" label-size="medium" input-size="large">
                        <input id="warehouseCode_B_WHS" runat="server">
                        <input id="warehouseDesc_B_WHS_D" runat="server">
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input-help label-text="Vendor:" label-size="medium" input-size="large">
                            <input id="vendorCode_B_VEND" runat="server">
                            <input id="vendorDesc_B_VEND_D" runat="server">
                        </gal-input-help>
                        <gal-input-help label-text="Class:" label-size="xsmall" input-size="large">
                            <input id="classCode_B_CLASS" runat="server">
                            <input id="classDesc_B_CLASS_D" runat="server">
                        </gal-input-help>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-text="Product group:" label-size="medium" input-size="large">
                            <input id="productGroupCode_B_GRP" runat="server">
                            <input id="productGroupDesc_B_GRP_D" runat="server">
                        </gal-input-help>
                        <gal-input-help label-text="Line:" label-size="xsmall" input-size="large">
                            <input id="lineCode_B_LINE" runat="server">
                            <input id="lineDesc_B_LINE_D" runat="server">
                        </gal-input-help>
                    </div>
                    <gal-input-help label-text="Brand:" label-size="medium" input-size="large">
                        <input id="brandCode_B_BRAND" runat="server">
                        <input id="brandDesc_B_BRAND_D" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Stock code:" label-size="medium" input-size="large2" no-description>
                        <select id="StockCode_B_SC" runat="server"></select>
                    </gal-input>
                    <gal-input-help label-text="Item number:" label-size="medium" input-size="large">
                        <input id="itemNumber_B_ITEM" runat="server">
                        <input id="itemNumberDesc_B_ITEM_D" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="sub-headline blue-headline"><span>Data</span></div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Sequence:" label-size="medium" input-size="small" no-description>
                        <input id="sequence_B_SEQ" runat="server">
                    </gal-input>
                    <gal-input-help label-text="Father warehouse:" label-size="medium" input-size="large">
                        <input id="fatherWhsCode_B_FWHS" runat="server">
                        <input id="fatherWhsDesc_B_FWHS_D" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Vendor warehouse:" label-size="medium" input-size="large">
                        <input id="vendorWhsCode_B_VEND2" runat="server">
                        <input id="vendorWhs_B_VEND2_D" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Remark:" label-size="medium" input-size="xlarge" no-description>
                        <input id="remark_B_REMARK" runat="server">
                    </gal-input>
                    <gal-input label-text="Exclude warehouse:" label-size="medium" input-size="medium" no-description>
                        <gx:GXCheckBox ID="excludeWhs_B_EXCLUDE" CheckedValue="Y" UncheckedValue="" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-text="Update Date:" label-size="medium" input-size="small2" no-description>
                            <input id="updateDate_B_T2TUPD" runat="server" galtype="date" dateformat="ddmmyy">
                        </gal-input>
                        <gal-input label-text="Update User:" label-size="auto" input-size="large">
                            <input id="updateUser_B_T2USRU" runat="server">
                            <input id="updateUserName_B_T2USRU_D" runat="server">
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_B_MSG" runat="server"></span>
                <button id="F10_addBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10_add" runat="server" style="display: none;"></span>
    <script>
        var F10_add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10_add").innerText.trim() == "";
        var F10_add_Btn = document.getElementById("F10_addBtn");
        if (F10_add_isHidden) {
            F10_add_Btn.style.display = "none"
        }

        if (document.querySelector("#ctl00_GXPagePlaceHolder_title_B_HEADER").innerText === "UPDATE") {
            F10_add_Btn.innerText = "Update"
        }


    </script>
</asp:Content>
