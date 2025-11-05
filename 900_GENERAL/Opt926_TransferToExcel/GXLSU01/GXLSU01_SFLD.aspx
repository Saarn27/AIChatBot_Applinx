<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXLSU01_SFLD.aspx.cs" Inherits="GXLSU01_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">IMPORT TO EXCEL MAINTENANCE </h1>
                <span class="sub-headline blue-headline">DELETE </span>
            </div>

            <div class="table-container">
                <table id="GXLSU01_SFLD_1" runat="server" class="table gal6-table-striped  no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Subject</span>

                            </th>
                            <th columntype="primaryNumber">
                                <span>Pramnum</span>

                            </th>
                            <th>
                                <span>User</span>

                            </th>
                            <th>
                                <span>Template name</span>

                            </th>
                            <th columntype="date">
                                <span>Date</span>

                            </th>
                            <th>
                                <span>Sys</span>

                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="Subject_DSUB" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Pramnum_DPRMNUM" runat="server"></span>
                            </td>
                            <td>
                                <span id="User_DUSER" runat="server"></span>
                            </td>
                            <td>
                                <span id="Templatname_DTMP" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="Date_DDATE" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sys_DIMC" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSGD" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete confirmation</button>

                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />


        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        checkSelectValue('grp20-cont', 'input');

    </script>
</asp:Content>
