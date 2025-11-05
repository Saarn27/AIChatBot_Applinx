<%@ Page MasterPageFile="~/template.master" Inherits="GTU01_SFL" CodeFile="GTU01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="customerList_TITLE" runat="server">TASKS </h1>
            </div>
            <div class="column-form related-fields-area" style="width: fit-content">
                <div class="spaced-column">
                    <gal-input-help label-size="xsmall" label-text="User :" input-size="large">
                        <input id="userTask_USERTSK" runat="server" />
                        <input id="userTaskDes_NME" runat="server" />
                    </gal-input-help>

                </div>
                <div class="spaced-column">
                    <gal-input label-size="xsmall" label-text="Status:" input-size="small" no-description>
                        <select id="taskStatus_OCA" onchange="gx_SubmitKey('[enter]')" runat="server">
                            <option value="O">O: Open</option>
                            <option value="C">C: Close</option>
                        </select>
                    </gal-input>



                </div>
                <div class="spaced-column">
                    <gal-input label-text="Filter due date:" label-size="small" input-size="medium" no-description>
                        <select id="filterDueDate_DUEF" onchange="gx_SubmitKey('[enter]')" runat="server"></select>
                    </gal-input>

                </div>
                <div class="spaced-column">
                    <gal-input label-size="xsmall" label-text="Entity:" input-size="xsmall" no-description>
                        <input id="entity_GTCOD" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="auto" input-size="small,small" dynamic-label no-description>
                        <input id="entityDesc_ENTDSC" runat="server" />
                        <input id="entity_GTKEY" runat="server" />
                    </gal-input>
                </div>
            </div>

            <div class="table-container">
                <table id="taskTable_SFL" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input label-text="" input-size="small" no-description>
                                    <select id="taskType_GRDOC" runat="server"></select>
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th style="width: 200px">
                                <gal-input label-text="" input-size="small" no-description>
                                    <input id="entityDes_23DSC" runat="server" />
                                </gal-input>
                                <span>Entity</span>
                            </th>
                            <th style="width: 200px">
                                <gal-input label-text="" input-size="medium" no-description>
                                    <input id="regardingDes_DESC" runat="server" />
                                </gal-input>
                                <span>%Regarding</span>
                            </th>
                            <th sortby="subjectTitleSFL">
                                <gal-input label-text="" input-size="medium" no-description>
                                    <input id="subjectRemark_GTREM" runat="server" />
                                </gal-input>
                                <span>%Subject</span>
                            </th>
                            <th sortby="userTitleSFL">
                                <span>User</span>
                            </th>
                            <th style="padding-left: 25px">

                                <span>Priority</span>
                            </th>
                            <th columntype="date">
                                <gal-input label-text="" input-size="small" no-description>
                                    <input id="dueDate_DUE" galtype="date" dateformat="ddmmy" runat="server" />
                                </gal-input>
                                <span>Due date</span>
                            </th>
                            <th columntype="date">
                                <span>Open date</span>
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
                                <span id="taskTypeSfl_GTDOC" runat="server"></span>
                            </td>
                            <td>
                                <span id="entitySfl_23DSC" runat="server"></span>
                            </td>
                            <td>
                                <span id="rgardingSfl_DESC" runat="server"></span>
                            </td>
                            <td>
                                <span id="subjectSfl_GTREM" runat="server"></span>
                            </td>
                            <td>
                                <span id="userSfl_USER" runat="server"></span>
                            </td>
                            <td>
                                <span id="prioritySfl_GTPRIO" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="dueDateSfl_DUDAT" galtype="date" dateformat="ddmmy" runat="server"></span>
                            </td>
                            <td columntype="date"><span galtype="date" dateformat="ddmmy" id="openDateSfl_OPDAT" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button class="btn btn-primary big-button btn-galweb" onclick="gx_SubmitKey('[pf6]');">New Task</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />

            <div class="bottom-line">
                <gal-input label-size="small" label-text="Total line :" input-size="small" no-description>
                    <input class="input-container" id="totalLine_TOTALLIN" runat="server" />
                </gal-input>
            </div>
            <div class="legend-div">
                <legend-block text="Treat" color="red" text-color></legend-block>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none" />
    </div>
</asp:Content>
