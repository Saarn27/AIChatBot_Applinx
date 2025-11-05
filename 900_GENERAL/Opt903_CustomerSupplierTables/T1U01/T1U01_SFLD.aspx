<%@ Page MasterPageFile="~/template.master" Inherits="T1U01_SFLD" CodeFile="T1U01_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title" runat="server">General Tables For Customer</h1>
                <span class="sub-headline blue-headline"> Delete Confirmation</span>
            </div>
            <div class="table-container">
                <table id="T1U01_SFLD_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Table Code</span>
                            </th>
                            <th>
                                <span>Short description</span>
                            </th>
                            <th style="min-width: 400px">
                                <span>Long description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="TYP" runat="server"></span>
                                <span id="Code_COD" runat="server"></span>
                            </td>
                            <td><span id="ShortDesc_SDS" runat="server"></span></td>
                            <td><span id="LongDescription_DSC" runat="server"></span></td>
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
