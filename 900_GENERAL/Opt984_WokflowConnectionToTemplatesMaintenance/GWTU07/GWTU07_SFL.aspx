<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU07_SFL.aspx.cs" Inherits="GWTU07_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">WORKFLOW PROFESSIONALS LIST</h1>
                <span class="sub-headline blue-headline no-color">Maintenance</span>
            </div>
            <div class="table-container">
                <div class="column-form related-fields-area w-100">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input-help label-text="Type:" label-size="xsmall" input-size="large" no-description>
                                <select id="type_ST1" runat="server" onchange="gx_SubmitKeyInPos(type_ST1,'[enter]');"></select>
                            </gal-input-help>
                            <div class="centered-flex">
                                <div class="input-container">
                                    <label class="label-auto" for="SelectionInput1">Selection:</label>
                                    <input id="SelectionInputs1" runat="server" class="no-color input-small" fake-field onchange="gx_SubmitKeyInPos('SelectionInput1','[enter]')">
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInputs2" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value)"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <table id="GWTU07_SFL_1" runat="server" class="table gal6-table-striped less-padding-table w-100">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th sortby="numberTitle_TNUM" columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="numberFilter_SNUM" runat="server" />
                                </gal-input>
                                <span id="numberTitle_TNUM" runat="server"></span>
                            </th>
                            <th sortby="userTitle_TUSR">
                                <gal-input-help input-size="small2" no-description>
                                    <input id="userFilter_SUSR" runat="server" />
                                </gal-input-help>
                                <span id="userTitle_TUSR" runat="server">User</span>
                            </th>
                            <th sortby="priorityTitle_TPRI" columntype="primaryNumber">
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="priorityFilter_SPRI" runat="server" />
                                </gal-input>
                                <span id="priorityTitle_TPRI" runat="server">User</span>
                            </th>
                            <th sortby="financialApproverTitle_TFIN">
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="financialApproverFilter_SFIN" runat="server" />
                                </gal-input>
                                <span id="financialApproverTitle_TFIN" runat="server">User</span>
                            </th>
                            <th sortby="">
                                <gal-input input-size="xxsmall" no-description>
                                    <select id="destinatioTypeFilter_SWDP" runat="server"></select>
                                </gal-input>
                                <span id="destinationTypeTitle_TWDP" runat="server">User</span>
                            </th>
                            <th sortby="" columntype="primaryNumber">
                                <div class="centered-flex">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="amountFilter_SVAL" runat="server" />
                                    </gal-input>
                                    <gal-input style="text-align: left" input-size="xxsmall" no-description>
                                        <select id="amountSignFilter_SSIGN" runat="server">
                                            <option value=""></option>
                                            <option value="=">=</option>
                                            <option value=">">></option>
                                            <option value="<"><</option>
                                        </select>
                                    </gal-input>
                                </div>
                                <span id="amountTitle_TVAL" runat="server">User</span>
                            </th>
                            <th sortby="">
                                <gal-input input-size="xxsmall" no-description>
                                    <select id="supplierClassFilter_SVNDC" runat="server"></select>
                                </gal-input>
                                <span id="supplierClassTitle_TVNDC" runat="server">User</span>
                            </th>
                            <th sortby="LastTh_T_WFT">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="inputaboveLastTh_S_WFT" runat="server" />
                                </gal-input>
                                <span id="LastTh_T_WFT" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_LOPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td columntype="primaryNumber">
                                <span id="number_LNUM" runat="server"></span>
                            </td>
                            <td>
                                <span id="user_LUSR" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="priority_LPRI" runat="server"></span>
                            </td>
                            <td>
                                <span id="financialApprover_LFIN" runat="server"></span>
                            </td>
                            <td>
                                <span id="destinatioType_LWDP" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="amount_LVAL" runat="server"></span>
                            </td>
                            <td>
                                <span id="supplierClass_LVNDC" runat="server"></span>
                            </td>
                            <td>
                                <span id="LastTd_L_WFT" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
        <input id="offsetToPress" runat="server" fake-field style="display: none;"/>
        <div class="legend-div" style="margin-left: 5px;">
            <legend-block text="Inactive" color="red" text-color></legend-block>
        </div>
    </div>
    <script>

        function goToFakeHelp(offset) {
            const offsetToPress = document.querySelector("#ctl00_GXPagePlaceHolder_offsetToPress");
            offsetToPress.value = offset;
            gx_SubmitKey("[pf1]");
        }

        function ChangeText(id, beforeText, afterText) {
            const element = document.getElementById(id)
            if (element.innerText === beforeText) {
                element.innerText = afterText
            }
        }
        ChangeText("ctl00_GXPagePlaceHolder_userTitle_TUSR", "*User", "User")
        ChangeText("ctl00_GXPagePlaceHolder_priorityTitle_TPRI", "Pr", "Priority")
        ChangeText("ctl00_GXPagePlaceHolder_financialApproverTitle_TFIN", "F.A", "Financial approval")
        ChangeText("ctl00_GXPagePlaceHolder_destinationTypeTitle_TWDP", "Dest.type", "Destination type")
        ChangeText("ctl00_GXPagePlaceHolder_supplierClassTitle_TVNDC", "*Class", "Class")
        ChangeText("ctl00_GXPagePlaceHolder_LastTh_T_WFT", "WF TYP", "Workflow type")
    </script>
</asp:Content>
