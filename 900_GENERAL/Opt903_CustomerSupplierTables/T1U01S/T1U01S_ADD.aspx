<%@ Page MasterPageFile="~/template.master" Inherits="T1U01S_ADD" CodeFile="T1U01S_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SHIPPING METHOD TABLE</h1>
            </div>
            <div style="width:fit-content">
            <div class="column-form">
                <div class="spaced-column related-fields-area" style="height: 100%; margin-right:0px;">
                    <gal-input input-size="xxsmall" label-size="medium" label-text="Type - general:" no-description>
                        <input id="type_ATYP" runat="server" />
                    </gal-input>
                    <gal-input input-size="xsmall" label-size="medium" label-text="Shipping code:" no-description>
                        <input id="shippingCode_ACOD" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Global carrier:" no-description>
                        <select id="globalCarrier_AGC" runat="server"></select>
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Short description:" no-description>
                        <input id="shortDescription_ASDS" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="medium" label-text="Long description:" no-description>
                        <input id="longDescription_ADSC" runat="server" />
                    </gal-input>
                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input input-size="xxsmall" label-size="medium" label-text="System code:" no-description>
                                <input id="imc_IMC" runat="server" />
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="I=Sys"></span>
                            </gal-input>
                            <gal-input input-size="small" label-size="medium" label-text="SCAC:" no-description>
                                <input id="scac_SCAC" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="small" label-size="small" label-text="Show in help:" no-description>
                                <select id="showInHelp_T1CF" runat="server">
                                    <option value=" ">Yes</option>
                                    <option value="N">No</option>
                                </select>
                            </gal-input>
                            <gal-input input-size="small" label-size="small" label-text="Carrier:" no-description>
                                <input id="carrier_CARRIER" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="small" label-size="medium" label-text="Transfer company:" no-description>
                                <input id="company_COMP" runat="server" />
                            </gal-input>
                            <gal-input input-size="small" label-size="medium" label-text="Freight charge:" no-description>
                                <input id="freight_FREIGHT" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <gal-input input-size="small" label-size="medium" label-text="Block calculation:" no-description>
                        <select id="blockCalculation_BLOCK" runat="server">
                            <option value=" "></option>
                            <option value="I">Insurance</option>
                            <option value="F">Freight</option>
                            <option value="B">Both</option>
                        </select>
                    </gal-input>
                    <gal-input input-size="xxxlarge" label-size="medium" label-text="Address:" no-description>
                        <input id="address_AADRES" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Phone:" no-description>
                        <input id="phone_APHONE" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="medium" label-text="Mail:" no-description>
                        <input id="mail_AMAIL" runat="server" />
                    </gal-input>
                    <gal-input input-size="small" label-size="medium" label-text="Shipment priority:" no-description>
                        <select id="shipmentPriority_APRSHP" runat="server">
                            <option value=" "></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>

                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input input-size="small" label-size="medium" label-text="Pickup:" no-description>
                                <select id="pickup_APICK" runat="server">
                                    <option value=" "></option>
                                    <option value="Y">Yes</option>
                                    <option value="C">Clear</option>
                                </select>
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="small" label-size="xsmall" label-text="Export:" no-description>
                                <select id="export_AEXPORT" runat="server">
                                    <option value=" "></option>
                                    <option value="Y">Yes</option>
                                </select>
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input input-size="small" label-size="xsmall" label-text="Drop:" no-description>
                                <select id="drop_AT1DA05" runat="server">
                                    <option value=" "></option>
                                    <option value="D">Drop</option>
                                </select>
                            </gal-input>
                        </div>
                    </div>
                    <gal-input input-size="medium" label-size="medium" label-text="User:" no-description>
                        <input id="updateUser_USER" runat="server" />
                    </gal-input>
                    <gal-input input-size="small" label-size="medium" label-text="Last update:" no-description>
                        <input id="lastUpdate_LSTDAT" runat="server" />
                    </gal-input>
                </div>
        
            </div>
                    <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMessage_MSG1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
            </div>
                
                </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>

</asp:Content>
