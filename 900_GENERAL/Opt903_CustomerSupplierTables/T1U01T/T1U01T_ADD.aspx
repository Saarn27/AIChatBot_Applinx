<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T1U01T_ADD.aspx.cs" Inherits="T1U01T_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="title" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column related-fields-area">
                    <gal-input input-size="xxsmall" label-size="medium" label-text="Type:" no-description>
                        <input id="type_BTYPE" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xsmall" dynamic-label no-description>
                        <input id="codeLabel" runat="server" />
                        <input id="code_BT1KEY" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Short description:" no-description>
                        <input id="shortDescription_BT1DSC" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="medium" label-text="Long description:" no-description>
                        <input id="longDescription_BT1DSCL" runat="server" />
                    </gal-input>
                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input label-size="medium" input-size="small" dynamic-label no-description>
                                <input id="precentageLabel" runat="server" />
                                <input id="precentage_BT1TAX" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="xsmall" label-size="medium" label-text="Show in help:" no-description>
                                <gx:GXCheckBox ID="showInHelp_T1CF" CheckedValue="" UncheckedValue="N" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="xsmall" label-size="small" label-text="System code:" no-description>
                                <gx:GXCheckBox ID="systemCode_BT1IMC" CheckedValue="I" UncheckedValue="" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input input-size="small" label-size="medium" label-text="%-Deductible:" no-description>
                                <input id="deductible_BT1DEFV" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="xsmall" label-size="medium" label-text="Zero deductible:" no-description>
                                <gx:GXCheckBox ID="zeroDeductible_BT1DA02" CheckedValue="Z" UncheckedValue="" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input input-size="small" label-size="medium" label-text="%-Max deductible:" no-description>
                                <input id="maxDeductible_BT1MAXD" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="medium" label-size="medium" label-text="Max deviation value:" no-description>
                                <input id="maxDeviationValue_BT1MAXDV" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <gal-input-help input-size="xlarge" label-size="medium" label-text="Vat/tax account:">
                        <input id="account_BT1VACC" runat="server" />
                        <input id="accountDescription_BVTACCNT" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium" input-size="xxsmall" dynamic-label no-description>
                        <input id="groupLabel" runat="server" />
                        <input id="group_BT1DA04" runat="server" />
                    </gal-input>
                    <gal-input input-size="medium" label-size="medium" label-text="Local use:" no-description>
                        <input id="localUse_BT1DA09" runat="server" />
                    </gal-input>
                    <gal-input input-size="medium" label-size="medium" label-text="Rounding code:" no-description>
                        <select id="roundingCode_BT1DA01" runat="server"></select>
                    </gal-input>
                    <gal-input label-size="medium" input-size="small" label-text="Allow change in order:" no-description>
                        <select id="allowChangeInOrder_BT1DA06" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="medium" label-text="Local calculation:" no-description>
                        <input id="localCalculation_BT1DA03" runat="server" />
                    </gal-input>
                    <gal-input input-size="medium" label-size="medium" label-text="Update date:" no-description>
                        <input id="updateDate_BUPDDTE" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="medium" label-text="Update user:">
                        <input id="updateUser_BUPDUSR" runat="server" />
                        <input id="updateUserName_BUSRNME" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="modal-bottom">
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_BMSG" runat="server"></span>
                    <button id="F10Button_F10" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"></button>
                </div>
            </div>
            <input id="F10Text" runat="server" style="display: none" />
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        var mode = document.getElementById("ctl00_GXPagePlaceHolder_F10Text").value;
        document.getElementById("F10Button_F10").innerText = mode;
        var groupLabel = document.getElementById("ctl00_GXPagePlaceHolder_groupLabel");
        if (groupLabel.value.includes('VAT')) {
            groupLabel.value = "Vat group";
        }
        if (groupLabel.value.includes('TAX')) {
            groupLabel.value = "Tax group";
        }
    </script>
</asp:Content>
