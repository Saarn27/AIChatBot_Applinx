<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD8.aspx.cs" Inherits="T0U01_ADD8" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Discount Group</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="medium2" label-text="Type:" input-size="xxsmall" no-description>
                        <input id="Type_ATYP2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" input-size="xxsmall" dynamic-label no-description>
                        <input id="dynmicLabel1_ADD8GRP1" runat="server" />
                        <input id="FatherGroupCode_ACOD2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Short descriptions:" input-size="large" no-description>
                        <input id="shortDescription_ASDS2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Long description" input-size="xxlarge" no-description>
                        <input id="longDescription_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium2" input-size="xxlarge" dynamic-label>
                        <input id="dynmicLabel2_ADD8RTYP" runat="server" />
                        <input id="GpsFamilyGroup_PRODUC" runat="server" />
                        <input id="GpsFamilyGroupDesc_TEURGR" runat="server" />
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input label-size="medium2" label-text="Description prefix" input-size="small2" no-description>
                            <input id="descriptionPrefix_APRFX" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="Costing code" input-size="small2"  no-description>
                            <input id="costingCode_ACOC2" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input-help label-size="medium2" input-size="large" dynamic-label>
                        <input id="dynmicLabel3_ADD8RTYP" runat="server" />
                        <input id="FatherType_ALINT2" runat="server" />
                        <input id="FatherTypeDesc_LINTD" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium2" label-text="Local description" input-size="large" no-description>
                        <input id="LocalDescription1_ADSC12" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="LocalDescription2_ADSCL12" runat="server" />
                    </gal-input>
                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input label-size="medium2" label-text="Enrichment code:" input-size="small" no-description>
                                <select id="EnrichmentCode_T0DSP" runat="server">
                                    <option value=""></option>
                                    <option value="A">A</option>
                                    <option value="V">V</option>
                                    <option value="B">B</option>
                                </select>
                            </gal-input>
                            <gal-input-help label-size="medium2" label-text="Harmonize code:" input-size="large">
                                <input id="HarmonizeCode_HARM8" runat="server" />
                                <input id="HarmonizeCodeDesc_HARM8D" runat="server" />
                            </gal-input-help>
                            <gal-input label-size="medium2" label-text="Lead time:" input-size="small" no-description>
                                <input id="LeadTime_AMATP2" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium2" label-text="Corporate:" input-size="small" no-description>
                                <select id="Corporate_ADA03" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input-help label-size="medium2" label-text="UOM code:" input-size="large">
                                <input id="UomCode_AUOM" runat="server" />
                                <input id="UomCodeDesc_AUOMS" runat="server" />
                            </gal-input-help>
                            <gal-input-help label-size="medium2" label-text="Bom allocation:" input-size="large">
                                <input id="BomAllocation_BOMAL" runat="server" />
                                <input id="BomAllocationDesc_BOMALD" runat="server" />
                            </gal-input-help>

                            <gal-input label-size="medium2" label-text="Type:" input-size="xlarge" no-description>
                                <select id="Type_TOLINS2" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input label-size="small2" label-text="Statistics:" input-size="small" no-description>
                                <select id="Statistics_ADSP2" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input label-size="small2" label-text="Exceptions:" input-size="small" no-description>
                                <select id="Exceptions_AMATT2" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input label-size="small2" label-text="QA:" input-size="small" no-description>
                                <select id="qa_ACODB2" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input label-size="small2" label-text="Lot managment:" input-size="small" no-description>
                                <select id="LotManagement_ACODC2" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input label-size="small2" label-text="%QA portion:" input-size="small" no-description>
                                <input id="QaPortion_AGP2" runat="server" />
                            </gal-input>
                            <gal-input label-size="small2" label-text="QA code:" input-size="small" no-description>
                                <input id="QaCode_ATYP12" runat="server" />
                            </gal-input>
                            <gal-input label-size="small2" label-text="System code:" input-size="small" no-description>
                                <select id="SystemCode_AIMC2" runat="server">
                                    <option value=""></option>
                                    <option value="I">I = System</option>
                                </select>
                            </gal-input>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA1" runat="server"></span>
                    <button type="button"  id="F10btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
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
