<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01S_DTL1.aspx.cs" Inherits="T0U01S_DTL1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Manufacture Group</h1>
                <span class="sub-headline blue-headline">S</span>
                <span class="sub-headline" id="mode_MODE" runat="server"></span>
            </div>
            <div class="related-fields-area" style="width: 1045px">
                <gal-input label-text="Manufacture group:" label-size="medium" input-size="xxsmall" no-description>
                    <input id="manufactureGroup_PRD2" runat="server" />
                </gal-input>
                <gal-input label-text="Descriptions:" label-size="medium" input-size="large,xlarge" no-description>
                    <input id="description_ASDS2" runat="server" />
                    <input id="description_ADSC2" runat="server" />
                </gal-input>
                <gal-input label-text="Description local:" label-size="medium" input-size="large,xlarge" no-description>
                    <input id="descriptionLocal_ASDS3" runat="server" />
                    <input id="descriptionLocal_ADSC3" runat="server" />
                </gal-input>
            </div>

            <tabs-list>
                <div id="generalTab_S1" text="General" active="true"></div>
                <div id="manAndSttTab_S2" text="Manufacture & Statistics"></div>
                <div id="costAndRecTab_S3" text="Cost & Recommendation"></div>
                <div id="managmentTab_S4" text="Management"></div>
            </tabs-list>
            <div class="tab-content">
                <div class="tab-pane active" id="1">
                    <div class="wrapper-container">
                        <div class=" related-fields-area" style="width: 1045px">
                            <div class="column-form">
                                <div class="spaced-column">
                                    <gal-input-help label-text="Factory:" label-size="medium2" input-size="large">
                                        <input id="factory_FAC" runat="server" />
                                        <input id="factoryDesc_FACDSC" runat="server" />
                                    </gal-input-help>
                                    <gal-input-help label-text="Product line:" label-size="medium2" input-size="large">
                                        <input id="productLine_LINE" runat="server" />
                                        <input id="productLineDesc_LINDSC" runat="server" />
                                    </gal-input-help>
                                    <gal-input-help label-text="End use line:" label-size="medium2" input-size="large">
                                        <input id="endUseLine_ENDLINE" runat="server" />
                                        <input id="endUseLineDesc_ELINDSC" runat="server" />
                                    </gal-input-help>
                                    <gal-input label-text="Building:" label-size="medium2" input-size="large" no-description>
                                        <select id="building_BLD" runat="server" class="no-color"></select>
                                    </gal-input>
                                    <gal-input label-text="Type:" label-size="medium2" input-size="large" no-description>
                                        <select id="type_ATYPE" runat="server" class="no-color"></select>
                                    </gal-input>
                                    <gal-input label-text="Material type:" label-size="medium2" input-size="medium">
                                        <input id="itype_ATYPE_IT" runat="server" />
                                        <input id="itype_ITYPDSC" runat="server" />
                                    </gal-input>
                                    <div class="centered-flex">
                                        <gal-input label-text="Lead time:" label-size="medium2" input-size="xsmall" no-description>
                                            <input id="leadTime_T0MATP" runat="server" />
                                        </gal-input>
                                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="(Days)"></span>
                                    </div>
                                    <div class="centered-flex">

                                        <gal-input label-text="Lead time for work plan:" label-size="medium2" input-size="xsmall" no-description>
                                            <input id="leadTimeForWPlan_T0CODA" runat="server" />
                                        </gal-input>
                                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="(Days)"></span>
                                    </div>
                                    <gal-input-help label-text="Manager:" label-size="medium2" input-size="large">
                                        <input id="manager_T0DN05" runat="server" />
                                        <input id="managerDesc_EMPNAM" runat="server" />
                                    </gal-input-help>

                                </div>
                                <div class="spaced-column">
                                    <gal-input-help label-text="Customer:" label-size="xsmall2" input-size="large">
                                        <input id="customer_CUST" runat="server" />
                                        <input id="customerDesc_CUSTDSC" runat="server" />
                                    </gal-input-help>
                                    <gal-input label-text="Sub type:" label-size="xsmall2" input-size="large" no-description>
                                        <select id="subType_DA06" runat="server" class="no-color"></select>
                                    </gal-input>
                                    <gal-input-help label-text="MTC user:" label-size="xsmall2" input-size="large">
                                        <input id="mtcUser_T0MTCUSR" runat="server" />
                                        <input id="mtcUserDesc_MTCUSRNM" runat="server" />
                                    </gal-input-help>
                                </div>
                            </div>
                            <div class="line"></div>
                            <gal-input label-text="Update user/date:" label-size="medium2" input-size="large,small" no-description>
                                <input id="updateUser_UPD_USER" runat="server" />
                                <input id="updateDate_UPD_DATE" runat="server" galtype="date" dateformat="dd/mm/y" />
                            </gal-input>
                        </div>
                        <div class="message-container message-container-with-btn">
                            <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                            <button type="button" class="btn btn-primary btn-galweb big-button d-flex justify-content-center align-items-center" onclick="gx_SubmitKey('[pf10]');" id="actionBtn">
                                <span id="F10" runat="server" class="no-color" style="color: #ffffff"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <input id="hiddenField" runat="server" style="display: none;" />
        </div>
    </div>
    <script>
        var f10Btn = document.querySelector("#actionBtn");
        var f10Text = document.querySelector("#ctl00_GXPagePlaceHolder_F10").innerText.trim();
        if (f10Text == "") {
            f10Btn.style.setProperty("display", "none", "important");
        }
    </script>
</asp:Content>
