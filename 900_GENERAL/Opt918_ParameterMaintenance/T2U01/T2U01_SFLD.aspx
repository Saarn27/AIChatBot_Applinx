<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U01_SFLD.aspx.cs" Inherits="T2U01_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">DELETE CONFIRMATION</h1>

            </div>
            <div class="table-container">
                <table id="T2U01_SFLD_1" runat="server" class="table gal6-table-striped no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>System</span>
                            </th>
                            <th>
                                <span>Key</span>
                            </th>
                            <th>
                                <span id="Th3_DTLH" runat="server"></span></th>
                            <th>
                                <span>System</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="Sys_SYSD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Key_PARMD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_DSCLD" runat="server"></span>
                            </td>
                            <td>
                                <span id="I_IMCD" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARD" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        if (document.querySelector("#ctl00_GXPagePlaceHolder_Th3_DTLH").innerText === "DESCRIPTION") {
            document.querySelector("#ctl00_GXPagePlaceHolder_Th3_DTLH").innerText = "Description"
        }

</script>
</asp:Content>
