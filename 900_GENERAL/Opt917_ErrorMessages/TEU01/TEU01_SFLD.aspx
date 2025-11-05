<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TEU01_SFLD.aspx.cs" Inherits="TEU01_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">ERROR MESSAGES</h1>
                <span class="sub-headline blue-headline">Delete Confirmation</span>
            </div>

            <div class="table-container">
                <table id="TEU01_SFLD_1" runat="server" class="table gal6-table-striped less-padding-table no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Code</span>
                            </th>
                            <th>
                                <span>Message description</span>
                            </th>
                            <th>
                                <span>Subject</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Warn</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="Code_NUMB" runat="server"></span>
                            </td>
                            <td>
                                <span id="MessageDescription_DES63" runat="server"></span>
                            </td>
                            <td>
                                <span id="Subject_SUBJECT" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sys_SYS" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Wrn_WRN" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete confirmation</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
