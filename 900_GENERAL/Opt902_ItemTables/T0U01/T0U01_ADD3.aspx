<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD3.aspx.cs" Inherits="T0U01_ADD3" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Product Group</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="medium2" label-text="Type - General:" input-size="xxsmall" no-description>
                        <input id="TypeGeneral_ATYP2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Product Group:" input-size="xxsmall" no-description>
                        <input id="DiscountGroup_ACOD2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Descriptions:" input-size="large" no-description>
                        <input id="Description1_ASDS2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="Description2_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Local description:" input-size="large" no-description>
                        <input id="LocalDescription_ASDS3" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="LocalDescription_ADSC3" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="%Landing cost" input-size="small" no-description>
                        <input id="landingCost_LANDCOST" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".XXX"></span>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="%Gross profit:" input-size="small" no-description>
                        <input id="GrossProfit_AGROSS" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".XXX"></span>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="%High gross profit:" input-size="small" no-description>
                        <input id="HighGrossProfit_AGROSSH" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".XXX"></span>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Build global file:" input-size="small" no-description>
                        <select id="BuildGlobalFile_T0DA01" runat="server">
                            <option value=""></option>
                            <option value="N">N = No</option>
                            <option value="F">F = Force</option>
                            <option value="G">G = Gps</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="System code:" input-size="small" no-description>
                        <select id="SystemCode_AIMC2" runat="server">
                            <option value=""></option>
                            <option value="I">I = System</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Group type:" input-size="xlarge" no-description>
                        <select id="groupType_GRPTYPE" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Cost type:" input-size="xlarge" no-description>
                        <input id="costType_RAWMAT" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium2" label-text="Harmonize code:" input-size="xlarge">
                        <input id="harmonizeCode_AHARMO" runat="server" />
                        <input id="harmonizeCodeDesc_AHARMO_D" runat="server" />
                    </gal-input-help>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA1" runat="server"></span>
                    <button type="button" id="F10btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
                </div>
            </div>
        </div>
        <span id="F10Text" runat="server" style="display: none"></span>
    </div>
    <script>
        var isF10Visible = document.getElementById("ctl00_GXPagePlaceHolder_F10Text").innerText.trim() == "";
        var F10btn = document.getElementById("F10btn");
        if (isF10Visible) {
            F10btn.style.display = "none";
        }
    </script>
</asp:Content>
