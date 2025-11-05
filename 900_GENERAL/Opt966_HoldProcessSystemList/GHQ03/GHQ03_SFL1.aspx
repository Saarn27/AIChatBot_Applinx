<%@ Page MasterPageFile="~/template.master" Inherits="GHQ03_SFL1" CodeFile="GHQ03_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">HOLD PROCESS MAINTENANCE LIST</h1>
                <span id="limitedLabel" runat="server"></span>
            </div>
            <div class="table-container">
                <div class="column-form related-fields-area" style="width: 100%">
                    <div class="spaced-column">
                        <gal-input-help label-size="small" input-size="xlarge" label-text="Customer :">
                            <input id="cust_CUST" runat="server" />
                            <input id="custName_NME1" runat="server" />
                        </gal-input-help>
                        <div class="centered-flex">
                            <gal-input-help label-size="small" input-size="small2" label-text="Order :" no-description>
                                <input id="ord_ORD" runat="server" />
                            </gal-input-help>
                            <gal-input-help label-size="xsmall" input-size="small2" label-text="Item :" style="margin-left: 17px" no-description>
                                <input id="item_CAT" runat="server" />
                            </gal-input-help>
                        </div>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="small" input-size="medium" label-text="Stock Code :" no-description>
                            <select id="sc_STKCOD" runat="server"></select>
                        </gal-input>
                        <gal-input label-size="small" input-size="medium" label-text="Factory :" no-description>
                            <select id="fact_FACT" runat="server"></select>
                        </gal-input>
                    </div>
                </div>

                <table id="GHQ03_TABLE_SFL1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <select id="ent_TYP" runat="server"></select>
                                </gal-input>
                                <span>Entity</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="ae_ACE" runat="server" />
                                </gal-input>
                                <span>All/Entity</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="holdDesc_HLDD" runat="server" />
                                </gal-input>
                                <span>%Hold Description</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Customer Number</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Order</span>
                            </th>
                            <th>
                                <span>Line</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Item Number</span>
                            </th>
                            <th>
                                <span>Stock Code</span>
                            </th>
                            <th columntype="date">
                                <span>Open Date</span>
                            </th>
                            <th>
                                <span>Program</span>
                            </th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="select_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="entCol_TYP" runat="server"></span></td>
                            <td><span id="aeCol_ACE" runat="server"></span></td>
                            <td><span id="holdDescCol_HLDD" runat="server"></span></td>
                            <td columntype="primaryNumber"><span id="custNo_XCUST7" runat="server"></span></td>
                            <td columntype="primaryNumber"><span id="order_XORD7" runat="server"></span></td>
                            <td><span id="lin_XLINE7" runat="server"></span></td>
                            <td columntype="primaryNumber"><span id="itemNo_XCAT7" runat="server" class="link-span" onclick="moveToPrimaryKeyScreen(event, '7');" onmouseout="hideToolTip(event);" onmouseover="setToolTip(event,'item');"></span></td>
                            <td><span id="sc_SCSCSC" runat="server"></span></td>
                            <td columntype="date"><span id="opndat_XDATE7" runat="server" galtype="date" dateformat="ddmmy"></span></td>
                            <td><span id="program_XPGM7" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
            </div>

            <div class="bottom-line">
                <div class="column-form">
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="Number of Holds" input-size="small" no-description>
                            <input id="numberOfHolds_RECNBR" runat="server" />
                        </gal-input>
                    </div>
                </div>

            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
