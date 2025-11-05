<%@ Page MasterPageFile="~/template.master" Inherits="T0U01H_SFL0" CodeFile="T0U01H_SFL0.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="action" runat="server" />
        </action-bar>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">HARMONIZE CODES PER VENDOR </h1>
            </div>
            <div class="table-container">
                <table id="T0U01H_SFL0_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>Vendor</span>
                            </th>
                            <th style="width: 250px;">
                                <span>Vendor name</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="vendor_SER0" runat="server"></span></td>
                            <td><span id="vendorName_SERD0" runat="server"></span>
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
