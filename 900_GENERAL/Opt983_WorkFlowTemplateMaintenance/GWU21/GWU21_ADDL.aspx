<%@ Page MasterPageFile="~/template.master" Inherits="GWU21_ADDL" CodeFile="GWU21_ADDL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW DEFINITION</h1>
                <%--<h1 class="headline" id="workflowDefinition_TIT" runat="server"></h1>--%>
                <span id="workflowDefinition_TIT" class="Headline blue-headline" runat="server"></span>
            </div>
            <div style="width: fit-content">
                <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 100%">
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="Workflow Number:" input-size="small" no-description>
                            <input class="input-small" id="workFlowNumber_ADDNUM" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Document Number:" input-size="xlarge">
                            <input class="input-large" id="documentNum_DOCN" runat="server" />
                            <input class="input-xlarge" id="documentNum_DESC" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="auto" label-text="Workflow Type:" input-size="large">
                            <input class="input-xlarge" id="workflowTypeCode_ADDWFT" runat="server" />
                            <input class="input-xlarge" id="workflowTypeCodeDesc_ADDWFTD" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="related-fields-area" style="margin-bottom: 10px; width: 100%">
                    <div class="centered-flex">
                        <gal-input label-size="medium" label-text="Sequence:" input-size="xsmall" no-description>
                            <input id="sequenceNumber_SEQN" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="From Sequence:" input-size="xsmall" no-description>
                            <input id="sequenceNumberFrom_SEQF" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="To Sequence:" input-size="xsmall" no-description>
                            <input id="sequenceNumberTo_SEQT" runat="server" />
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="medium" label-text="User:" input-size="xlarge">
                            <input id="workflowUser_USR" runat="server" />
                            <input id="workflowUserDesc_USRN" runat="server" />
                        </gal-input-help>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="*MANA=Manager"></span>
                    </div>
                    <gal-input-help label-size="medium" label-text="Role:" input-size="xlarge">
                        <input id="workflowRole_ROLE" runat="server" />
                        <input id="workflowRoleDesc_ROLED" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium" label-text="Start From Type:" input-size="large,large" no-description>
                        <select id="workflowStartType_SGFDA08" runat="server"></select>
                        <select id="workflowStartTypeDesc_SGFDA08D" runat="server"></select>
                    </gal-input>
                    <gal-input label-size="medium" label-text="Stop Level:" input-size="xsmall" no-description>
                        <input id="workflowStopLevel_STOPLVL" runat="server" />
                    </gal-input>
                </div>
                <div class="related-fields-area" style="margin-bottom: 10px; width: 100%">
                    <gal-input label-size="medium" label-text="Approve Type:" input-size="large">
                        <input class="input-large" id="workflowApproveType_TYP" runat="server" />
                        <input class="input-large" id="workflowApproveTypeDesc_TYPD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Task:" input-size="xxlarge" no-description>
                        <input class="input-xxlarge" id="workflowTask_TSKL" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium" label-text="Cost Center:" input-size="large">
                        <input class="input-large" id="workflowCostCenter_CST" runat="server" />
                        <input class="input-large" id="workflowCostCenterDesc_CSTN" runat="server" />
                    </gal-input-help>
                </div>
                <div class="related-fields-area" style="margin-bottom: 10px; width: 100%">
                    <gal-input-help label-size="medium" label-text="Notify Code:" input-size="small" no-description>
                        <input class="input-small" id="workflowNotifyCode_NTNUM" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="medium" label-text="Notify User:" input-size="xlarge">
                        <input class="input-xlarge" id="workflowNotifyUser_NTUSR" runat="server" />
                        <input class="input-xlarge" id="workflowNotifyUserName_NTUSRN" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium" label-text="Hold Release:" input-size="xlarge" no-description>
                        <select id="holdReleaseCode_HLDT" runat="server"></select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="medium" label-text="Program before:" input-size="medium" no-description>
                            <input class="input-medium" id="programBefore_PROGB" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="Program after:" input-size="medium" no-description>
                            <input class="input-medium" id="programAfter_PROGA" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div id="indicatorRelated" class="related-fields-area centered-flex" style="width: 100%">
                    <gal-input id="checkDisplay" label-size="medium" label-text="Last User Updated:" input-size="xlarge">
                        <input class="input-xlarge" id="lastUserUpdated_LSUPD" runat="server" />
                        <input class="input-xlarge" id="lastUserUpdatedName_LSUPDNM" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Last Date Updated:" input-size="small" no-description>
                        <input id="lastDateUpdated_LSUPT" runat="server" dateformat="ddmmy" galtype="date" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG2" runat="server"></span>
                    <button id="DynamicButton" runat="server" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
