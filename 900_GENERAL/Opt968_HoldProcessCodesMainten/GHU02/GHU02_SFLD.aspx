<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU02_SFLD.aspx.cs" Inherits="GHU02_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">HOLD CODE TABLE</h1>
                <span class="sub-headline blue-headline">Delete</span>
            </div>
            <div class="table-container">
                <table id="GHU02_SFLD_1" runat="server" class="table gal6-table-striped  no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Entity</span>
                            </th>
                            <th>
                                <span>Entity description</span>
                            </th>
                            <th>
                                <span>Hold code</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                            <th>
                                <span>Action code</span>
                            </th>
                            <th>
                                <span>Sub option authority</span>
                            </th>
                            <th>
                                <span>Reason code needed</span>
                            </th>
                            <th>
                                <span>Hold code value</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="Ent_GHTYPED" runat="server"></span>
                            </td>
                            <td>
                                <span id="EntityDesc_DSCD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Hld_GHHLDD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_GHDSCD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Act_GHEXPD" runat="server"></span>
                            </td>
                            <td>
                                <span id="SOpt_GHSOPTD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Rsn_GHRSND" runat="server"></span>
                            </td>
                            <td>
                                <span id="Hld_GHFHLDD" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>


</script>
</asp:Content>
