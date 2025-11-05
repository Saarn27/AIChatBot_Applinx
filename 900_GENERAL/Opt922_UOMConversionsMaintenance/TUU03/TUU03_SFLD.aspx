<%@ Page MasterPageFile="~/template.master" Inherits="TUU03_SFLD" CodeFile="TUU03_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Special </h1>
                <span style="font-size: inherit; font-weight: 500">UOM</span>
                <h1 class="headline">Translation Maintenance</h1>
                <span class="separating-line">|</span>
                <span class="sub-headline blue-headline">Delete Confirmation</span>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="TUU03_SFLD_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Source</span>
                                </th>
                                <th>
                                    <span>%Source Description</span>
                                </th>
                                <th>
                                    <span>Destination</span>
                                </th>
                                <th>
                                    <span>%Destination Description</span>
                                </th>
                                <th columntype="qty">
                                    <span>Factor</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="Source_SRC" runat="server" style="margin-right: 100px"></span>
                                </td>
                                <td>
                                    <span id="Source_SRCD" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Destination_DST" runat="server" style="margin-right: 100px"></span>
                                </td>
                                <td>
                                    <span id="Destination_DSTD" runat="server"></span>
                                </td>
                                <td columntype="qty">
                                    <span id="Factor_FCT" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                </div>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMsg_EARA" runat="server"></span>
                    <button style="width: 140px" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm Delete</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
