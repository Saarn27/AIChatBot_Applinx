<%@ Page MasterPageFile="~/template.master" Inherits="T1U01_SFL" CodeFile="T1U01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">GENERAL TABLES FOR CUSTOMER</h1>
                <span class="sub-headline blue-headline" id="TYP" runat="server"></span>
            </div>
            <div class="table-container">
                <table id="T1U01_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>Code</span>
                            </th>
                            <th>
                                <span>Short description</span>
                            </th>
                            <th>
                                <span>Long description</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                            <th>
                                <span>User</span>
                            </th>
                            <th>
                                <span>Update date</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_TYP" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="Code_COD" runat="server"></span></td>
                            <td><span id="ShortDesc_SDS" runat="server"></span></td>
                            <td><span id="LongDescription_DSC" runat="server"></span></td>
                            <td><span id="Sys_IMC" runat="server"></span></td>
                            <td><span id="User_USER" runat="server"></span></td>
                            <td columntype="date">
                                <span id="UpdatDate_UPDDAT" galtype="date" dateformat="ddmmy" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="EARA" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
