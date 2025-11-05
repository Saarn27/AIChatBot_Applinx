<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FEU01_SFLID.aspx.cs" Inherits="FEU01_SFLID" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
                <span class="sub-headline blue-headline">Delete Confirmation</span>
            </div>
            <div class="table-container">
                <table id="FEU01_SFLID_1" runat="server" class="table gal6-table-striped w-100 no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Line</span>
                            </th>
                            <th>
                                <span>Type</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                            <th columntype="date">
                                <span>Date</span>
                            </th>
                            <th columntype="qty">
                                <span>Amount</span>
                            </th>
                            <th>
                                <span>Status</span>
                            </th>
                            <th columntype="qty">
                                <span>Ammount approved</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="Line_LINED" runat="server"></span>
                            </td>
                            <td>
                                <span id="Type_TYPD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Descrption_LDSC" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="Date_LDATE" galtype="date" dateformat="ddmmy" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="Amount_VTS" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_LSTS" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="amountApproved_VTSA" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
