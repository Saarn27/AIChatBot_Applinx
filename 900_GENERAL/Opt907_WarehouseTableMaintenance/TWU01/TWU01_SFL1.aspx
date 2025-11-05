<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_SFL1" CodeFile="TWU01_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <%--Action Bar definition--%>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Warehouse Table Maintenance</h1>
            </div>

            <%--Header selection--%>
            <gal-input input-size="small" label-size="small" label-text="Selection:" no-description>
                <select id="selection_S_COL" type="text" auto-update runat="server">
                    <option value=""></option>
                    <option value="H">H=Hold</option>
                    <option value="N">N=Note</option>
                    <option value="V">V=Vending</option>
                </select>
            </gal-input>

            <%--Subfile table--%>
            <gal-table-header text="CODES" start-column="4" end-column="10"></gal-table-header>
            <div class="table-container">
                <table id="warehouseTable_SFL1" runat="server" class="table gal6-table-striped mt-0">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <%--Master checkbox, selects all rows for mutiple rows option.--%>
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <%--Table headers and selections--%>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input class="input-small" id="whsSel_S_TWHS" runat="server" />
                                </gal-input>
                                <span>Warehouse</span>
                            </th>

                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="whsDesSel_S_TWDSC" runat="server" />
                                </gal-input>
                                <span>%Description</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="partOfStockSel_S_TWWH1" runat="server" />
                                </gal-input>
                                <span>Part of stock</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="dsp_S_TWWH2" runat="server" />
                                </gal-input>
                                <span>Display</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="type_S_TWCONS" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="imc_S_TWIMC" runat="server" />
                                </gal-input>
                                <span>Sys</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="rcv_S_TWRCT" runat="server" />
                                </gal-input>
                                <span>Receipt</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="plan_S_TWMRP" runat="server" />
                                </gal-input>
                                <span>Planning</span>
                            </th>

                            <th columntype="qty">
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="atp_S_TWATP" runat="server" />
                                </gal-input>
                                <span>ATP</span>
                            </th>

                            <th columntype="qty"><span>Sort</span></th>

                            <th columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="custNo_S_TWCUST" runat="server" />
                                </gal-input>
                                <span>Customer number</span>
                            </th>

                            <th columntype="date"><span>Update date</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <%-- checkbox for mutiple rows option.--%>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <%--Table column data--%>
                            <td><span id="whs_COD" runat="server"></span></td>
                            <td><span id="whsDes_SDS" runat="server"></span></td>
                            <td><span id="partOfStk_PART" runat="server"></span></td>
                            <td><span id="dsp_DISP" runat="server"></span></td>
                            <td><span id="typ_TYPE" runat="server"></span></td>
                            <td><span id="imc_IMC" runat="server"></span></td>
                            <td><span id="rcv_RECEIP" runat="server"></span></td>
                            <td><span id="plan_PLAN" runat="server"></span></td>
                            <td columntype="qty"><span id="atp_ATP" runat="server"></span></td>
                            <td columntype="qty"><span id="sort_SORT" runat="server"></span></td>
                            <td columntype="primaryNumber"><span id="custNo_CUST" runat="server"></span></td>
                            <td columntype="date">
                                <span galtype="date" dateformat="ddmmy" id="update_UPDDAT" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <div class="message-container message-container-with-btn mt-0">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <%--Error message at the bottom of the screen--%>

            <%--Colors definitions--%>
            <div class="legend-div">
                <legend-block text="Vending" color="purple"></legend-block>
                <legend-block text="Note" color="blue"></legend-block>
                <legend-block text="Hold" color="red"></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
