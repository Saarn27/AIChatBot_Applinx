<%@ Page MasterPageFile="~/template.master" Inherits="TWVU01_F_SFL" CodeFile="TWVU01_F_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">vending machine maintenance</h1>
            </div>
            <div class="table-container">
                <table id="TWVU01_F_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="custNumFilter_SF_TWVCUST" runat="server" />
                                </gal-input>
                                <span>Customer number</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="custNameFilter_S_F_CNME1" runat="server" />
                                </gal-input>
                                <span>%Customer name</span>
                            </th>
                            <th>
                                <span id="dynamicLabel_H_TWVCOD15" runat="server"></span>
                            </th>
                            <th>
                                <span>Go live date</span>
                            </th>
                            <th columntype="date">
                                <span>Open date</span>
                            </th>
                            <th>
                                <span>Open user</span>
                            </th>
                            <th>
                                <span>User name</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_F_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td columntype="primaryNumber"><span id="CustNo_F_TWVCUST" runat="server"></span></td>
                            <td><span id="CustomerName_F_CNME1" runat="server"></span></td>
                            <td><span id="CostValue_F_TWVCOD15" runat="server"></span></td>
                            <td><span id="GoLiveDate_F_TWVTGL" runat="server"></span></td>
                            <td><span id="OpenDate_F_TWVTCHG" runat="server" galtype="date" dateformat="dd/mm/yy"></span></td>
                            <td><span id="OpenUser_F_TWVUSR" runat="server"></span></td>
                            <td>
                                <span id="UserName_F_TSUNME" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <gal-input label-text="Vending machines" label-size="auto" input-size="small" no-description>
                        <input id="VendingMachines_F_NOV" runat="server" />
                    </gal-input>
                    <span class="invalid-feedback" id="msg_B_MSG" runat="server"></span>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
