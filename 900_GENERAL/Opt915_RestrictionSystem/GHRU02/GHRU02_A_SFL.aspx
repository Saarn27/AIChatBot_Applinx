<%@ Page MasterPageFile="~/template.master" Inherits="GHRU02_A_SFL" CodeFile="GHRU02_A_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Order Warehouse Sorting</h1>
            </div>
            <div class="table-container"><table id="GHRU02_A_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th style="width: 300px">
                            <gal-input input-size="xsmall" no-description>
                                <select id="ordWhs_S_WHS" runat="server"></select>
                            </gal-input>
                            <span>Order Warehouse</span>
                        </th>
                        <th style="width: 500px">
                            <gal-input input-size="large" no-description>
                                <input id="description_S_WHSD" runat="server"/>
                            </gal-input>
                            <span>%Description</span>
                        </th>
                        <th style="width: 300px">
                            <gal-input input-size="xsmall" no-description>
                                <input id="priority_S_PRI" runat="server" />
                            </gal-input>
                            <span>Priority</span>
                        </th>
                        <th style="width: 300px">
                            <gal-input input-size="xsmall" no-description>
                                <select id="alternateWhs_S_AWHS" runat="server"></select>
                            </gal-input>
                            <span>Alternative Warehouse</span>
                        </th>
                        <th style="width: 500px">
                            <gal-input input-size="large" no-description>
                                <input id="description_S_AWHSD" runat="server" />
                            </gal-input>
                            <span>%Description</span>
                        </th>
                        <th style="width: 300px">
                            <gal-input input-size="xsmall" no-description>
                                <input id="act_S_ACOD" runat="server" />
                            </gal-input>
                            <span>Action Code</span>
                        </th>
                        <th style="width: 300px">
                            <gal-input-help input-size="large" no-description>
                                <input id="user_S_USER" runat="server" />
                            </gal-input-help>
                            <span>User</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_A_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="warehouse_A_WHS" runat="server"></span></td>
                        <td><span id="description_A_WHSD" runat="server"></span></td>
                        <td><span id="priority_A_PRI" runat="server"></span></td>
                        <td><span id="alternateWhs_A_AWHS" runat="server"></span></td>
                        <td><span id="description_A_AWHSD" runat="server"></span></td>
                        <td><span id="act_A_ACOD" runat="server"></span></td>
                        <td><span id="user_A_USER" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
