<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_SFL2" CodeFile="TWU01_SFL2.aspx.cs" Language="C#" %>

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
            <div class="table-container">
                <table id="warehouseTable_SFL2" runat="server" class="table gal6-table-striped mt-0">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <%--Master checkbox, selects all rows for mutiple rows option.--%>
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <%--Table headers and selections--%>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="whsSel_S_TWHS" runat="server" />
                                </gal-input>
                                <span>
                                    <br />
                                    Warehouse</span>
                            </th>

                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="whsDesSel_S_TWDSC" runat="server" />
                                </gal-input>
                                <span>
                                    <br />
                                    %Description</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="stkDlv_US01" runat="server" />
                                </gal-input>
                                <span>Stock For<br />
                                    Delivery</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="exp_US02" runat="server" />
                                </gal-input>
                                <span>
                                    <br />
                                    Exception</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="purch_US03" runat="server" />
                                </gal-input>
                                <span>Initiate
                                    <br />
                                    Purchase</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="purchStat_US04" runat="server" />
                                </gal-input>
                                <span>Purchase
                                    <br />
                                    Statistics</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="coo_US05" runat="server" />
                                </gal-input>
                                <span>Country Of
                                    <br />
                                    Origin</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="fulAvg_US06" runat="server" />
                                </gal-input>
                                <span>Full
                                    <br />
                                    Average</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="proDuc_US07" runat="server" />
                                </gal-input>
                                <span>
                                    <br />
                                    Producer</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="stkTyp_US08" runat="server" />
                                </gal-input>
                                <span>Stock<br />
                                    Type</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="locSc_US09" runat="server" />
                                </gal-input>
                                <span>Stock code
                                    <br />
                                    Manegment type</span>
                            </th>

                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="whsOem_US10" runat="server" />
                                </gal-input>
                                <span>Father
                                    <br />
                                    WHS/OEM</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="psCon_US11" runat="server" />
                                </gal-input>
                                <span>Slip<br />
                                    Control</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="rmyDsp_US12" runat="server" />
                                </gal-input>
                                <span>Remote
                                    <br />
                                    Display</span>
                            </th>
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
                            <td><span id="cod_COD" runat="server"></span></td>
                            <td><span id="whsDes_SDS" runat="server"></span></td>
                            <td><span id="stkDel_USS01" runat="server"></span></td>
                            <td><span id="exp_USS02" runat="server"></span></td>
                            <td><span id="purchInt_USS03" runat="server"></span></td>
                            <td><span id="purchStat_USS04" runat="server"></span></td>
                            <td><span id="coo_USS05" runat="server"></span></td>
                            <td><span id="fulAvg_USS06" runat="server"></span></td>
                            <td><span id="proDuc_USS07" runat="server"></span></td>
                            <td><span id="stkTyp_USS08" runat="server"></span></td>
                            <td><span id="locSc_USS09" runat="server"></span></td>
                            <td><span id="whsDem_USS10" runat="server"></span></td>
                            <td><span id="psCon_USS11" runat="server"></span></td>
                            <td>
                                <span id="rmtDsp_USS12" runat="server"></span>
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
            <%--Colors definitions--%>
            <div class="legend-div">
                <legend-block text="Vending" color="purple"></legend-block>
                <legend-block text="Note" color="blue"></legend-block>
                <legend-block text="Hold" color="red"></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
