<%@ Page MasterPageFile="~/template.master" Inherits="GWU26R_SFL" CodeFile="GWU26R_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY - ROUTING</h1>
            </div>
            <div class="column-form related-fields-area" style="width: fit-content">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Document number:" input-size="xlarge">
                        <input id="documentNumber_DOCN" runat="server" />
                        <input id="documentNoDesc_DOCND" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow type:" input-size="xlarge">
                        <input id="workflowType_WFTYP" runat="server" />
                        <input id="workflowTypeDesc_WFTYPD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow number:" input-size="medium" no-description>
                        <input id="workflowNumber_WFNUM" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Response user:" input-size="medium" no-description>
                        <input id="responsUser_RESUSR" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Template number:" input-size="small" no-description>
                        <input id="templateNumber_SGFHNT" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Error message:" input-size="xlarge" no-description>
                        <input id="errror_ERRN" runat="server" />
                    </gal-input>
                </div>
            </div>

            <gal-table-header text="SEQUENCE" start-column="4" end-column="6" unite></gal-table-header>
            <div class="table-container">
                <table id="workFlowRoutingTable_SFL" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" /></th>
                            <th>
                                <gal-input label-size="" input-size="medium" no-description>
                                    <input id="filterUserCode_SLUSR" runat="server" />
                                </gal-input>
                                <span>User code</span>
                            </th>
                            <th>
                                <span>User name</span>
                            </th>
                            <th columntype="qty">
                                <span>From</span>
                            </th>
                            <th columntype="qty">
                                <span>Sequence</span>
                            </th>
                            <th columntype="qty" style="width: 100px;">
                                <span>To</span>
                            </th>
                            <th>
                                <span id="dinamicLabelTitle" runat="server"></span>
                            </th>
                            <th>
                                <span>Workflow type</span>
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
                                <span id="userCode_USR" runat="server"></span>
                            </td>
                            <td>
                                <span id="userName_USERN" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="fromSequence_FSEQ" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="sequenceNo_SEQ" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="toSequence_TSEQ" runat="server"></span>
                            </td>
                            <td>
                                <span id="changeLineSfl_ERRN" runat="server"></span>
                            </td>
                            <td>
                                <span id="worFlowType_SGFTYP1" runat="server"></span>
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
                <legend-block color="white" text="Finance Authorization"></legend-block>
                <legend-block color="red" text="Error"></legend-block>
                <legend-block color="blue" text="Waiting"></legend-block>
                <legend-block color="yellow" text="Owner" text-color></legend-block>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
