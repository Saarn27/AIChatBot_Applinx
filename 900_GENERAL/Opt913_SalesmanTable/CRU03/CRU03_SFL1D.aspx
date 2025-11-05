<%@ Page MasterPageFile="~/template.master" Inherits="CRU03_SFL1D" CodeFile="CRU03_SFL1D.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SALESMAN TABLE</h1>
                <span class="blue-headline sub-headline">Delete Confirmation</span>
            </div>
            <div class="table-container">
                <table id="CRU03_SFL1D_1" runat="server" class="table gal6-table-striped no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Salesman</span>
                            </th>
                            <th>
                                <span>Salesman name</span>
                            </th>
                            <th>
                                <span>Customer number</span>
                            </th>
                            <th columntype="date">
                                <span>Update Date</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="Salesman" runat="server"></span></td>
                            <td><span id="SalesmanName" runat="server"></span></td>
                            <td><span id="CustNo" runat="server"></span></td>
                            <td columntype="date"><span id="UpdDate" runat="server" galtype="date" dateformat="dd/mm/yy"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
