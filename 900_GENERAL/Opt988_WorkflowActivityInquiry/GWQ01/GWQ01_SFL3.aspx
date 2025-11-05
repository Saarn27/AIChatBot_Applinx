<%@ Page MasterPageFile="~/template.master" Inherits="GWQ01_SFL3" CodeFile="GWQ01_SFL3.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY INQUIRY</h1>
            </div>
            <tabs-list>
                <div id="tab1_TAB1" text="General"></div>
                <div id="tab2_TAB2" text="Additional"></div>
                <div id="tab3_TAB3" text="Customer / Supplier" active="true"></div>
            </tabs-list>
            <div class="tab-content">
                <div class="tab-pane active" id="3">
                    <div class="table-container">
                        <table id="GWQ01_SFL3_1" runat="server" class="table gal6-table-striped">
                            <thead>
                                <tr class="grid-header">
                                    <th class="option-column">
                                        <input type="checkbox" id="masterCheckBox" />
                                    </th>
                                    <th sortby="typeTitle_TTYP">
                                        <gal-input input-size="small" no-description>
                                            <select id="typeFilter_SGFHTYP" runat="server" style="font-size: 8px"></select>
                                        </gal-input>
                                        <span id="typeTitle_TTYP">Type</span>
                                    </th>
                                    <th sortby="documentNumberTitle_TDOCN" columntype="primaryNumber">
                                        <gal-input input-size="small" no-description>
                                            <input id="documentNumberFilter_SGFHDOC" runat="server" />
                                        </gal-input>
                                        <span id="documentNumberTitle_TDOCN">Document number</span>
                                    </th>
                                    <th sortby="documentDescriptionTitle_TDOCD">
                                        <gal-input input-size="xlarge" no-description>
                                            <input id="descriptionFilter_SGFHDSC" runat="server" />
                                        </gal-input>
                                        <gal-input input-size="xlarge" no-description>
                                            <input id="remark1Filter_SRMK1" runat="server" />
                                        </gal-input>
                                        <span id="documentDescriptionTitle_TDOCD" runat="server"></span>
                                    </th>
                                    <th sortby="customerVendorTitle_TCUST">
                                        <gal-input label-text="In IMC: " label-size="xsmall" input-size="xxsmall" no-description>
                                            <select id="imcFilter_SCUSTIMC" runat="server">
                                                <option value=""></option>
                                                <option value="I">I = Yes</option>
                                                <option value="N">N = No</option>
                                            </select>
                                        </gal-input>
                                        <div class="centered-flex">
                                            <gal-input-help label-size="xsmall" label-text="Type:" input-size="xsmall" no-description>
                                                <input id="customerVendorTypeFilter_SCUSTTYP" runat="server" />
                                            </gal-input-help>
                                            <gal-input-help label-text=" " input-size="small2" no-description>
                                                <input id="customerVendorNumberFilter_SCUSTNUM" runat="server" />
                                            </gal-input-help>
                                        </div>
                                        <span id="customerVendorTitle_TCUST">Customer/Supplier</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="option-column">
                                        <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                        <input type="checkbox" galtype="checkbox" />
                                    </td>
                                    <td>
                                        <span id="type_WFTYP" runat="server"></span>
                                        <span class="double-span" id="inAdvance_INADV" runat="server"></span>
                                    </td>
                                    <td columntype="primaryNumber">
                                        <span id="documentNumber_DOCN" runat="server"></span>
                                    </td>
                                    <td>
                                        <span class="double-span" id="description_DOCDSC" runat="server"></span>
                                        <span id="remark2_RMK2" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="customerVendorName_CUST" runat="server"></span>
                                        <action-bar mode="single"></action-bar>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <grid-scroller></grid-scroller>
                    </div>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container">
                        <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                    </div>
                    <div class="legend-div">
                        <legend-block text="Info" color="yellow"></legend-block>
                        <legend-block text="Return" color="aqua"></legend-block>
                        <legend-block text="Error" color="red"></legend-block>
                        <legend-block text="Handling" color="blue"></legend-block>
                        <legend-block color="red" text-color id="dynamicAsteric"></legend-block>
                    </div>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none" />
    </div>
</asp:Content>
