<%@ Page MasterPageFile="~/template.master" Inherits="GWU21_SFL1" CodeFile="GWU21_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar1" runat="server" />
        </action-bar>

        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW MAINTENANCE</h1>
                <span id="workFlowMaintTitle_TIT" class="headline blue-headline" runat="server"></span>
                <span class="separating-line">|</span>
                <span id="workFlowMaintNumber_NUMB" class="sub-headline" runat="server" style="color: #3c7ab7"></span>
            </div>

            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="auto" label-text="Workflow Type:" input-size="large">
                        <input id="workFlowMaintType_TYPWF" runat="server" />
                        <input id="workFlowMaintTypeDesc_TYPWFD" runat="server" />
                    </gal-input>
                </div>
                <%--<div class="spaced-column">
                    <gal-input label-size="small"  input-size="large">
                        <input id="documentCtl1" runat="server" />
                        <input id="documentDesc_DOCN" runat="server" />
                    </gal-input>
                </div>--%>
            </div>



            <gal-table-header text="Squence" start-column="3" end-column="5"></gal-table-header>
            <div class="table-container">
                <table id="workFlowDefinitionMaintenence_SFL1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>User/Name/Error</span>
                            </th>

                            <th columntype="primaryNumber">
                                <span>From</span>
                            </th>

                            <th columntype="primaryNumber">
                                <span>Sequence</span>
                            </th>

                            <th columntype="primaryNumber">
                                <span>To</span>
                            </th>

                            <th>
                                <span>Task</span>
                            </th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT1" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="userNameError" runat="server"></span>
                            </td>

                            <td columntype="primaryNumber">
                                <span id="from" runat="server"></span>
                            </td>

                            <td columntype="primaryNumber">
                                <span id="sequence" runat="server"></span>
                            </td>

                            <td columntype="primaryNumber">
                                <span id="to" runat="server"></span>
                            </td>

                            <td>
                                <span id="task" runat="server"></span>
                                <action-bar mode="single">
                                </action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div style="display:flex; justify-content:flex-end">
                    <button class="btn btn-primary big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
        <%--            <div class="legend-div">
                <legend-block text="Wait" color="blue"></legend-block>
                <legend-block text="Approve" color="white"></legend-block>
            </div>--%>
        <div class="message-container">
            <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
        </div>

    </div>
</asp:Content>
