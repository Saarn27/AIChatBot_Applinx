<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSE01_CTL1_D.aspx.cs" Inherits="TSE01_CTL1_D" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">USER & ENTITY CONNECTION </h1>
                <span class="sub-headline blue-headline">DELETE CONFIRMATION </span>
            </div>
            <gal-table-header text="Entity 1" end-column="3" start-column="1"></gal-table-header>
            <gal-table-header text="Entity 2" end-column="6" start-column="5"></gal-table-header>
            <div class="table-container">
                <table id="TSE01_CTL1_D_1" runat="server" class="table gal6-table-striped  no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Type 1</span>

                            </th>
                            <th>
                                <span>Description</span>

                            </th>
                            <th columntype="primaryNumber">
                                <span>Value 1</span>

                            </th>
                            <th>
                                <span>Type 2</span>

                            </th>
                            <th>
                                <span>Description</span>

                            </th>
                            <th columntype="primaryNumber">
                                <span>Value 2</span>

                            </th>
                            <th>
                                <span>User</span>

                            </th>
                            <th>
                                <span>Roll</span>

                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="A_GSSYS" runat="server"></span>
                            </td>
                            <td>
                                <span id="A_GSSYS_D" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="A_GSKEYA" runat="server"></span>
                            </td>
                            <td>
                                <span id="A_GSCODA" runat="server"></span>
                            </td>
                            <td>
                                <span id="A_GSCODA_D" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="A_GSVALA2" runat="server"></span>
                            </td>
                            <td>
                                <span id="A_GSVALA1" runat="server"></span>
                            </td>
                            <td>
                                <span id="A_GSSBJ" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="MSG3" runat="server"></span>
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
