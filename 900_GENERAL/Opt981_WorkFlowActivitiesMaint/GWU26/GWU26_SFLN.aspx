<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_SFLN" CodeFile="GWU26_SFLN.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY - MAINTENANCE</h1>
            </div>
            <gal-input-help label-size="small" label-text="Current user:" input-size="xlarge">
                <input id="currentUser_SLUSR" runat="server" />
                <input id="currentUserName_SLUSRN" runat="server" />
            </gal-input-help>
            <div class="table-container">
                <table id="workFlowActMaintTable_SFLN" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th sortby="typeTitle">
                                <div class="centered-flex">
                                    <gal-input input-size="small" no-description>
                                        <select id="filterWorkflowType_SLTYP" runat="server"></select>
                                    </gal-input>
                                    <gal-input input-size="xxsmall" no-description>
                                        <gx:GXCheckBox ID="astericFilter_SLINADV" CheckedValue="*" UncheckedValue=" " runat="server" />
                                    </gal-input>
                                </div>
                                <span>Type</span>
                            </th>
                            <th sortby="doNumberTitle" columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="filterWorkFlowDocNumber__SLDOC" runat="server" />
                                </gal-input>
                                <span>Document number</span>
                            </th>
                            <th sortby="doDescriptionTitle">
                                <gal-input input-size="large" no-description>
                                    <input id="filterWorkFlowDocDesc__SLDSC" runat="server" />
                                </gal-input>
                                <gal-input input-size="large" no-description>
                                    <input id="filterWorkFlowRemark_SLRMK1" runat="server" />
                                </gal-input>
                                <span>%Document description</span>
                            </th>
                            <th sortby="custVendorTiltle">
                                <gal-input-help input-size="medium" no-description>
                                    <input id="filterWorkFlowCustVendName__SLCSTNMEN" runat="server" />
                                </gal-input-help>
                                <gal-input input-size="medium" no-description>
                                    <input id="filterWorkFlowDep_SIMC" runat="server" />
                                </gal-input>
                                <span>Customer/Vendor</span>
                            </th>
                            <th sortby="deptTitle">
                                <gal-input-help input-size="small" no-description>
                                    <input id="filterWorkFlowCustVendNum__SLCST" runat="server" />
                                </gal-input-help>
                                <span>Department</span>
                            </th>
                            <th sortby="nextUserTitle">
                                <gal-input-help input-size="medium" no-description>
                                    <input id="filterWorkFlowNextUser__SLNXTUSRN" runat="server" />
                                </gal-input-help>
                                <span>Next user</span>
                            </th>
                            <th sortby="dateTitle" columntype="date">
                                <gal-input input-size="small" no-description>
                                    <input id="filterWorkFlowDate__SLDATEN" galtype="date" dateformat="ddmmy" runat="server" />
                                </gal-input>
                                <span>Date</span>
                            </th>
                            <th sortby="delayDaysTitle" columntype="qty">
                                <gal-input input-size="small" no-description>
                                    <input id="filterWorkFlowDaysDelay_SLDLY" runat="server" />
                                </gal-input>
                                <span>Days delay</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <select id="filterWorkFlowValueSign_SSLVALN" runat="server">
                                        <option value=""></option>
                                        <option value=">">>  Greater than</option>
                                        <option value="<"><  Less than</option>
                                        <option value="=">=  Equal to</option>
                                    </select>
                                </gal-input>
                                <gal-input input-size="medium" no-description>
                                    <input id="filterWorkFlowValue_SLVALN" runat="server" />
                                </gal-input>
                                <span>Workflow value</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span class="double-span" id="workflowType_WFTYP" runat="server"></span>
                                <span id="indicator" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="workFlowDocNum_DOCN" runat="server"></span>
                            </td>
                            <td>
                                <span class="double-span" id="workFlowDocDesc_WFDSC" runat="server"></span>
                                <span id="workFlowRemark_RMKN" runat="server"></span>
                            </td>
                            <td>
                                <span id="customerVendName_CUSTDN" runat="server"></span>
                            </td>
                            <td>
                                <span id="departmentDesc_CST" runat="server"></span>
                            </td>
                            <td>
                                <span id="workFlowNxtUser_WFDSC" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="workFlowDate_DAT" runat="server" galtype="date" dateformat="ddmmy"></span>
                            </td>
                            <td columntype="qty">
                                <span id="workFlowDaysDelay_CNTD" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="totalValue_VAL" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
            <div class="legend-div">
                <legend-block color="yellow" text="Info"></legend-block>
                <legend-block color="aqua" text="Return"></legend-block>
                <legend-block color="red" text="Error"></legend-block>
                <legend-block text="Handling" color="blue"></legend-block>
                <legend-block color="red" text-color id="dynamicAsteric"></legend-block>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        if (document.getElementById("ctl00_GXPagePlaceHolder_filterWorkflowType_SLTYP").value == "RQS") {
            document.getElementById("dynamicAsteric").setAttribute("text", "*=Priority 1");
        } else { document.getElementById("dynamicAsteric").setAttribute("text", "*=In Adv/Crd"); }
    </script>
</asp:Content>
