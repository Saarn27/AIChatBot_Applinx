<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01H1_ADD9.aspx.cs" Inherits="T0U01H1_ADD9" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">HARMONIZE CODES</h1>
            </div>
            <div class="wrapper-container">
                <div class="related-fields-area w-100" style="margin-bottom: 10px">
                    <gal-input label-size="small2" label-text="Type - General:" input-size="xxsmall" no-description>
                        <input id="TypeGeneral_ATYP2" runat="server" />
                    </gal-input>
                    <gal-input label-size="small2" label-text="Code:" input-size="xxsmall" no-description>
                        <input id="Code_ACOD2" runat="server" />
                    </gal-input>
                    <gal-input label-size="small2" label-text="Harmonize:" input-size="medium" no-description>
                        <input id="Harmonize_ASDS2H" runat="server" />
                    </gal-input>
                    <gal-input label-size="small2" label-text="Description:" input-size="xxlarge" no-description>
                        <input id="Description_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input label-size="small2" label-text="Harmonize - 1:" input-size="medium" no-description>
                        <input id="Harmonize1_ASDS1H" runat="server" />
                    </gal-input>
                    <gal-input label-size="small2" label-text="Description - 1:" input-size="xxlarge" no-description>
                        <input id="Description1_ADSC1" runat="server" />
                    </gal-input>
                    <gal-input label-size="small2" label-text="%-Landing cost:" input-size="xsmall" no-description>
                        <input id="LandingCost_LANDCOST" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".xxx"></span>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="small2" label-text="%-Custom:" input-size="xsmall" no-description>
                            <input id="Custom_CUSTOM" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".xxx" style="margin-bottom: -2px; margin-left: 0px"></span>
                        </gal-input>
                        <gal-input label-size="auto" label-text="%-SurCharge:" input-size="small" no-description>
                            <input id="Surcharge_SURCHRG" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="xxx.xx" style="margin-bottom: -2px; margin-left: 0px"></span>
                        </gal-input>
                    </div>
                </div>
                <div class="related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="centered-flex">
                        <gal-input-help label-size="small2" label-text="Tax-1:" input-size="large">
                            <input id="Tax1_TAX1" runat="server" />
                            <input id="TAX1_D" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="small" no-description>
                            <input id="TAX1_T" runat="server" />
                            <span>%</span>
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="small2" label-text="Tax-2:" input-size="large">
                            <input id="Tax2_TAX2" runat="server" />
                            <input id="TAX2_D" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="small" no-description>
                            <input id="TAX2_T" runat="server" />
                            <span>%</span>
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="small2" label-text="Tax-3:" input-size="large">
                            <input id="Tax3_TAX3" runat="server" />
                            <input id="TAX3_D" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="small" no-description>
                            <input id="TAX3_T" runat="server" />
                            <span>%</span>
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="small2" label-text="Tax-4:" input-size="large">
                            <input id="Tax4_TAX4" runat="server" />
                            <input id="TAX4_D" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="small" no-description>
                            <input id="TAX4_T" runat="server" />
                            <span>%</span>
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="small2" label-text="Tax-5:" input-size="large">
                            <input id="Tax5_TAX5" runat="server" />
                            <input id="TAX5_D" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="small" no-description>
                            <input id="TAX5_T" runat="server" />
                            <span>%</span>
                        </gal-input>
                    </div>
                </div>
                <div class="related-fields-area w-100">
                    <gal-input label-size="small2" label-text="System code:" input-size="medium" no-description>
                        <select id="SystemCode_AIMC" runat="server">
                            <option value=""></option>
                            <option value="I">I = System</option>
                        </select>
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" id="F10btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update / Add</button>
                    <span id="F10Text" runat="server" style="display: none"></span>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        var isF10Visible = document.getElementById("ctl00_GXPagePlaceHolder_F10Text").innerText.trim() == "";
        var F10btn = document.getElementById("F10btn");
        if (isF10Visible) {
            F10btn.style.display = "none";
        }
    </script>
</asp:Content>
