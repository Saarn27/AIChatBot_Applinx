<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU05_SFLD.aspx.cs" Inherits="TSU05_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Duplicate accounts</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>

    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            
                <div class="table-container">
                    <table id="TSU05_SFLD_1" runat="server" class="table gal6-table-striped ">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <span>User</span>
                                </th>
                                <th>
                                    <span>Group/Delegation</span>
                                </th>
                                <th>
                                    <span>Company</span>
                                </th>
                                <th>
                                    <span>Date To</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="type_TYPE" runat="server"></span>
                                </td>
                                <td>
                                    <span id="user_USR" runat="server"></span>
                                </td>
                                <td>
                                    <span id="groupDelg_GRP" runat="server"></span>
                                </td>
                                <td>
                                    <span id="cmp_CMP" runat="server"></span>
                                </td>
                                <td>
                                    <span id="dateTo_DATETO" runat="server"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>

                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                    </div>

                </div>            
            <input style="display: none;" id="pageIndex" runat="server" />

        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />

</asp:Content>
