<%@ Page MasterPageFile="~/template.master" Inherits="TWVU01_B_AUC" CodeFile="TWVU01_B_AUC.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content ">
            <div class="headline-container">
                <h1 class="headline" id="title" runat="server"></h1>
                <span class="sub-headline blue-headline" style="text-transform: capitalize" id="subHead"></span>
            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 1600px">
                <div class="spaced-column">
                    <gal-input-help input-size="xlarge" label-size="medium" label-text="Customer:">
                        <input id="Cust_B_TWVCUST" runat="server" />
                        <input id="CustDesc_B_CNME1" runat="server" />
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input input-size="medium" label-size="medium" label-text="Site id:" no-description>
                            <input id="SiteId_B_TWVSITE" runat="server" />
                        </gal-input>
                        <gal-input input-size="xsmall" label-size="auto" style="margin-left: auto" label-text="Crib number:" no-description>
                            <input id="cribNum_B_TWVCRIB" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input-help input-size="xlarge" label-size="medium" label-text="Warehouse:">
                        <input id="whs_B_TWVWHS" runat="server" />
                        <input id="whsDesc_B_TWDSC" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="xlarge" label-size="medium" label-text="From stock room:">
                        <input id="fsr_B_TWVFWHS" runat="server" />
                        <input id="fsrDesc_B_TWDSC_F" runat="server" />
                    </gal-input-help>
                </div>
                <div class="spaced-column">
                    <gal-input input-size="large" label-size="medium" label-text="Vending:" no-description>
                        <select id="Vending_B_TWVVTYP" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Consignment:" no-description>
                        <select id="Consignment_B_TWVCONS" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Scan item number:" no-description>
                        <select id="ScanItemNo_B_TWVSCN" runat="server" />
                    </gal-input>

                </div>
                <div class="spaced-column" style="margin-left: 100px">
                    <gal-input input-size="small" label-size="large" label-text="Send as quotation:" no-description>
                        <gx:GXCheckBox ID="SendAsQuotation_B_TWVQUT" CheckedValue="Y" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Yes"></span>
                    </gal-input>
                    <gal-input input-size="small" label-size="large" label-text="Promotion price / discount:" no-description>
                        <gx:GXCheckBox ID="PromotionPriceDiscount_B_TWVPRMO" CheckedValue="N" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = No"></span>
                    </gal-input>
                    <gal-input input-size="small" label-size="large" label-text="Quotation file type:" no-description>
                        <select id="QuotationFileType_B_TWVQUTT" runat="server">
                            <option value=""></option>
                            <option value="E">Excel</option>
                            <option value="P">PDF</option>
                        </select>
                    </gal-input>
                    <gal-input input-size="medium" label-size="large" label-text="Sort by:" no-description>
                        <select id="SortByOrderTypeD_B_TWVSORT" runat="server" />
                    </gal-input>
                </div>
            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 1600px">
                <div class="spaced-column">
                    <gal-input input-size="xlarge" label-size="medium" label-text="Invoice frequency:" no-description>
                        <select id="InvFrequency_B_TWVINVF" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="medium" label-text="Controlled invoice:" no-description>
                        <select id="ControlledInv_B_TWVINVW" runat="server" />
                    </gal-input>

                    <gal-input input-size="xlarge" label-size="medium" label-text="Open order for:" no-description>
                        <select id="OpenOrderFor_B_TWVOPNP" runat="server">
                            <option value=""></option>
                            <option value="P">Purchase</option>
                            <option value="M">Manufacture</option>
                        </select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input input-size="medium" label-size="medium" label-text="Drop shipment:" no-description>
                            <gx:GXCheckBox ID="DropShipment_B_TWVDS" CheckedValue="D" UncheckedValue="" runat="server" />
                            <%--<span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Drop shipment"></span>--%>
                        </gal-input>
                        <gal-input input-size="medium" label-size="auto" style="margin-left: auto" label-text="P.O Order type:" no-description>
                            <select id="OrderType_B_TWVOPNPT" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input input-size="xlarge" label-size="medium" label-text="Shipping method:" no-description>
                        <select id="ShippingMethod_B_TWVSPC" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input input-size="small" label-size="medium" label-text="Go live date:" no-description>
                            <input id="GoLiveDate_B_TWVTGL" runat="server" galtype="date" dateformat="ddmmy" />
                        </gal-input>
                        <gal-input-help input-size="small" label-size="auto" label-text="Asset number:" style="margin-left: auto" no-description>
                            <input id="VendingSequenceAsset_B_TWVSEQ" runat="server" />
                        </gal-input-help>
                    </div>
                    <div class="centered-flex">
                        <gal-input input-size="medium2" label-size="medium" label-text="Cost value S.C:">
                            <input id="CostValueSC_B_TWVCOD15" runat="server" />
                            <input id="costvalDesc_B_FTCDSC" runat="server" />
                        </gal-input>
                        <gal-input input-size="xxsmall" label-size="auto" label-text="Fix asset:" style="margin-left: auto" no-description>
                            <gx:GXCheckBox ID="FixAsset_B_TWVCOD11" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="spaced-column">
                    <gal-input input-size="large" label-size="medium" label-text="Price source:" no-description>
                        <select id="PriceSource_B_TWVPRCU" runat="server">
                            <option value=""></option>
                            <option value="V">From vending</option>
                        </select>
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="medium" label-text="Match code:" no-description>
                        <input id="MatchCode_B_TWVMATCH" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input input-size="xsmall" label-size="medium" label-text="Stock event:" no-description>
                            <select id="stockEvent_B_TWVCOD8" runat="server">
                                <option value=""></option>
                                <option value="Y">Save</option>
                            </select>
                        </gal-input>
                        <gal-input input-size="xsmall" label-size="small" label-text="Stock check:" no-description>
                            <select id="stockCheck_B_TWVCWQ" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="I">Info</option>
                            </select>
                        </gal-input>
                    </div>
                        <gal-input input-size="small2" label-size="medium" label-text="Order type:" no-description>
                            <select id="OrderType_B_TWVCOD13" runat="server">
                                <option value=""></option>
                                <option value="R">Regular</option>
                                <option value="W">To warehouse</option>
                            </select>
                        </gal-input>                    
                    <gal-input input-size="large" label-size="medium" label-text="Local option:" no-description>
                        <select id="LocalOption_B_TWVOPT" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Owner:" no-description>
                        <select id="Owner_B_TWVOWN" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Format:" no-description>
                        <select id="Format_B_TWVFMT" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column" style="margin-left: 100px">
                    <gal-input input-size="xxsmall" label-size="large" label-text="Omit min/max quantity:" no-description>
                        <gx:GXCheckBox ID="OmitMinimumMaximumQty_B_TWVOMM" CheckedValue="Y" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Yes"></span>
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="large" label-text="Omit average usage:" no-description>
                        <gx:GXCheckBox ID="OmitAverageUsage_B_TWVOAVE1" CheckedValue="Y" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Yes"></span>
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="large" label-text="Omit stock lvl frequency:" no-description>
                        <gx:GXCheckBox ID="OmitStockLvlFrequency_B_TWVOFRQ" CheckedValue="Y" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Yes"></span>
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="large" label-text="Consolidate order items:" no-description>
                        <gx:GXCheckBox ID="ConsolidateOrderItems_B_TWVCOD3" CheckedValue="Y" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Yes"></span>
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="large" label-text="Consolidate issue items:" no-description>
                        <gx:GXCheckBox ID="ConsolidateIssueItems_B_TWVCOD6" CheckedValue="N" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = No"></span>
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="large" label-text="Automatic book:" no-description>
                        <gx:GXCheckBox ID="automaticBook_B_TWVAB" CheckedValue="Y" UncheckedValue="" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Yes"></span>
                    </gal-input>

                </div>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <div class="column-form related-fields-area" style="width: 1600px">
                        <div class="spaced-column">
                            <gal-input-help input-size="xlarge" label-size="medium" label-text="Ship to address:">
                                <input id="ShipToAddress_B_TWVADDNS" runat="server" />
                                <input id="ShipToAddressDesc_B_C1NME_S" runat="server" />
                            </gal-input-help>
                            <gal-input input-size="xlarge" label-size="medium" label-text="Shipping P.O:" no-description>
                                <input id="ShippingPO_B_TWVCPO" runat="server" />
                            </gal-input>
                            <gal-input input-size="xlarge" label-size="medium" label-text="Hardware model:" no-description>
                                <input id="HardwareModel_B_TWVCOD9" runat="server" />
                            </gal-input>
                            <gal-input input-size="xxsmall" label-size="large" label-text="Vending ship address (1):" no-description>
                                <gx:GXCheckBox ID="VendingShipAddress1_B_TWVADS1" CheckedValue="Y" UncheckedValue="" runat="server" />
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Checked = Yes"></span>
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input-help input-size="xlarge" label-size="medium" label-text="Bill to address:">
                                <input id="BillToAddress_B_TWVADDNB" runat="server" />
                                <input id="BillToAddressDesc_B_C1NME_B" runat="server" />
                            </gal-input-help>
                            <gal-input input-size="xlarge" label-size="medium" label-text="Billing P.O:" no-description>
                                <input id="BillingPO_B_TWVCPOB" runat="server" />
                            </gal-input>

                            <gal-input-help input-size="large" label-size="medium" label-text="Security level:" no-description>
                                <input id="SecurityLevel_B_TWVSLVL" runat="server" />
                            </gal-input-help>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="medium" label-size="medium2" label-text="Sales target s.currency:" no-description>
                                <input id="SalesTargetSCurrecy_B_TWVST" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="medium2" label-text="Vending serial number:" no-description>
                                <input id="VendingSerialNumber_B_TWVSRL" runat="server" />
                            </gal-input>
                            <gal-input input-size="large" label-size="small" label-text="Update user:">
                                <input id="User_B_TWVUSR" runat="server" />
                                <input id="UserDesc_B_TSUNME" runat="server" />
                            </gal-input>
                            <div class="centered-flex">
                                <gal-input input-size="small" label-size="small" label-text="Date:" no-description>
                                    <input galtype="date" dateformat="dd/mm/yy" id="Date_B_TWVTCHG" runat="server" />
                                </gal-input>
                                <gal-input input-size="small" label-size="auto" label-text="Time:" style="margin-left: -8px" no-description>
                                    <input id="Time_B_TWVTIME" runat="server" />
                                </gal-input>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="spaced-column" style="height: 100%">
                    <div style="height: 100%; display: flex; justify-content: flex-end">
                        <button class="btn btn-primary btn-galweb big-button" id="F10" style="text-transform: capitalize; margin-top: auto" onclick="gx_SubmitKey('[pf10]');"></button>
                    </div>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_B_MSG" runat="server"></span>
            </div>
        </div>
    </div>
    <script>
        let headerCont = document.getElementsByClassName("headline-container");
        let title = document.getElementById("ctl00_GXPagePlaceHolder_title");
        let titleArr = title.innerText.split('-');
        let subHeadline = document.getElementById("subHead");
        let btn = document.getElementById("F10");
        title.innerText = titleArr[0];
        subHead.innerText += titleArr[1].toLocaleLowerCase();
        btn.innerText = titleArr[1].toLocaleLowerCase();
        if (btn.innerText.toLocaleLowerCase().trim() == "display")
            btn.style.display = "none";
    </script>
</asp:Content>