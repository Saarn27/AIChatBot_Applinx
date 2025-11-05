<%@ Page MasterPageFile="~/template.master" Inherits="TNU01_SFLD" CodeFile="TNU01_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Maintaince Table</h1>
                <span class="sub-headline blue-border-cursor">Delete Confirmation</span>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="TNU01_SFLD_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <span>Long description</span>
                                </th>
                                <th columntype="qty">
                                    <span>Numerator</span>
                                </th>
                                <th>
                                    <span>System</span>
                                </th>
                                <th>
                                    <span>System Application</span>
                                </th>
                                <th>
                                    <span>Check</span>
                                </th>
                                <th columntype="date">
                                    <span>Update date</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span id="cod_COD" runat="server"></span></td>
                                <td><span id="longDsc_DSC" runat="server"></span></td>
                                <td columntype="qty"><span id="numerator_NUM" runat="server"></span></td>
                                <td><span id="sys_SYS" runat="server"></span></td>
                                <td><span id="sysApp_SYSAPP" runat="server"></span></td>
                                <td><span id="chk_A_TNDA02" runat="server"></span></td>
                                <td columntype="date"><span id="updDate_DAT" runat="server" galtype="date" dateformat="dd/mm/y"></span></td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>

                    <div class="message-container message-container-with-btn ">
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                    </div>

                </div>
            </div>

            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
