<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U05_B_ADD.aspx.cs" Inherits="T2U05_B_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Title_B_HEADER" runat="server"></h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="sub-headline blue-headline"><span>Keys</span></div>
            <div class="column-form related-fields-area" style="margin-bottom: 5px">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input-help label-text="Warehouse:" label-size="large" input-size="large">
                            <input id="Warehouse_B_WHS" runat="server">
                            <input id="Warehousedes_B_WHSD" runat="server">
                        </gal-input-help>
                        <gal-input-help label-text="Father warehouse:" label-size="auto" input-size="large">
                            <input id="FatherWhs_B_FWHS" runat="server">
                            <input id="FatherWhsdes_B_FWHSD" runat="server">
                        </gal-input-help>
                    </div>
                    <gal-input label-text="Frequency:" label-size="large" input-size="medium" no-description>
                        <select id="Frequency_B_FRQ" runat="server"></select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="Occurrence - 6 month:" label-size="large" input-size="xxsmall" no-description>
                            <select id="Occur6mnt_B_OCCURX" runat="server">
                                <option value=""></option>
                                <option value="<"><</option>
                                <option value=">">>=</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="" label-size="auto" input-size="xsmall" no-description>
                            <input id="Occur6mnt_B_OCCUR" runat="server">
                        </gal-input>
                    </div>
                    <gal-input-help label-text="Product group:" label-size="large" input-size="large">
                        <input id="ProductGroup_B_GRP" runat="server">
                        <input id="ProductGroupdes_B_GRPD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Line:" label-size="large" input-size="large">
                        <input id="Line_B_LINE" runat="server">
                        <input id="Linedes_B_LINED" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Manufacture:" label-size="large" input-size="large">
                        <input id="Manufacture_B_MFG" runat="server">
                        <input id="Manufacturedes_B_MFGD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Brand:" label-size="large" input-size="large">
                        <input id="Brand_B_BRAND" runat="server">
                        <input id="Branddes_B_BRANDD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Vendor:" label-size="large" input-size="large">
                        <input id="Vendor_B_VEND" runat="server">
                        <input id="Vendordes_B_VENDD" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="sub-headline blue-headline"><span>Data</span></div>
            <div class="column-form related-fields-area" style="margin-bottom: 5px">
                <div class="spaced-column">
                    <gal-input label-text="Sequence:" label-size="large" input-size="small" no-description>
                        <input id="Sequence_B_SEQ" runat="server">
                    </gal-input>
                    <gal-input label-text="Recommended stock code :" label-size="large" input-size="medium" no-description>
                        <select id="RecommededSc_B_SC" runat="server"></select>
                    </gal-input>
                    <gal-input label-text="Remark:" label-size="large" input-size="xlarge" no-description>
                        <input id="Remark_B_REMARK" runat="server">
                    </gal-input>
                </div>
            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 5px">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-text="Update Date:" label-size="large" input-size="small2" no-description>
                            <input id="UpdateDate_B_T2TUPD" runat="server" galtype="date" dateformat="ddmmyy">
                        </gal-input>
                        <gal-input label-text="Update User:" label-size="auto" input-size="large">
                            <input id="UpdateUser_B_T2USRU" runat="server">
                            <input id="UpdateUserdes_B_T2USRUD" runat="server">
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
        var F6_add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F6_add").innerText.trim() == "";
        var F6_add_Btn = document.getElementById("F10_addBtn");
        if (F6_add_isHidden) {
            F6_add_Btn.style.display = "none"
        }

        const TitleText = document.querySelector("#ctl00_GXPagePlaceHolder_Title_B_HEADER")
        console.log(TitleText.innerText)
        //console.log(F6_add_Btn.innerText)
        if (TitleText.innerText === "UPDATE") {
            F6_add_Btn.innerText = "Update"
        }


    </script>
</asp:Content>
