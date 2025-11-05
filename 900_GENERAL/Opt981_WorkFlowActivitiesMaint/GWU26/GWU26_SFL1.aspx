<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_SFL1" CodeFile="GWU26_SFL1.aspx.cs" Language="C#" %>

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
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input-help label-size="small" label-text="Current user:" input-size="xlarge">
                        <input id="currentUserCode_SLUSR" runat="server" />
                        <input id="currentUserName_SLUSRN" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="small" label-text="Cost center:" input-size="xlarge" no-description>
                        <select id="costCenter_SLCST" runat="server"></select>
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="large" no-description>
                        <ipnut id="orderSign" runat="server" />
                    </gal-input>
                </div>
            </div>
            <tabs-list>
                <div id="generalTab_TAB1" text="General"></div>
                <div id="additionalTab_TAB2" text="Additional" active="true"></div>
                <div id="custSupplierTab_TAB3" text="Customer / Supplier"></div>
            </tabs-list>
            <div class="tab-content">
                <div class="tab-pane active" id="2">
                    <div class="table-container">
                        <table id="additionalTabTable_SFL1" runat="server" class="table gal6-table-striped">
                            <thead>
                                <tr class="grid-header">
                                    <th class="option-column">
                                        <input type="checkbox" id="masterCheckBox" /></th>
                                    <th sortby="titleType_CLMHDR1">
                                        <div class="centered-flex">
                                            <gal-input input-size="small" no-description>
                                                <select id="filterTypeWorkFlow_SLTYP" runat="server" style="font-size: 8px"></select>
                                            </gal-input>
                                            <gal-input input-size="xxsmall" no-description>
                                                <gx:GXCheckBox ID="astericFilter_SLINADV" CheckedValue="*" UncheckedValue=" " runat="server" />
                                            </gal-input>
                                        </div>
                                        <span id="titleType_CLMHDR1">Type</span>
                                    </th>
                                    <th sortby="titleDocNum_CLMHDR2">
                                        <gal-input label-text=" " input-size="medium" no-description>
                                            <input id="filterDocNumWorkFlow_SLDOC" runat="server" />
                                        </gal-input>
                                        <span id="titleDocNum_CLMHDR2">Document number</span>
                                    </th>
                                    <th sortby="titleDocDescription_CLMHDR3">
                                        <gal-input label-text=" " input-size="xlarge" no-description>
                                            <input id="filterDocDescWorkFlow_SLDSC" runat="server" />
                                        </gal-input>
                                        <gal-input label-text=" " input-size="xlarge" no-description>
                                            <input id="filterRemarkWorkFlow_SLRMK1" runat="server" />
                                        </gal-input>
                                        <span id="titleDocDescription_CLMHDR3" runat="server"></span>
                                    </th>
                                    <th sortby="titleCurrentUser_CLMHDR7">
                                        <span id="titleCurrentUser_CLMHDR7" runat="server"></span>
                                    </th>
                                    <th sortby="titleType_CLMHDR8">
                                        <gal-input label-text=" " input-size="xxsmall" no-description>
                                            <input id="filterWorkFlowType_SLAPTYP" runat="server" />
                                        </gal-input>
                                        <span id="titleType_CLMHDR8">Approve/Information</span>
                                    </th>
                                    <th sortby="titleAuth_CLMHDR9">

                                        <span id="titleAuth_CLMHDR9">Finance Authorization </span>
                                    </th>
                                    <th columntype="primaryNumber" sortby="titleWorkFlowNumber_CLMHDR10">
                                        <gal-input label-text=" " input-size="small,xxsmall" no-description>
                                            <input id="filterWorkFlowNumber_SLNUM" runat="server" />
                                        </gal-input>
                                        <span id="titleWorkFlowNumber_CLMHDR10">Workflow number</span>
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
                                        <span id="workFlowType_WFTYP" runat="server"></span>
                                        <span class="double-span" id="indicatorAdvance_INADV" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="workFlowDocNumber_DOCN" runat="server"></span>
                                    </td>
                                    <td>
                                        <span class="double-span" id="workFlowDocDesc_WFDSC" runat="server"></span>
                                        <span id="workFlowRemark_RMKF" runat="server"></span>
                                    </td>
                                    <td>
                                        <span class="double-span" id="currentUser_CURUSR" runat="server"></span>
                                        <span id="manufPurchSFL" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="workFlowType_APRTYP" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="authorizeNumber_USRA" runat="server"></span>
                                    </td>
                                    <td columntype="primaryNumber" style="width: 180px;">
                                        <span id="workFlowNumber_WFNUM" runat="server"></span>
                                        <action-bar mode="single"></action-bar>
                                    </td>
                                    <%--<td>
                                    <span class="label-medium" id="indicatorAdvance_INADV" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>--%>
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
                        <legend-block text="Info" color="yellow"></legend-block>
                        <legend-block text="Return" color="aqua"></legend-block>
                        <legend-block text="Error" color="red"></legend-block>
                        <legend-block text="Handling" color="blue"></legend-block>
                        <legend-block color="red" text-color id="dynamicAsteric"></legend-block>
                    </div>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none" />
    </div>
    <script>
        if (document.getElementById("ctl00_GXPagePlaceHolder_filterTypeWorkFlow_SLTYP").value == "RQS") {
            document.getElementById("dynamicAsteric").setAttribute("text", "*=Priority 1");
        } else { document.getElementById("dynamicAsteric").setAttribute("text", "*=In Adv/Crd"); }
    </script>
</asp:Content>
