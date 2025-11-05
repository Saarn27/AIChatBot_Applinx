<%@ Page MasterPageFile="~/template.master" Inherits="GWU26H_ADDL" CodeFile="GWU26H_ADDL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DATA TRANSACTION</h1>
                <span id="transactionType_TYPET" class="sub-headline blue-headline" runat="server"></span>
            </div>
            <div class="column-form related-fields-area" style="width: 1200px; margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Document number:" input-size="xlarge">
                        <input id="documentNumber_DOCN" runat="server" />
                        <input id="documentDescription_DESC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow number:" input-size="medium" no-description>
                        <input id="worflowNumber_ADDNUM" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Sub document:" input-size="xsmall" no-description>
                        <input id="subDodcumentNumber_SUBD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow type:" input-size="xlarge">
                        <input id="workFlowType_ADDWFT" runat="server" />
                        <input id="workflowTypeDescription_ADDWFTD" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="related-fields-area" style="width: 1200px; margin-bottom: 10px">
                <gal-input-help label-size="medium" label-text="User:" input-size="large" no-description>
                    <input id="updatedUserName_USRTRN" runat="server" />
                </gal-input-help>
                <gal-input label-size="medium" label-text="Remark: " input-size="xlarge" no-description>
                    <input id="transactionRemark_RMK" runat="server" />
                </gal-input>
            </div>
            <div class="column-form related-fields-area" style="width: 1200px; margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Original user:" input-size="medium" no-description>
                        <input id="originalUserName_USRN" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Owner user:" input-size="medium" no-description>
                        <input id="ownerUserName_OWNUSRN" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="From user:" input-size="medium" no-description>
                        <input id="fromUserName_USRFN" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="From sequence:" input-size="small" no-description>
                        <input id="fromSeq_SEQF" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="Sequence:" input-size="small" no-description>
                        <input id="sequence_SEQN" runat="server" />
                    </gal-input>
                    <gal-input no-description></gal-input>
                    <gal-input label-size="small" label-text="To user:" input-size="medium" no-description>
                        <input id="toUserName_USRTN" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" label-text="To sequence:" input-size="small" no-description>
                        <input id="toSeq_SEQT" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="column-form related-fields-area" style="width: 1200px; margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Task:" input-size="medium" no-description>
                        <input id="task_TSK" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Approve type:" input-size="medium">
                        <input id="approveType_TYP" runat="server" />
                        <input id="approveTypeDescription" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Notify code:" input-size="medium" no-description>
                        <input id="notifyCode_NTNUM" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" label-text="Hold release:" input-size="medium">
                        <input id="holdRelease_HLDT" runat="server" />
                        <input id="holdReleaseDescription_HLDTD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Program before:" input-size="medium" no-description>
                        <input id="programBefore_PROGB" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input no-description></gal-input>
                    <gal-input no-description></gal-input>
                    <gal-input label-size="small" label-text="Notify user:" input-size="medium">
                        <input id="notifyUserCode_NTUSR" runat="server" />
                        <input id="notifyUserName_NTUSRN" runat="server" />
                    </gal-input>
                    <gal-input no-description></gal-input>
                    <gal-input label-size="small" label-text="Program after:" input-size="small" no-description>
                        <input id="programAfter_PROGA" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="column-form related-fields-area" style="width: 1200px;">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Transaction:" input-size="small,xsmall" no-description>
                        <input id="transactionDate_TRN" runat="server" galtype="date" dateformat="ddmmy" />
                        <input id="transactionTime_TIM" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="By program:" input-size="medium" no-description>
                        <input id="transactionProgram_TPGM" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_MSG2" runat="server"></span>
            </div>

        </div>
        <script>
            let str = document.getElementById("ctl00_GXPagePlaceHolder_transactionType_TYPET").innerText;
            document.getElementById("ctl00_GXPagePlaceHolder_transactionType_TYPET").innerText = str.charAt(0).toUpperCase() + str.substr(1).toLowerCase();
        </script>
    </div>
</asp:Content>
