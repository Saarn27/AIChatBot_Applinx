<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01A_ADD.aspx.cs" Inherits="T0U01A_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area column-form">
                    <div class="spaced-column">
                        <gal-input label-size="medium2" label-text="Type - General:" input-size="xxsmall" no-description>
                            <input id="generalType_ATYP2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Application:" input-size="xxsmall" no-description>
                            <input id="applicationCode_ACOD2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Short description:" input-size="xlarge" no-description>
                            <input id="appShortDesc_ASDS2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Long description:" input-size="xlarge" no-description>
                            <input id="appLongDesc_ADSC2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Application type:" input-size="large" no-description>
                            <select id="applicationType_TOLINS2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Cost type:" input-size="small2" no-description>
                            <select id="costType_RAWMATA" runat="server">
                                <option value=""></option>
                                <option value="R">R = Raw</option>
                                <option value="F">F = Finish</option>
                                <option value="S">S = SemiStd</option>
                                <option value="Z">Z = Reset</option>
                            </select>
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Producer:" input-size="large" no-description>
                            <select id="producer_PRODUCER2" runat="server" />
                        </gal-input>

                        <gal-input label-size="medium2" label-text="Local short description:" input-size="xlarge" no-description>
                            <input id="descriptionLocal_TTKDSS2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Local long description:" input-size="xlarge" no-description>
                            <input id="longDesc_TTKDSC2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Line:" input-size="large" no-description>
                            <select id="line_FATHER1" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Product group:" input-size="large" no-description>
                            <select id="productGroup_FATHER2" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Discount Group:" input-size="large" no-description>
                            <select id="discountGroup_DISGRP" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Show on screen:" input-size="xsmall" no-description>
                            <select id="showOnScreen_SHOW" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                            </select>
                        </gal-input>
                        <gal-input label-size="medium2" label-text="%-Landing cost:" input-size="xsmall" no-description>
                            <input id="landingCost_LANDCOST" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".xxx"></span>
                        </gal-input>
                        <gal-input label-size="medium2" label-text="%-Gross profit:" input-size="xsmall" no-description>
                            <input id="grossProfit_GROSSPROF" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".xxx"></span>
                        </gal-input>
                        <gal-input-help label-size="medium2" label-text="User responsible:" input-size="xlarge">
                            <input id="userResponsible_URESPO" runat="server" />
                            <input id="userResponsName_URESPOD" runat="server" />
                        </gal-input-help>


                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="Sequence:" input-size="xsmall" no-description>
                            <input id="sequence_SEQ2" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="0 - 999"></span>
                        </gal-input>
                        <gal-input label-size="medium" label-text="Campaign:" input-size="medium" no-description>
                            <select id="campaign_CAMPAIGN" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="System code:" input-size="xxsmall" no-description>
                            <input id="imcCode_IMC2" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="I=system"></span>
                        </gal-input>
                        <gal-input label-size="medium" label-text="Follow up:" input-size="xxsmall" no-description>
                            <input id="followUp_FOLLOW" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="2D:" input-size="medium" no-description>
                            <select id="twoD_LINK" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="medium" label-text="Global Group:" input-size="medium">
                            <input id="lobalGrp_GLOB" runat="server" />
                            <input id="globalName_GLOBDSC" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="medium" label-text="Family:" input-size="medium">
                            <input id="family_FATHER3" runat="server" />
                            <input id="familyName_TEURFM" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Include in budget:" input-size="medium" no-description>
                            <gx:GXCheckBox ID="includeInBudget_BUDGET" CheckedValue="" UncheckedValue="N" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="medium" label-text="Team:" input-size="medium">
                            <input id="team_TEAM" runat="server" />
                            <input id="teamDesc_TEAMD" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="medium" label-text="PriorityTeam:" input-size="medium" no-description>
                            <gx:GXCheckBox ID="priorityTeam_PRIORT" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="HSR manf:" input-size="large" no-description>
                            <select id="hsrManfNon_T0DA11" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Non:" input-size="large" no-description>
                            <select id="hsrManfNon1_T0DA12" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="FCS group:" input-size="xsmall" no-description>
                            <input id="fcsGrp_FCS" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="User:" input-size="small" no-description>
                            <input id="user_USERUS" runat="server" />
                        </gal-input>
                        <div class="centered-flex">
                            <gal-input label-size="medium" label-text="class:" input-size="small" no-description>
                                <input id="class_CLASS" runat="server" />
                            </gal-input>
                            <gal-input label-size="auto" label-text="class1:" input-size="medium" no-description>
                                <select id="class1_CLASS1" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA" runat="server"></span>
                    <button type="button" id="f10Btn" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');"></button>
                </div>
                <span id="F10Update" runat="server" style="display: none"></span>
            </div>
        </div>
    </div>
    <script>
        document.getElementById("f10Btn").innerText = document.getElementById("ctl00_GXPagePlaceHolder_F10Update").innerText;
    </script>
</asp:Content>
