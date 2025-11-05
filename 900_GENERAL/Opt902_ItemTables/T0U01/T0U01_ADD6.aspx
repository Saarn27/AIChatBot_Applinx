<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD6.aspx.cs" Inherits="T0U01_ADD6" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area" style="margin-bottom: 10px; width: 900px">
                    <div class="centered-flex">
                        <gal-input label-size="medium2" label-text="Type - General:" input-size="xxsmall" no-description>
                            <input id="TypeGeneral_ATYP2" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="Subject code:" input-size="xsmall" no-description>
                            <input id="SubjectCode_ACOD2" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="System Code:" input-size="xxsmall" no-description>
                            <input id="SystemCode_AIMC2" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="medium2" label-text="Descriptions:" input-size="large" no-description>
                        <input id="Description1_ASDS" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="Description2_ADSC2" runat="server" />
                    </gal-input>
                </div>
                <div class="related-fields-area" style="margin-bottom: 10px; width: 900px">
                    <gal-input label-size="medium2" label-text="Local description:" input-size="large" no-description>
                        <input id="DescriptionLocal1_ASDS3" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="DescriptionLocal2_ADSC3" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium2" label-text="Line type:" input-size="xsmall" no-description>
                        <input id="LineType_LINETYPE" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="medium2" label-text="Family code:" input-size="xlarge">
                        <input id="FamilyCode_FAMILY" runat="server" />
                        <input id="FamilyCodeDesc__TEURFM" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="medium2" label-text="Product group:" input-size="xlarge">
                        <input id="ProductGroup_PRODUC" runat="server" />
                        <input id="ProductGroup_TEURGR" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium2" label-text="Application code:" input-size="xlarge">
                        <input id="ApplicationCode_APLIC" runat="server" />
                        <input id="ApplicationCode_TEURAP" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="%Gross profit:" input-size="small" no-description>
                        <input id="GrossProfit_AGROSS" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".XXX"></span>
                    </gal-input>
                    <gal-input-help label-size="medium2" label-text="Vendor:" input-size="large">
                        <input id="Vendor_VENDOR_6" runat="server" />
                        <input id="VendorDesc_VENDOR_6D" runat="server" />
                    </gal-input-help>
                </div>
                <div class=" column-form related-fields-area" style="width: 900px">
                    <div class="spaced-column">
                        <gal-input label-size="medium2" label-text="Sale price factor:" input-size="small" no-description>
                            <input id="SalePriceFactor_T0QTYM_6" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="X.XX"></span>
                        </gal-input>
                        <gal-input label-size="medium2" label-text="MPC factor:" input-size="small" no-description>
                            <input id="MpcFactor_T0DN02_6" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".XXX"></span>
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Duty factor:" input-size="small" no-description>
                            <input id="DutyFactor_DUTP" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="X.XX"></span>
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="medium2" label-text="Default discount:" input-size="small" no-description>
                            <input id="DefaultDiscount_DFT_DISC6" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="medium2" label-text="Item class:" input-size="large">
                            <input id="ItemClass_ITMCLS6" runat="server" />
                            <input id="itemClass_ITMCLS6DSC" runat="server" />
                        </gal-input-help>
                        <gal-input label-text="Not hazard:" label-size="medium2" input-size="xsmall" no-description>
                            <gx:GXCheckBox ID="NotHazard_T0CODB_6" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA1" runat="server"></span>
                    <button type="button" id="F10btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
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
