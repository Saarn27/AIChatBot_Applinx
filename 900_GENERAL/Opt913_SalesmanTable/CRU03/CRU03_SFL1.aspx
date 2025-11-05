<%@ Page MasterPageFile="~/template.master" Inherits="CRU03_SFL1" CodeFile="CRU03_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SALESMAN TABLE MAINTENANCE </h1>
            </div>
            <div class="table-container">
                <table id="CRU03_SFL1_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="salsemanFilter_SEL1" runat="server" />
                                </gal-input>
                                <span>Salesman</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="salsemanNameFilter_SEL2" runat="server" />
                                </gal-input>
                                <span>%Salesman name</span>
                            </th>
                            <th>
                                <span>Customer number</span>
                            </th>
                            <th columntype="date">
                                <span>Update Date</span>
                            </th>
                            <th columntype="price">
                                <span>Credit limit</span>
                            </th>
                            <th columnype="qty">
                                <span>Due Amount</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="Salesman_COD" runat="server"></span></td>
                            <td><span id="SalesmanName_NAM" runat="server"></span></td>
                            <td><span id="CustNo_SCT" runat="server"></span></td>
                            <td columntype="date"><span id="updateeDate_UPD" runat="server" galtype="date" dateformat="dd/mm/yy"></span></td>
                            <td columntype="price"><span id="Limit_CRD" runat="server"></span></td>
                            <td columnype="qty"><span id="Amount_OVR" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <div class="legend-div">
                <legend-block text="Over credit limit" text-color color="red"></legend-block>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
