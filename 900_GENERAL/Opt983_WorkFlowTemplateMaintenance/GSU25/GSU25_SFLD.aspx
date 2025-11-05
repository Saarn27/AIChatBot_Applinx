<%@ Page MasterPageFile="~/template.master" Inherits="GSU25_SFLD" CodeFile="GSU25_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Delete User Limitation</h1>
            </div>
            <div class="table-container">
                <table id="GSU25_SFLD_1" runat="server" class="table gal6-table-striped" style="min-height: 0px">
                    <thead>
                        <tr class="grid-header">
                            <th style="min-width:100px">
                                <span>%User</span></th>
                            <th style="min-width:300px">
                                <span>%User Name</span></th>
                            <th>
                                <span>Type</span></th>
                            <th>
                                <span>Product Group</span></th>
                            <th>
                                <span>Line</span></th>
                            <th>
                                <span>Item Type</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="user_USR" runat="server"></span></td>
                            <td>
                                <span id="userName_USRNME" runat="server"></span></td>
                            <td>
                                <span id="type_TYP" runat="server"></span></td>
                            <td>
                                <span id="productGroup_PRGRP" runat="server"></span></td>
                            <td>
                                <span id="line_PRGRPL" runat="server"></span></td>
                            <td>
                                <span id="itemType_ITMPTYP" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSGD" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
