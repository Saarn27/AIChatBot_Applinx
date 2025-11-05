<%@ Page MasterPageFile="~/template.master" Inherits="T0U01H_SFL1" CodeFile="T0U01H_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="action" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">VENDOR HARMONIZE CODE MAINTENANCE </h1>
            </div>
            <div class="table-container">
                <div class="related-fields-area w-100">
                    <gal-input label-size="auto" label-text="Vendor:" input-size="medium">
                        <input id="vendor_VENDS" runat="server" />
                        <input id="vendorName_VENDSN" runat="server" />
                    </gal-input>
                </div>
                <table id="T0U01H_SFL1_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="code_SEL1" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th style="width: 250px;">
                                <span>Harmonize</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="description_SEL2" runat="server" />
                                </gal-input>
                                <span>Local description</span>
                            </th>
                            <th>
                                <span>%L.C</span>
                            </th>
                            <th>
                                <span>%Customer</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="code_SER" runat="server"></span></td>
                            <td><span id="harmonize_SERD" runat="server"></span></td>
                            <td><span id="description_SERDL" runat="server"></span></td>
                            <td><span id="localDescription_SERDL1" runat="server"></span></td>
                            <td><span id="lc_LCLC" runat="server"></span></td>
                            <td><span id="cstm_CSCS" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
            </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
