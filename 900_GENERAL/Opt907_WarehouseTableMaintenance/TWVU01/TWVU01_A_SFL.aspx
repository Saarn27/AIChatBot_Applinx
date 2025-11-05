<%@ Page MasterPageFile="~/template.master" Inherits="TWVU01_A_SFL" CodeFile="TWVU01_A_SFL.aspx.cs" Language="C#" %>

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
            <gal-table-header text="Ship" start-column="10" end-column="11"></gal-table-header>
            <gal-table-header text="Invoice" start-column="12" end-column="14"></gal-table-header>
            <gal-table-header text="Omit" start-column="15" end-column="17"></gal-table-header>
            <div class="table-container">
                <table id="TWVU01_A_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="custNumFilter_S_TWVCUST" runat="server" />
                                </gal-input>
                                <span>Customer</span>
                            </th>
                            <th>
                                <gal-input input-size="small2" no-description>
                                    <input id="cusNameFilter_S_CNME1" runat="server" />
                                </gal-input>
                                <span>%Customer name</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="whsFilter_S_TWVWHS" runat="server" />
                                </gal-input>
                                <span>Wh</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="srFilter_S_TWVFWHS" runat="server" />
                                </gal-input>
                                <span>Sr</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="conFilter_S_TWVCONS" runat="server" />
                                </gal-input>
                                <span>Con</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="siteIdFilter_S_TWVSITE" runat="server" />
                                </gal-input>
                                <span>%Site id</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="cribFilter_S_TWVCRIB" runat="server" />
                                </gal-input>
                                <span>%Crib</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="vendTypeFilter_S_TWVVTYP" runat="server" />
                                </gal-input>
                                <span>%Vending type</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="addrsFilter_S_TWVADDNS" runat="server" />
                                </gal-input>
                                <span>Address</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="mtdFilter_S_TWVSPC" runat="server" />
                                </gal-input>
                                <span>Method</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="frqFilter_S_TWVINVF" runat="server" />
                                </gal-input>
                                <span>Freq</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="ctlFilter_S_TWVINVW" runat="server" />
                                </gal-input>
                                <span>Ctl</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="conFilter_S_TWVCONSI" runat="server" />
                                </gal-input>
                                <span>Con</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="minMaxFilter_S_TWVOMM" runat="server" />
                                </gal-input>
                                <span>MinMax</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="usgFilter_S_TWVOAVE1" runat="server" />
                                </gal-input>
                                <span>Usage</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="slvlFilter_S_TWVOFRQ" runat="server" />
                                </gal-input>
                                <span>S.lvl</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="fixAssetFilter_S_TWVCOD11" runat="server" />
                                </gal-input>
                                F.A</th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="S_TWVCWQ" runat="server" />
                                </gal-input>
                                <span>Qty Chk</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="S_TWVOWN" runat="server" />
                                </gal-input>
                                <span>Owner</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="fmtFilter_S_TWVFMT" runat="server" />
                                </gal-input>
                                <span>Format</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="prcFilter_S_TWVPRCU" runat="server" />
                                </gal-input>
                                <span>Priec src</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="qFilter_S_TWVQUT" runat="server" />
                                </gal-input>
                                <span>Quotation</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_A_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td columntype="primaryNumber"><span id="CustNo_A_TWVCUST" runat="server"></span></td>
                            <td><span id="CustomerName_A_CNME1" runat="server"></span></td>
                            <td><span class="no-color" id="Wh_A_TWVWHS" runat="server"></span></td>
                            <td><span id="Sr_A_TWVFWHS" runat="server"></span></td>
                            <td><span id="Con_A_TWVCONS" runat="server"></span></td>
                            <td><span id="SiteId_A_TWVSITE" runat="server"></span></td>
                            <td><span id="Crib_A_TWVCRIB" runat="server"></span></td>
                            <td><span id="VendingTyp_A_TWVVTYP" runat="server"></span></td>
                            <td><span id="Address_A_TWVADDNS" runat="server"></span></td>
                            <td><span id="Mtd_A_TWVSPC" runat="server"></span></td>
                            <td><span id="Frq_A_TWVINVF" runat="server"></span></td>
                            <td><span id="Ctl_A_TWVINVW" runat="server"></span></td>
                            <td><span id="Con_A_TWVCONSI" runat="server"></span></td>
                            <td><span id="Mimmax_A_TWVOMM" runat="server"></span></td>
                            <td><span id="Usg_A_TWVOAVE1" runat="server"></span></td>
                            <td><span id="Lvl_A_TWVOFRQ" runat="server"></span></td>
                            <td><span id="Fa_A_TWVCOD11" runat="server"></span></td>
                            <td><span id="qtyCheck_A_TWVCWQ" runat="server"></span></td>
                            <td><span id="Own_A_TWVOWN" runat="server"></span></td>
                            <td><span id="Fmt_A_TWVFMT" runat="server"></span></td>
                            <td><span id="Prc_A_TWVPRCU" runat="server"></span></td>
                            <td>
                                <span id="Q_A_TWVQUT" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn" style="margin-top: 0px">
                    <gal-input label-text="Vending machines" label-size="auto" input-size="small" no-description>
                        <input id="VendingMachines_A_NOV" runat="server" />
                    </gal-input>
                    <span class="invalid-feedback" id="msg_B_MSG" runat="server"></span>
                    <button class="btn btn-primary big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <style>
        .gal6-table-striped.less-padding-table > :not(caption) > * > * {
            padding: 4px !important;
        }
    </style>
</asp:Content>
