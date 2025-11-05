<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TUU02_SFLD.aspx.cs" Inherits="TUU02_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">UNIT OF MEASURE TABLE MAINTENANCE</h1>
                <span class="sub-headline blue-headline">Delete Confirmation</span>
            </div>

            <div class="table-container">
                <table id="TUU02_SFLD_1" runat="server" class="table gal6-table-striped less-padding-table no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Type</span>
                            </th>
                            <th>
                                <span>Type description</span>
                            </th>
                            <th>
                                <span>Unit of measure</span>
                            </th>
                            <th>
                                <span>Short description</span>
                            </th>
                            <th>
                                <span>Long description</span>
                            </th>
                            <th>
                                <span>Exact</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Factor</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="Type_TYP" runat="server"></span>
                            </td>
                            <td>
                                <span id="TypeD_TYPD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Uom_UOM" runat="server"></span>
                            </td>
                            <td>
                                <span id="ShortDesc_UOMS" runat="server"></span>
                            </td>
                            <td>
                                <span id="LongDescription_UOML" runat="server"></span>
                            </td>
                            <td>
                                <span id="Exc_EXC" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Factor_FACT" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
