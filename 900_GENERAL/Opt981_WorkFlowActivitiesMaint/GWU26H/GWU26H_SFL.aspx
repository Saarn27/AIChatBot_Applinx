<%@ Page MasterPageFile="~/template.master" Inherits="GWU26H_SFL" CodeFile="GWU26H_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY - HISTORY</h1>
            </div>
            <div class="related-fields-area" style="width: fit-content">
                <gal-input label-size="medium" label-text="Document number:" input-size="xlarge">
                    <input id="documentNumber_DOCN" runat="server" />
                    <input id="documentDescription_DOCND" runat="server" />
                </gal-input>
                <gal-input label-size="medium" label-text="Workflow type:" input-size="xlarge">
                    <input id="workflowType_WFTYP" runat="server" />
                    <input id="workflowTypeDescription_WFTYPD" runat="server" />
                </gal-input>
                <div class="column-form">
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="Owner user:" input-size="medium" no-description>
                            <input id="ownerUserName_OWNUSR" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Open date:" input-size="small2" no-description>
                            <input id="workflowOpenDate_OPDAT" runat="server" galtype="date" dateformat="ddmmyy" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="small" label-text="User opened:" input-size="medium" no-description>
                            <input id="openUserName_OPNUSR" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" label-text="Status:" input-size="medium">
                            <input id="workflowStatus_STSH" runat="server" />
                            <input id="workflowStatusDescription_STSDH" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="table-container">
                <table id="sflTable_GWU26H" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" /></th>
                            <th>
                                <span>User</span>
                            </th>
                            <th>
                                <span>To user</span>
                            </th>
                            <th columntype="date">
                                <span>Date</span>
                            </th>
                            <th columntype="price">
                                <span>Time</span>
                            </th>
                            <th>
                                <span>Action</span>
                            </th>
                            <th>
                                <span>Original user</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Workflow number</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Document number</span>
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
                                <span class="double-span" id="fromUserName_FUSR" runat="server"></span>
                                <span id="remarks_RMKS" runat="server"></span>
                            </td>
                            <td>
                                <span id="toUserName_TUSR" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="openDate_DAT" runat="server" galtype="date" dateformat="ddmmy"></span>
                            </td>
                            <td columntype="price">
                                <span id="openTime_TIM" runat="server"></span>
                            </td>
                            <td>
                                <span id="action_STS" runat="server"></span>
                            </td>
                            <td>
                                <span id="originalUserName_ORGUSR" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="worflowNumber_WFNUM" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="subDocumentNumber_SUBDOCN" runat="server"></span>
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
                <legend-block color="yellow" text="Owner" text-color></legend-block>
            </div>

        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
