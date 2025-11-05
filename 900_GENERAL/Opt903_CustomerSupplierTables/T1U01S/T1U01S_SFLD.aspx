<%@ Page MasterPageFile="~/template.master" Inherits="T1U01S_SFLD" CodeFile="T1U01S_SFLD.aspx.cs" Language="C#" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SHIPPING METHOD - DELETE CONFIRMATION</h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="T1U01S_SFLD_1" runat="server" style="width: 100%" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <span>Short description</span>
                                </th>
                                <th>
                                    <span>Long description</span>
                                </th>
                                <th>
                                    <span>Transfer company</span>
                                </th>
                                <th columntype="price">
                                    <span>Freight charge</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span id="type_TYP" runat="server"></span></td>
                                <td><span id="shippingCode_CODE" runat="server"></span></td>
                                <td><span id="shortDescription_SDS" runat="server"></span></td>
                                <td><span id="longDescription_DSC" runat="server"></span></td>
                                <td><span id="company_COMP" runat="server"></span></td>
                                <td columntype="price"><span id="freight_FREIGHT" runat="server"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                </div>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARAD" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
