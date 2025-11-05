<%@ Page MasterPageFile="~/template.master" Inherits="GHU05_SFL" CodeFile="GHU05_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
  
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <%--Action Bar definition--%>
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <%--Define headline--%>
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">HOLD-PROCESS MAINTENANCE LIST</h1>
            </div>

            <%--Filters--%>
            <div class="column-form">
                    <div class="spaced-column">
                        <gal-input-help label-text="Customer number:" label-size="medium" input-size="large">
                            <input id="CustomerNum_CUST" runat="server" />
                            <input id="customerDescription_NME1" runat="server" />
                        </gal-input-help>
                    </div>

                    <div class="spaced-column">
                        <gal-input-help label-text="Customer order number:" label-size="large" input-size="medium" no-description>
                            <input id="customerOrder_ORD" runat="server" />
                        </gal-input-help>
                    </div>

                    <div class="spaced-column">
                        <gal-input-help label-text="Item number:" label-size="small" input-size="medium" no-description>
                            <input id="ItemNumber_CAT" runat="server" />
                        </gal-input-help>
                    </div>
            </div>

            
            <br />

            <%--Subfile table--%>
            <div class="table-container"><table id="GHU05_SFL_table" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <%--Master checkbox, selects all rows for mutiple rows option.--%>
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <%--Table headers and selections--%>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <select id="entitySelect_TYP" runat="server"></select>
                            </gal-input>
                            <span>Entity</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="entityDescSelect_TYP_D" runat="server" />
                            </gal-input>
                            <span>Entity Description</span>
                        </th>
                        <th>
                            <gal-input input-size="small" no-description>
                                <input id="holdSelect_HLD" runat="server" />
                            </gal-input>        
                            <span>Hold</span>
                            
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="holdDescSelect_HLD_D" runat="server" />
                            </gal-input>
                            <span>%Hold Description</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <select id="holdActionSelect_EXP" runat="server"></select>
                            </gal-input>
                            <span>Hold Action</span>
                        </th>
                        <th>
                            <gal-input input-size="xsmall" no-description>
                                <input id="statusSelect_STS" runat="server" />
                            </gal-input>
                            <span>Status</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="keyValueSelect_KEY" runat="server" />
                            </gal-input>
                            <span>%Key Value</span>
                        </th>
                        <th columnType="qty" style="margin-right:-5px">
                            <gal-input input-size="xsmall" no-description>
                                <input id="lineSelect_LINE" runat="server" />
                            </gal-input>
                            <span>Line</span>
                        </th>
                        <th>
                            <gal-input-help input-size="medium" no-description>
                                <input id="userSelect_USR" runat="server" />
                            </gal-input-help>
                            <span>User</span>
                        </th>
                        <th columnType="date" style="width:100px">
                            <gal-input input-size="medium" no-description>
                                <input id="openDateSelect_TOPN" galtype="date" dateformat="ddmmy" placeholder='DDMMYY' runat="server" />
                            </gal-input>
                            <span>Open date</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%-- checkbox for mutiple rows option.--%>
                        <td class="option-column">
                            <input class="row-selector-cell" id="optionCol_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <%--Table column data--%>
                        <td><span id="entityCol_TYP" runat="server"></span></td>
                        <td><span id="EntityDescCol_TYP_D" runat="server"></span></td>
                        <td><span id="holdCol_HLD" runat="server"></span></td>
                        <td><span id="holdDescCol_HLD_D" runat="server"></span></td>
                        <td><span id="actionCol_EXP" runat="server"></span></td>
                        <td><span id="statusCol_STS" runat="server"></span></td>
                        <td><span id="keyValueCol_KEY" runat="server"></span></td>
                        <td columnType="qty"><span id="lineCol_LINE" runat="server"></span></td>
                        <td><span id="userCol_USR" runat="server"></span></td>
                        <td columnType="date" style="width:100px">
                            <span id="openDateCol_TOPN" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
            <div class="message-container">
                <span class="invalid-feedback" id="massage_MSG" runat="server"></span>
            </div>
            <div class="legend-div">
                <legend-block text="HOLD" color="red"></legend-block>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
