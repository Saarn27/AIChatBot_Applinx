<%@ Page MasterPageFile="~/template.master" Inherits="GWU21U_SFL" CodeFile="GWU21U_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW TEMPLATES - USER UPDATE</h1>
            </div>

            <div class="table-container"><table id="workFlowUserUpdate_SFL" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th sortby="titleWorkFlowTypeUser_TWFTYP" style="width: 300px;">
                            <gal-input input-size="xlarge" no-description>
                                <select id="filterWorkFlowTypeUser_SWFTYP" runat="server"></select>
                            </gal-input>
                            <span id="titleWorkFlowTypeUser_TWFTYP" runat="server"></span>
                        </th>
                        <th sortby="titleWorkFlowUser_TTMPL" style="width: 300px;" columntype="price">
                            <gal-input input-size="small" no-description>
                                <input id="filterWorkFlowUser_STMPL" runat="server" />
                            </gal-input>
                            <span id="titleWorkFlowUser_TTMPL" runat="server"></span>
                        </th>
                        <th sortby="titleWorkFlowUserDesc_TTMPLD" style="width: 300px;">
                            <gal-input input-size="xlarge" no-description>
                                <input id="filterWorkFlowUserDesc_STMPLD" runat="server" />
                            </gal-input>
                            <span id="titleWorkFlowUserDesc_TTMPLD" runat="server"></span>
                        </th>
                        <th sortby="titleWorkFlowType_TAPRTYP" style="width: 300px;">
                            <gal-input-help input-size="small" no-description>
                                <input id="filterWorkFlowType_SAPRTYP" runat="server" />
                            </gal-input-help>
                            <span id="titleWorkFlowType_TAPRTYP" runat="server"></span>
                        </th>
                        <th sortby="titleWorkFlowStatus_TSTS" style="width: 300px;">
                            <gal-input input-size="small" no-description>
                                <select id="filterWorkFlowStatus_SSTS" runat="server">
                                    <option value=""></option>
                                    <option value="O">O: Open</option>
                                    <option value="C">C: Complete</option>
                                </select>
                            </gal-input>
                            <span id="titleWorkFlowStatus_TSTS" runat="server"></span>
                        </th>
                        <th style="width: 300px;">
                            <span>Error</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="optTrans" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>

                        <td><span id="sflWorkFlowType_WFTYP" runat="server"></span></td>
                        <td columntype="price"><span id="sflWorkFlowUserCode_TMPL" runat="server"></span></td>
                        <td><span id="sflWorkFlowUserDesc_TMPLD" runat="server"></span></td>
                        <td><span id="sflWorkFlowType_APRTYP" runat="server"></span>
                            <span>&nbsp</span>
                            <span id="sflWorkFlowTypeDesc_APRTYPD" runat="server"></span>
                        </td>
                        <td><span id="sflWorkFlowStatus_STS" runat="server"></span></td>

                        <td><span id="sflWorkFlowError_ERROR" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div clas="legend-div">
                <div class="message-container">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                </div>
                <%-- <legend-block text="Detail" color="aqua">
                </legend-block>--%>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
