<%@ Page MasterPageFile="~/template.master" Inherits="T0U01V_SFL" CodeFile="T0U01Z_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">LOTUS / VALUATION TABLE MAINTENANCE</h1>
                <span class="blue-headline sub-headline" id="type_TYP" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="blue-headline sub-headline">Confirm Deletion</span>
            </div>
            <div class="table-container">
                <table id="T0U01Z_SFLD_1" runat="server" class="table gal6-table-striped no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Producer</span>
                            </th>
                            <th class="input-medium">
                                <span>Name</span>
                            </th>
                            <th>
                                <span>Valuation code</span>
                            </th>
                            <th>
                                <span>Line in lotus</span>
                            </th>
                            <th>
                                <span>Lotus Code</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="Producer_PRD" runat="server"></span></td>
                            <td><span id="Name_SDS" runat="server"></span></td>
                            <td><span id="Valuation_FRS" runat="server"></span></td>
                            <td><span id="lineInLotus_LIN" runat="server"></span></td>
                            <td><span id="LotusCode_COD" runat="server"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
