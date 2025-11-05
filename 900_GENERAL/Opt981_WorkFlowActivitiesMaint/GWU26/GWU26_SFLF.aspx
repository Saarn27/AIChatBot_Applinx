<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_SFLF" CodeFile="GWU26_SFLF.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW APPROVAL</h1>
            </div>
            <div class="table-container"><table id="workFlowApprovalTable_SFLF" runat="server" class="table gal6-table-striped" style="min-height: 280px">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="small" no-description>
                                <input id="filterWorkFlowType_SLWFTYP" runat="server" />
                            </gal-input>
                            <span style="margin-right: 50px;">Workflow type</span>
                        </th>
                        <th><span style="margin-right: 50px;">Workflow name</span></th>
                        <th columnType="primaryNumber"><span>Waiting number</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_SELF" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td>
                            <span id="workFlowType_SWFTYP" runat="server"></span>
                        </td>
                        <td>
                            <span id="workFlowTypeDesc_SWFTYPD" runat="server"></span>
                        </td>
                        <td columnType="primaryNumber">
                            <span id="witingNumber_SCOUNTER" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <div style="display:flex; justify-content:flex-end">
                <button class="btn btn-primary big-button btn-galweb" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
