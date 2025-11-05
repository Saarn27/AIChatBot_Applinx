<%@ Page MasterPageFile="~/template.master" Inherits="GWU26I_SEL" CodeFile="GWU26I_SEL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">SELECTION SCREEN FOR ITEM WORKFLOW</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area" style="margin-bottom: 10px">
                    <gal-input label-size="large" label-text="User / Role :" input-size="xsmall,medium,large" no-description>
                        <input id="UserRoleType_SUSRT" runat="server" />
                        <input id="UserRoleTypeCode_SGFUSR" runat="server" />
                        <input id="UserRoleTypeName_SGFUSRN" runat="server" />
                    </gal-input>
                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input-help label-size="large" label-text="Item number from :" input-size="medium" no-description>
                                <input id="itemNumberFrom_SICAT" runat="server" />
                            </gal-input-help>
                        </div>
                        <div class="spaced-column">
                            <gal-input-help label-size="auto" label-text="To :" input-size="medium" no-description>
                                <input id="itemNumberTo_SICATTO" runat="server" />
                            </gal-input-help>
                        </div>
                    </div>

                    <gal-input label-size="large" label-text="Item description :" input-size="large" no-description>
                        <input id="itemDescription_SIDSCO" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" label-text="Product group :" input-size="medium,medium,medium,medium,medium" no-description>
                            <select id="itemGroup1_SIGRP1" runat="server"></select>
                            <div style="display: none;" class="prdgrp-cont">
                                <select id="itemGroup2_SIGRP2" runat="server"></select>
                            </div>
                            <div style="display: none;" class="prdgrp-cont">
                                <select id="itemGroup3_SIGRP3" runat="server"></select>
                            </div>
                            <div style="display: none;" class="prdgrp-cont">
                                <select id="itemGroup4_SIGRP4" runat="server"></select>
                            </div>
                            <div style="display: none;" class="prdgrp-cont">
                                <select id="itemGroup5_SIGRP5" runat="server"></select>
                            </div>
                        </gal-input>
                        <button class="active add-select add-select-type2" onclick="openNewSelect('prdgrp-cont',event)"></button>
                    </div>
                    <div class="centered-flex">
                        <gal-input label-size="large" label-text="Application :" input-size="medium,medium,medium,medium,medium" no-description>
                            <select id="itemApplication1_SIAPP1" runat="server"></select>
                            <div style="display: none;" class="app-cont">
                                <select id="itemApplication2_SIAPP2" runat="server"></select>
                            </div>
                            <div style="display: none;" class="app-cont">
                                <select id="itemApplication3_SIAPP3" runat="server"></select>
                            </div>
                            <div style="display: none;" class="app-cont">
                                <select id="itemApplication4_SIAPP4" runat="server"></select>
                            </div>
                            <div style="display: none;" class="app-cont">
                                <select id="itemApplication5_SIAPP5" runat="server"></select>
                            </div>
                        </gal-input>
                        <button class="active add-select add-select-type2" onclick="openNewSelect('app-cont',event)"></button>
                    </div>

                    <gal-input label-size="large" label-text="Family group :" input-size="medium" no-description>
                        <select id="familyGroup_SFAM" runat="server"></select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" label-text="Line :" input-size="xsmall,medium,medium,medium" no-description>
                            <select id="lineNumberYN_SILINYN" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                            </select>
                            <select id="lineNumberYN_SILIN1" runat="server"></select>
                            <div style="display: none;" class="line-cont">
                                <select id="lineNumberYN_SILIN2" runat="server"></select>
                            </div>
                            <div style="display: none;" class="line-cont">
                                <select id="lineNumberYN_SILIN3" runat="server"></select>
                            </div>
                        </gal-input>
                        <button class="active add-select add-select-type2" onclick="openNewSelect('line-cont',event)"></button>
                    </div>
                    <div class="centered-flex">
                        <gal-input label-size="large" label-text="Stock code :" input-size="medium,medium,medium" no-description>
                            <select id="stockCode_SICS1" runat="server"></select>
                            <div style="display: none;" class="sc-cont">
                                <select id="stockCode_SICS2" runat="server"></select>
                            </div>
                            <div style="display: none;" class="sc-cont">
                                <select id="stockCode_SICS3" runat="server"></select>
                            </div>
                        </gal-input>
                        <button class="active add-select add-select-type2" onclick="openNewSelect('sc-cont',event)"></button>
                    </div>

                    <gal-input label-size="large" label-text="Manufacture / Purchase :" input-size="medium" no-description>
                        <select id="manufOrPurch_SIC1" runat="server"></select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input-help label-size="large" label-text="Team :" input-size="small" no-description>
                            <input id="team1_STEAM1" runat="server" />
                        </gal-input-help>
                        <div style="display: none;" class="team-cont">
                            <gal-input-help label-size="xxxsmall" label-text="" input-size="small" no-description>
                                <input id="team2_STEAM2" runat="server" />
                            </gal-input-help>
                        </div>
                        <div style="display: none;" class="team-cont">
                            <gal-input-help label-size="xxxsmall" label-text="" input-size="small" no-description>
                                <input id="team3_STEAM3" runat="server" />
                            </gal-input-help>
                        </div>
                        <button class="active add-select add-select-type2" onclick="openNewSelect('team-cont',event)"></button>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="large" label-text="Project :" input-size="medium" no-description>
                            <input id="projectNumber_SPROJECT" runat="server" />
                        </gal-input-help>
                        <gal-input-help label-size="auto" label-text="Template:" input-size="small" no-description>
                            <input id="Template_S_TMPNMB" runat="server" />
                        </gal-input-help>
                        <gal-input-help label-size="auto" label-text="R&D status:" input-size="small" no-description>
                            <input id="RDStatus_S_PRJSTS" runat="server" />
                        </gal-input-help>
                    </div>
                </div>

                <div class="related-fields-area" style="width: 100%">
                    <gal-input label-size="large" label-text="Open dates :" input-size="small,xxsmall,small" no-description>
                        <input id="openDatesFrom_SOPENF" galtype="date" dateformat="ddmmy" runat="server" />
                        <label style="margin-left: 10px; margin-right: 0px">- </label>
                        <input id="openDatesTo_SOPENT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" label-text="Update dates :" input-size="small,xxsmall,small" no-description>
                        <input id="updateDatesFrom_SUPDF" galtype="date" dateformat="ddmmy" runat="server" />
                        <label style="margin-left: 10px; margin-right: 0px">- </label>
                        <input id="updateDatesTo_SUPDT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button class="btn btn-primary big-button btn-galweb" onclick="gx_SubmitKey('[enter]');">Continue</button>
                </div>
            </div>
        </div>
    <input id="hiddenField" runat="server" style="display: none" />
    </div>
    <script type="text/javascript">
        checkSelectValue('prdgrp-cont', 'select');
        checkSelectValue('app-cont', 'select');
        checkSelectValue('line-cont', 'select');
        checkSelectValue('sc-cont', 'select');
        checkSelectValue('team-cont', 'input');
    </script>
</asp:Content>
