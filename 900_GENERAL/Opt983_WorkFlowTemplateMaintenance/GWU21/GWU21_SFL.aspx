<%@ Page MasterPageFile="~/template.master" Inherits="GWU21_SFL" CodeFile="GWU21_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW DEFINITION - MAINTENANCE</h1>
                <%--<span id="templateHeadline" class="spc-headline" runat="server"></span>--%>
                <span id="templateHeadline" class="headline" runat="server" style="color: #3c7ab7"></span>
            </div>
            <div class="table-container">
                <table id="workFlowDefinitionTable_SFL" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <select class="input-large" id="filterWorkflowType_SLTYP" runat="server"></select>
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="filterWorkflowNumber_SLNUM" runat="server" />
                                </gal-input>
                                <span>Workflow number</span>
                            </th>
                            <th>
                                <gal-input input-size="XXlarge" no-description>
                                    <input class="input-XXlarge" id="filterWorkflowDesc_SLDSC" runat="server" />
                                </gal-input>
                                <span>%Workflow Description</span>
                            </th>
                            <th>
                                <gal-input-help input-size="xsmall" no-description>
                                    <input class="input-medium" id="filterWorkflowApprovType_SLTYP1" runat="server" />
                                </gal-input-help>
                                <span>Approve type</span>
                            </th>
                            <th>
                                <span>Approve type description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <select id="filterWorkflowStatus_SLSTS1" runat="server">
                                        <option value=""></option>
                                        <option value="O">Open</option>
                                        <option value="C">Complete</option>
                                    </select>
                                </gal-input>
                                <span>Status</span>
                            </th>
                            <th>
                                <span>Error</span>
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
                                <span id="workflowType_WFTYP" runat="server"></span>
                            </td>

                            <td columntype="primaryNumber">
                                <span id="WorkflowNumber_WFNUM" runat="server"></span>
                            </td>

                            <td>
                                <span id="WorkflowDescription_WFDSC" runat="server"></span>
                            </td>

                            <td>
                                <span id="WorkflowApprovTyp_WFTYP1" runat="server"></span>
                            </td>

                            <td>
                                <span id="WorkflowApprovTypDesc_WFTYPD" runat="server"></span>
                            </td>

                            <td>
                                <span id="WorkflowApprovStatus_WFSTS1" runat="server"></span>
                            </td>

                            <td>
                                <span id="WorkflowError_WFERR" runat="server"></span>
                                <action-bar mode="single">
                                </action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div style="display: flex; justify-content: flex-end">
                    <button class="btn btn-primary big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
