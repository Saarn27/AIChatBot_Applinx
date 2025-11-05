<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U03_B_ADD.aspx.cs" Inherits="T2U03_B_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="title_B_HEADER" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="wrapper-container">
                <div class="sub-headline blue-headline"><span>Keys</span></div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px;">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input-help input-size="small" label-size="small" label-text="Vendor/Factory:" no-description>
                                <input id="vendorCode_B_VEND" runat="server" />
                            </gal-input-help>
                            <gal-input-help label-text="/" label-size="auto" input-size="large">
                                <input id="factoryCode_B_FAC" runat="server" />
                                <input id="vendorCode_B_VEND_D" runat="server" />
                            </gal-input-help>
                        </div>
                        <gal-input-help input-size="large" label-size="small" label-text="Product group:">
                            <input id="productGroupCode_B_GRP" runat="server" />
                            <input id="productGroupDesc_B_GRP_D" runat="server" />
                        </gal-input-help>
                        <gal-input-help input-size="large" label-size="small" label-text="Line:">
                            <input id="lineCode_B_LINE" runat="server" />
                            <input id="lineDesc_B_LINE_D" runat="server" />
                        </gal-input-help>
                        <gal-input-help input-size="large" label-size="small" label-text="Warehouse:">
                            <input id="warehouseCode_B_WHS" runat="server" />
                            <input id="warehouseDesc_B_WHS_D" runat="server" />
                        </gal-input-help>
                        <gal-input-help input-size="large" label-size="small" label-text="Manufacture:">
                            <input id="manufactureCode_B_MFG" runat="server" />
                            <input id="manufactureDesc_B_MFG_D" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="large2" label-size="small" label-text="Stock code:" no-description>
                            <select id="stockCode_B_SC" runat="server"></select>
                        </gal-input>
                        <gal-input input-size="large" label-size="small" label-text="Frequency:" no-description>
                            <select id="frequencyCode_B_FRQ" runat="server"></select>
                        </gal-input>
                    </div>
                </div>
                <div class="sub-headline blue-headline"><span>Data</span></div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px;">
                    <div class="spaced-column">
                        <gal-input label-size="small" input-size="small" label-text="Sequence:" no-description>
                            <input id="sequence_B_SEQ" runat="server" />
                        </gal-input>
                        <div class="centered-flex">
                            <div class="centered-flex">
                                <gal-input label-size="small" input-size="xsmall" label-text="Blanks shift:" no-description>
                                    <input id="blanksShift_B_BLANKS" runat="server" />
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Weeks"></span>
                            </div>
                            <div class="centered-flex">
                                <gal-input label-size="medium" input-size="small" label-text="Forecast shift:" no-description style="margin-left: 10px">
                                    <input id="forecastShiftCode_B_FORCST" runat="server" />
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Weeks, 0.1 = 0 weeks"></span>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <div class="centered-flex">
                                <gal-input label-size="small" input-size="xsmall" label-text="Minimum:" no-description>
                                    <input id="minimum_B_MIN" runat="server" />
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Weeks, '-' = empty"></span>
                            </div>
                            <div class="centered-flex">
                                <gal-input label-size="medium" input-size="xsmall" label-text="Minimum balance:" no-description style="margin-left:10px">
                                    <input id="minBalance_B_MINB" runat="server" />
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Weeks"></span>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <div class="centered-flex">
                                <gal-input label-size="small" input-size="xsmall" label-text="Maximum:" no-description>
                                    <input id="maximum_B_MAX" runat="server" />
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Weeks, '-' = empty"></span>
                            </div>
                            <gal-input label-size="medium" input-size="xsmall" label-text="Offset:" no-description style="margin-left:10px">
                                <input id="offset_B_OFFSET" runat="server" />
                            </gal-input>
                        </div>
                        <gal-input label-size="small" input-size="xlarge" label-text="Remark:" no-description>
                            <input id="remark_B_REMARK" runat="server" />
                        </gal-input>
                        <div class="centered-flex">
                            <gal-input label-size="small" input-size="small2" label-text="Update date:" no-description>
                                <input id="updateDate_B_T2TUPD" runat="server" galtype="date" dateformat="ddmmyy" />
                            </gal-input>
                            <gal-input-help input-size="large" label-size="small" label-text="Update user:">
                                <input id="updateUser_B_T2USRU" runat="server" />
                                <input id="updateUserName_B_T2USRU_D" runat="server" />
                            </gal-input-help>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_B_msg" runat="server"></span>
                    <button id="f10Btn" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        if (document.querySelector("#ctl00_GXPagePlaceHolder_title_B_HEADER").innerText === "UPDATE") {
            document.querySelector("#f10Btn").innerText = "Update";
        }

    </script>

</asp:Content>
