<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01S_DTL4.aspx.cs" Inherits="T0U01S_DTL4" %>

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
                <div id="generalTab_S1" text="General"></div>
                <div id="manAndSttTab_S2" text="Manufacture & Statistics"></div>
                <div id="costAndRecTab_S3" text="Cost & Recommendation"></div>
                <div id="managmentTab_S4" text="Management" active="true"></div>
            </tabs-list>
            <div class="tab-content">
                <div class="tab-pane active" id="4">
                    <div class="wrapper-container">
                        <div class="related-fields-area" style="width: 1045px">
                            <gal-input label-text="System code:" label-size="xxlarge" input-size="xsmall" no-description>
                                <select id="systemCode_AIMC2" runat="server">
                                    <option value=""></option>
                                    <option value="I">Sys</option>
                                </select>
                            </gal-input>
                            <gal-input label-text="Mandatory customer order in work order:" label-size="xxlarge" input-size="xsmall" no-description>
                                <select id="mandatoryCust_T0DA03" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input label-text="Limited to work order types:" label-size="xxlarge" input-size="medium,medium,medium" no-description>
                                <select id="orderTypes_T0DA07_1" runat="server"></select>
                                <div style="display: none" class="orderTypes_T0DA07-cont">
                                    <select id="orderTypes_T0DA07_2" runat="server"></select>
                                </div>
                                <div style="display: none" class="orderTypes_T0DA07-cont">
                                    <select id="orderTypes_T0DA07_3" runat="server"></select>
                                </div>
                                <button class="active add-select" onclick="openNewSelect('orderTypes_T0DA07-cont',event)"></button>
                            </gal-input>
                            <gal-input label-text="Engineering hold:" label-size="xxlarge" input-size="medium" no-description>
                                <gx:GXCheckBox ID="engineeringHold_T0DA05L" runat="server" CheckedValue="" UncheckedValue="N" />
                            </gal-input>
                            <gal-input label-text="Manti check:" label-size="xxlarge" input-size="medium" no-description>
                                <gx:GXCheckBox ID="mantiCheck_T0DA05R" runat="server" CheckedValue="" UncheckedValue="N" />
                            </gal-input>
                            <gal-input label-text="Default bucket:" label-size="xxlarge" input-size="large" no-description>
                                <select id="defaultBucket_T0DA11" runat="server"></select>
                            </gal-input>
                            <gal-input label-text="Months for recomendation report:" label-size="xxlarge" input-size="xsmall" no-description>
                                <input id="monthsForRecomendation_T0DN09" runat="server" />
                            </gal-input>
                            <gal-input label-text="Minimum ST cost for economic size:" label-size="xxlarge" input-size="medium" no-description>
                                <gx:GXCheckBox ID="minimumStCost_T0DA12" runat="server" CheckedValue="" UncheckedValue="N" />
                            </gal-input>
                            <gal-input label-text="Standart data checks:" label-size="xxlarge" input-size="medium" no-description>
                                <gx:GXCheckBox ID="standartDataChecks_STDCHK" runat="server" CheckedValue="" UncheckedValue="N" />
                            </gal-input>
                            <div class="line"></div>
                            <gal-input label-text="Update user/date:" label-size="xxlarge" input-size="medium,small" no-description>
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

        checkSelectValue('orderTypes_T0DA07-cont', 'select');

    </script>
</asp:Content>

