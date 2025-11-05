<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FEU01_SFLD.aspx.cs" Inherits="FEU01_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">EXPENSES REPORT HEADERS</h1>
                <span class="sub-headline no-color blue-headline">Delete Confirmation</span>
            </div>
            <div class="table-container">
                <table id="FEU01_SFLD_1" runat="server" class="table gal6-table-striped  no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th columntype="primaryNumber">
                                <span>Number</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                            <th>
                                <span>Status</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Employee number</span>
                            </th>
                            <th>
                                <span>Salesman</span>
                            </th>
                            <th columntype="date">
                                <span>From</span>
                            </th>
                            <th columntype="date">
                                <span>To</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td columntype="primaryNumber">
                                <span id="number_NUMD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_DSC" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_STS" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="EmpNumber_FEHEMP" runat="server"></span>
                            </td>
                            <td>
                                <span id="SalesmanEmp_SMD" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="From_DATF" galtype="date" dateformat="ddmmy" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="To_DATT" galtype="date" dateformat="ddmmy" runat="server"></span>
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
