<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU02_DEL.aspx.cs" Inherits="GWTU02_DEL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">MAINTENANCE WORKFLOW TYPES</h1>
                <span class="sub-headline blue-headline">DELETE CONFIRMATION</span>
            </div>

            <div class="table-container">
                <gal-table-header text="Workflow" start-column="1" end-column="3" unite></gal-table-header>
                <gal-table-header text="Program" start-column="4" end-column="10" unite></gal-table-header>
                <table id="GTU02_DEL_1" runat="server" class="table gal6-table-striped  no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Type</span>

                            </th>
                            <th>
                                <span>Description</span>

                            </th>
                            <th>
                                <span>Action type</span>

                            </th>
                            <th>
                                <span>Build</span>

                            </th>
                            <th>
                                <span>End</span>

                            </th>
                            <th>
                                <span>Maintenance</span>

                            </th>
                            <th>
                                <span>Inquiry</span>

                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="WFTYP" runat="server"></span>
                            </td>
                            <td>
                                <span id="WFDSC" runat="server"></span>
                            </td>
                            <td>
                                <span id="ACTTP" runat="server"></span>
                            </td>
                            <td>
                                <span id="BLDPG" runat="server"></span>
                            </td>
                            <td>
                                <span id="ENDPG" runat="server"></span>
                            </td>
                            <td>
                                <span id="MNTPG" runat="server"></span>
                            </td>
                            <td>
                                <span id="INQPG" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn ">
                    <span class="invalid-feedback" id="EARA" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />

        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
