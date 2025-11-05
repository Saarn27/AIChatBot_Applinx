<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD5.aspx.cs" Inherits="T0U01_ADD5" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <span style="font-size: 24px; font-weight: 500;">M.B.C</span>
                <h1 class="headline">Group</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="medium2" label-text="Type - General:" input-size="small" no-description>
                        <input id="TypeGeneral_ATYP2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="MBC code:" input-size="small" no-description>
                        <input id="mbcCode_ACOD2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Descriptions:" input-size="large" no-description>
                        <input id="Description1_ASDS2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xlarge" no-description>
                        <input id="Description2_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Local description:" input-size="large" no-description>
                        <input id="DescriptionLocal_ASDS3" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xlarge" no-description>
                        <input id="DescriptionLocal2_ADSC3" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium2" label-text="Application:" input-size="xlarge">
                        <input id="Application_APLIC" runat="server" />
                        <input id="ApplicationDesc_TEURAP" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="medium2" label-text="User responsible:" input-size="xlarge">
                        <input id="UserResponsible_USER" runat="server" />
                        <input id="UserResponsibleDesc_USERD" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium2" label-text="System code:" input-size="small" no-description>
                        <select id="SystemCode_AIMC2" runat="server">
                            <option value=""></option>
                            <option value="I">I = System</option>
                        </select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="medium2" label-text="Class:" input-size="small" no-description>
                            <input id="Class_CLASS" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="auto" label-text="Follow:" input-size="medium">
                            <input id="Follow_FOLLOW" runat="server" />
                            <input id="FollowDesc_FOLLOWDSC" runat="server" />
                        </gal-input-help>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="medium2" label-text="HSR Manf:" input-size="small" no-description>
                            <input id="HsrManf_T0DA11" runat="server" />
                        </gal-input-help>
                        <gal-input-help label-size="auto" label-text="None:" input-size="small" no-description>
                            <input id="HsrManf_T0DA12" runat="server" />
                        </gal-input-help>
                    </div>
                    <gal-input label-size="medium2" label-text="Product type:" input-size="xlarge" no-description>
                        <select id="ProductType_PRDTP" runat="server" />
                    </gal-input>
                    <div class="line"></div>
                    <gal-input label-size="medium2" label-text="FCS group:" input-size="medium" no-description>
                        <input id="FcsGroup_FCS" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="FCS-UNSPSC code:" input-size="medium" no-description>
                        <input id="FcsUnspscCode_ST0DA07" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="FCS-UNSPSC description:" input-size="xxlarge" no-description>
                        <input id="FcsUnspscDesc_ST0DA08" runat="server" />
                    </gal-input>

                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA1" runat="server"></span>
                    <button type="button" id="F10btn"  class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
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
