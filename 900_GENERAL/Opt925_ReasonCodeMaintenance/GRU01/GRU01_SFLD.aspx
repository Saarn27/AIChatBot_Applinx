<%@ Page MasterPageFile="~/template.master" Inherits="GRU01_SFLD" CodeFile="GRU01_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">REASON CODE MAINTENANCE</h1>
                <h1 class="headline" style="color:#2D7DD2"> DELETE CONFIRMATION </h1>
            </div>
            <table id="GRU01_SFLD_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr>
                        <%--<th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>--%>
                        <th>
                            <span>Reason</span>
                        </th>
                        <th>
                            <span>Short description</span>
                        </th>
                        <th>
                            <span>Long description</span>
                        </th>
                        <th>
                            <span>Workflow</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%--<td class="option-column">
                            <input class="row-selector-cell" id="opt_s" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>--%>
                        <td>
                            <span class="input-medium" id="RSN" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-large" id="DSC1" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-small" id="DSCL1" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-small" id="WF" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
            </div>
        </div>
    </div>
</asp:Content>
