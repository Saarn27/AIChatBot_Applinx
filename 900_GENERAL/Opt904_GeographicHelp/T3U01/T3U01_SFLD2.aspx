<%@ Page MasterPageFile="~/template.master" Inherits="T3U01_SFLD2" CodeFile="T3U01_SFLD2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple"></action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
                <h1 class="headline blue-headline" id="MaorsTest_TYP" runat="server"></h1>
                <span>|</span>
                <h1 class="headline blue-headline">DELETE CONFIRMATION</h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="T3U01_SFLD2_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <span>Short description</span>
                                </th>
                                <th>
                                    <span>Long description</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="Code_COD" runat="server"></span>
                                </td>
                                <td>
                                    <span id="ShortDesc_SDS" runat="server"></span>
                                </td>
                                <td>
                                    <span id="LongDescription_DSC" runat="server"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="ERR_D" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                    </div>
                </div>
                <input style="display: none;" id="pageIndex" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
