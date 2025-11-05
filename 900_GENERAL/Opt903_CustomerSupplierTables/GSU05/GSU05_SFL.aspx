<%@ Page MasterPageFile="~/template.master" Inherits="GSU05_SFL" CodeFile="GSU05_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="action" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SHIPPING METHOD-COST</h1>
            </div>
            <div class="table-container">
                <table id="GSU05_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="cod_SEL1" runat="server">
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="courierName_SEL2" runat="server">
                                </gal-input>
                                <span>Courier name</span>
                            </th>
                            <th columntype="qty">
                                <span>Kg</span>
                            </th>
                            <th columntype="price"> 
                                <span>Cost</span>
                            </th>
                            <th columntype="price">
                                <span>Sub cost</span>
                            </th>
                            <th columntype="date">
                                <span>Date</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="cod_COD" runat="server"></span></td>
                            <td><span id="CourierName_DSC" runat="server"></span></td>
                            <td columntype="qty"><span id="kg_KGS" runat="server"></span></td>
                            <td columntype="price"><span id="cost_VALS" runat="server"></span></td>
                            <td columntype="price"><span id="subCost_VALSS" runat="server"></span></td>
                            <td columntype="date">
                                <span id="date_UPDDAT" galtype="date" dateformat="ddmmyy" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="msg" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
