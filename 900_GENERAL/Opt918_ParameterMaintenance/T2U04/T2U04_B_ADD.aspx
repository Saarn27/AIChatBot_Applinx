<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U04_B_ADD.aspx.cs" Inherits="T2U04_B_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="title_B_HEADER" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="wrapper-container">
                <div class="sub-headline blue-headline"><span>Keys</span></div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input-help input-size="large" label-size="small" label-text="Vendor:">
                            <input id="vendorCode_B_VEND" runat="server" />
                            <input id="vendorCode_B_VEND_D" runat="server" />
                        </gal-input-help>
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
                        <div class="centered-flex">
                            <gal-input input-size="large" label-size="small" label-text="Frequency:" no-description>
                                <select id="frequencyCode_B_FRQ" runat="server"></select>
                            </gal-input>
                            <gal-input label-size="auto" input-size="xxsmall" label-text="Week:" no-description>
                                <input id="week_B_WEEK" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                </div>
                <div class="sub-headline blue-headline"><span>Data</span></div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-size="small" input-size="small" label-text="Sequence:" no-description>
                                <input id="sequence_B_SEQ" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-size="small" input-size="small" label-text="Working Days:" no-description>
                                <input id="workingDays_B_WORK" runat="server" />
                            </gal-input>
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="x.xxxx % Factor,  '-' = Empty"></span>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-size="small" input-size="small" label-text="Selling Days:" no-description style="margin-left: 0px">
                                <input id="sellingDays_B_SELL" runat="server" />
                            </gal-input>
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="x.xxxx % Factor,  '-' = Empty"></span>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-size="small" input-size="small" label-text="Budget Days:" no-description style="margin-left: 0px">
                                <input id="budgetDays_B_BUDGET" runat="server" />
                            </gal-input>
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="x.xxxx % Factor,  '-' = Empty"></span>
                        </div>
                    </div>
                </div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 5px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-size="small" input-size="small2" label-text="Update Date:" no-description>
                                <input id="updateDate_B_T2TUPD" runat="server" galtype="date" dateformat="ddmmyy" />
                            </gal-input>
                            <gal-input-help input-size="large" label-size="small" label-text="Update User:">
                                <input id="updateUser_B_T2USRU" runat="server" />
                                <input id="updateUserName_B_T2USRU_D" runat="server" />
                            </gal-input-help>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_B_msg" runat="server"></span>
                    <button id="F10_addBtn" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <span id="f10Btn" runat="server" style="display: none;"></span>
    <script>
        var F10_add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_f10Btn").innerText.trim() == "";
        var F10_add_Btn = document.getElementById("F10_addBtn");
        if (F10_add_isHidden) {
            F10_add_Btn.style.display = "none"
        }

        if (document.querySelector("#ctl00_GXPagePlaceHolder_title_B_HEADER").innerText === "UPDATE") {
            F10_add_Btn.innerText = "Update"
        }
    </script>
</asp:Content>
