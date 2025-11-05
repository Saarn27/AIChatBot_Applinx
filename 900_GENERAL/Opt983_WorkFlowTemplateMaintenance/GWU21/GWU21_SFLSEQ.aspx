<%@ Page MasterPageFile="~/template.master" Inherits="GWU21_SFLSEQ" CodeFile="GWU21_SFLSEQ.aspx.cs" Language="C#" %>

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
                <span class="headline">WORKFLOW MAINTENANCE</span>
                <span class="sub-headline blue-headline">Change Route</span>
                <span class="sub-headline separating-line">|</span>
                <span class="sub-headline blue-headline" id="workFlowMaintNumber_NUMB" runat="server"></span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="auto" label-text="Workflow Type :" input-size="large">
                        <input id="workFlowType_TYPWF" runat="server" />
                        <input id="workFlowTypeDesc_TYPWFD" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="auto" label-text="Document :" input-size="medium" no-description>
                        <input id="documentNumber_DOCN" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class="table-container">
                <table id="workFlowMaintenanceTable_SFLSEQ" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th><span>User</span> </th>
                            <th><span>Name</span> </th>
                            <th><span>Sequence</span> </th>
                            <th columntype="qty"><span>From</span> </th>
                            <th columntype="qty"><span>Out Sequence</span> </th>
                            <th columntype="qty"><span>To</span> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT1" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>

                            <td>
                                <gal-input-help input-size="medium" no-description>
                                    <input maxlength="10" id="userNameCode_USERS" runat="server" />
                                </gal-input-help>
                            </td>
                            <td>
                                <span id="userNameDesc_NAMES" runat="server"></span>
                            </td>
                            <td>
                                <gal-input input-size="xsmall" no-description>
                                    <input maxlength="3" id="sequenceInput_SEQS" runat="server" />
                                </gal-input>
                            </td>
                            <td columntype="qty">
                                <span id="fromSequence_SEQ1" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span class="no-color" id="sequenceOut_SEQ" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="toSequence_TSEQ" runat="server"></span>
                                <action-bar mode="single">
                                </action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSGSEQ" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Check Logic</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="legend-div">
                <legend-block text="Wait" color="blue"></legend-block>
                <legend-block text="Approve" color="white"></legend-block>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>

