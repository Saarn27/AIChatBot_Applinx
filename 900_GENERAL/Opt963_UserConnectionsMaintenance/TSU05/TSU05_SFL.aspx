<%@ Page MasterPageFile="~/template.master" Inherits="TSU05_SFL" CodeFile="TSU05_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">User Connection Maintenance</h1>
            </div>

            <div style="width: fit-content">

                <gal-table-header text="Active Date" start-column="10" end-column="11"></gal-table-header>
                <gal-table-header text="Printer" start-column="14" end-column="15"></gal-table-header>
                <div class="table-container">
                    <table id="TSU05_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="typeFilter_STR1" runat="server" />
                                    </gal-input>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <span>Description</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small2" no-description>
                                        <input id="userFilter_SEL1" runat="server" />
                                    </gal-input-help>
                                    <span>User</span>
                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>
                                        <input id="userNameFilter_S_TSUNME" runat="server" />
                                    </gal-input>
                                    <span>%User name</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small2" no-description>
                                        <input id="groupDlgFilter_SEL2" runat="server" />
                                    </gal-input-help>
                                    <span>Group/Delegation</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="xsmall" no-description>
                                        <input id="cmpFilter_SEL3" runat="server" />
                                    </gal-input-help>
                                    <span>Company</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="rmtFilter_SEL5" runat="server" />
                                    </gal-input>
                                    <span>Remote</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="lFilter_SEL6" runat="server" />
                                    </gal-input>
                                    <span>Limitation</span>
                                </th>
                                <th>
                                    <span>From</span>
                                </th>
                                <th>
                                    <span>To</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="seqFilter_SEL4" runat="server" />
                                    </gal-input>
                                    <span>Seq.</span>
                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>
                                        <input id="seqDsc_S_SEQ_D" runat="server" />
                                    </gal-input>
                                    <span>%Sequence Description</span>
                                </th>
                                <th>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <span>Remark</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small" no-description>
                                        <input id="depFilter_S_YDEP" runat="server" />
                                    </gal-input-help>
                                    <span>%Department</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="OPT" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td><span id="type_TYPE" runat="server"></span></td>
                                <td><span id="description_TYPDSC" runat="server"></span></td>
                                <td><span id="user_USR" runat="server"></span></td>
                                <td><span id="userName_A_TSUNME" runat="server"></span></td>
                                <td><span id="groupDlg_GRP" runat="server"></span></td>
                                <td><span id="cmp_CMP" runat="server"></span></td>
                                <td><span id="rmt_TYP1" runat="server"></span></td>
                                <td><span id="l_DA1" runat="server"></span></td>
                                <td columntype="date"><span id="from_A_TSGFDAT" runat="server" galtype="date" dateformat="ddmmy"></span></td>
                                <td columntype="date"><span id="to_DATETO" runat="server" galtype="date" dateformat="ddmmy"></span></td>
                                <td><span id="seq_SEQ" runat="server"></span></td>
                                <td><span id="sequenceDesc_A_SEQ_D" runat="server"></span></td>
                                <td><span id="typ_SLCOD2" runat="server"></span></td>
                                <td><span id="rmk_SLCOD4" runat="server"></span></td>
                                <td><span id="dep_A_YDEP" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />

                    <div class="column-form">
                        <gal-input label-text="Records:" label-size="medium" input-size="small" no-description>
                            <input id="records_C_RRN" runat="server" />
                        </gal-input>
                    </div>

                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>

            <div class="legend-div" style="margin-left: 5px;">
                <legend-block text="Not active" color="red"></legend-block>
            </div>

        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
