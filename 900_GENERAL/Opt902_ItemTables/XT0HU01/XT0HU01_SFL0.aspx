<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="XT0HU01_SFL0.aspx.cs" Inherits="XT0HU01_SFL0" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">HARMONIZE CODES PER COUNTRY / REGION</h1>

            </div>
            <div class="table-container">
                <table id="XT0HU01_SFL0_1" runat="server" class="table gal6-table-striped less-padding-table ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>Country</span>
                            </th>
                            <th>
                                <span>Region</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="Opt_SEL0" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="Country_SERK0" runat="server"></span>
                            </td>
                            <td>
                                <span id="Region_SERC0" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_SERD0" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>


</script>
</asp:Content>
