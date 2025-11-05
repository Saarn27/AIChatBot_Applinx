<%@ Page MasterPageFile="~/template.master" Inherits="TUU03_SFLID" CodeFile="TUU03_SFLID.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple"></action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Special</h1>
                <h1 class="headline no-title-case">UOM</h1>
                <h1 class="headline">Translation Maintenance</h1>
                <span class="sub-headline blue-headline">Delete Confirmation</span>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="TUU03_SFLID_1" runat="server" class="table gal6-table-striped less-padding-table">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Item number</span>
                                </th>
                                <th>
                                    <span>Item description</span>
                                </th>
                                <th>
                                    <span>Source</span>
                                </th>
                                <th>
                                    <span>Destination</span>
                                </th>
                                <th columntype="qty">
                                    <span>Factor</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <span>Vendor</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="ItemNo_ITM" runat="server"></span>
                                </td>
                                <td>
                                    <span id="ItemDescription_ITMD" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Src_ISRC" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Ds_IDST" runat="server"></span>
                                </td>
                                <td columntype="qty">
                                    <span id="Factor_IFCT" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="Vendor_IVND" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="errorMsg_EARA" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" style="width: 128px" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input id="pageIndicator" runat="server" style="display: none" />
</asp:Content>
