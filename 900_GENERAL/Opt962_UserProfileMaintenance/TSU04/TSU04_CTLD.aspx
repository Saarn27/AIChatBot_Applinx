<%@ Page MasterPageFile="~/template.master" Inherits="TSU04_CTLD" CodeFile="TSU04_CTLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">USER DATA MAINTENANCE</h1>
                <span class="sub-headline blue-headline">Close Confirmation</span>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="TSU04_CTLD_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>User</span>
                                </th>
                                <th>
                                    <span>User name</span>
                                </th>
                                <th>
                                    <span>Defualt company</span>
                                </th>
                                <th>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <span>Class</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="User_USR" runat="server"></span>
                                </td>
                                <td>
                                    <span id="UserName_NME" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Dftco_CMPD" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Typ_TYP" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Class_CLASS" runat="server"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="MSG" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
