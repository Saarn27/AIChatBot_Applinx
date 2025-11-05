<%@ Page MasterPageFile="~/template.master" Inherits="T0U01_SFLD" CodeFile="T0U01_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title" runat="server">GENERAL TABLES FOR CUSTOMER</h1>
                <span class="sub-headline blue-headline">Delete Confirmation</span>
            </div>
            <div class="table-container">
                <table id="T0U01_SFLD_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th></th>
                            <th>
                                <span>Table Code</span>
                            </th>
                            <th style="width:200px">
                                <span>Short description</span>
                            </th>
                            <th style="width:500px">
                                <span>Long description</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="recordSelection_TYP" runat="server"></span></td>
                            <td><span id="tableCode_COD" runat="server"></span></td>
                            <td><span id="shortDesc_SDS" runat="server"></span></td>
                            <td><span id="longDescription_DSC" runat="server"></span></td>
                            <td><span id="imc_IMC" runat="server"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="modal-bottom" style="margin-left: 28px">
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
