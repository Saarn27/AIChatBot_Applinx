<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01S_DTL2.aspx.cs" Inherits="T0U01S_DTL2" %>

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
                <div id="manAndSttTab_S2" text="Manufacture & Statistics" active="true"></div>
                <div id="costAndRecTab_S3" text="Cost & Recommendation"></div>
                <div id="managmentTab_S4" text="Management"></div>
            </tabs-list>
            <div class="tab-content">
                <div class="tab-pane active" id="2">
                    <div class="wrapper-container">
                        <div class="related-fields-area" style="width: 1045px">
                            <gal-input label-text="Rebuild statistics when changing manufacture group:" label-size="auto" input-size="xsmall" no-description>
                                <select id="rebuildStatus_T0CDL" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input label-text="Check order issue for work order:" label-size="xlarge" input-size="medium" no-description>
                                <select id="checkOrder_T0CDR" runat="server"></select>
                            </gal-input>
                            <gal-input label-text="Used in exception system:" label-size="xlarge" input-size="xsmall" no-description>
                                <select id="usedInException_T0CODB" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <div class="centered-flex">
                                <gal-input label-text="Bom allocation:" label-size="xlarge" input-size="medium" no-description>
                                    <select id="bomAllocation_T0DA01" runat="server"></select>
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Blank=Cust.Def"></span>
                            </div>
                            <gal-input label-text="Display sequence in line:" label-size="xlarge" input-size="xsmall" no-description>
                                <input id="displaySequenceInLine_T0SEQ" runat="server" />
                            </gal-input>
                            <gal-input label-text="Display group:" label-size="xlarge" input-size="large" no-description>
                                <select id="displayGroup_DSPGRP" runat="server"></select>
                            </gal-input>
                            <gal-input label-text="Activity type:" label-size="xlarge" input-size="medium" no-description>
                                <select id="activityType_ACTTYP" runat="server"></select>
                            </gal-input>
                            <gal-input label-text="Default warehouse for order:" label-size="xlarge" input-size="large" no-description>
                                <select id="defaultWarehouse_WHS" runat="server" />
                            </gal-input>
                            <div class="centered-flex">
                                <gal-input label-text="Auto work order open for BOM:" label-size="xlarge" input-size="medium" no-description>
                                    <select id="autoWOrder_T0MATT" runat="server"></select>
                                </gal-input>
                                <gal-input label-text="Work center target:" label-size="auto" input-size="medium" no-description>
                                    <gx:GXCheckBox ID="wcTarget_T0DA03" runat="server" CheckedValue="" UncheckedValue="N" />
                                </gal-input>
                            </div>
                        <div class="line"></div>
                        <gal-input label-text="Update user/date:" label-size="xlarge" input-size="medium,small" no-description>
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
