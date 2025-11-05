<%@ Page MasterPageFile="~/template.master" Inherits="PCCU01_SFL2" CodeFile="PCCU01_SFL2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SUPPLIER'S EVALUATION QUESTIONNAIRE</h1>
            </div>
            <div class="table-container">
                <table id="PCCU01_SFL2_Grid" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th><span>Supplier</span></th>
                            <th><span>Supplier Name</span></th>
                            <th><span>After Score</span></th>
                            <th><span>Before Score</span></th>
                            <th><span>User</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="Supplier_SLVND" runat="server"></span></td>
                            <td><span id="SupplierName_SLVNDNAM" runat="server"></span></td>
                            <td><input id="SLSCOREA" runat="server" /></td>
                            <td><span id="SLSCOREB" runat="server"></span></td>
                            <td>
                                <span id="SLUSER" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <div class="message-container">
                <span id="F10update" runat="server"></span>
                <span id="MSG2" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
