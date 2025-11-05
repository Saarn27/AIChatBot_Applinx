<%@ Page MasterPageFile="~/template.master" Inherits="GWU26R_ADDL" CodeFile="GWU26R_ADDL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW DEFINITION </h1>
            </div>
            <div class="related-fields-area" style="width: 900px; margin-bottom: 10px">
                <gal-input label-size="medium" label-text="Document number:" input-size="xlarge">
                    <input id="documentNumber_DOCN" runat="server" />
                    <input id="documentDiscription_DESC" runat="server" />
                </gal-input>
                <div class="line"></div>
                <div class="column-form">
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="Workflow number:" input-size="small" no-description>
                            <input id="workFlowNumber_ADDNUM" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="small" label-text="Workflow type:" input-size="xlarge">
                            <input id="workFlowType_ADDWFT" runat="server" />
                            <input id="workFlowTypeDesc_ADDWFTD" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="line"></div>
                <div class="column-form">
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="Sequence:" input-size="xsmall" no-description>
                            <input id="sequenceNumber_SEQN" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="From sequence:" input-size="xsmall" no-description>
                            <input id="fromSeq_SEQF" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="small" label-text="To sequence:" input-size="xsmall" no-description>
                            <input id="toSeq_SEQT" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="column-form related-fields-area" style="width: 900px; margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="User:" input-size="xlarge">
                        <input id="user_USR" runat="server" />
                        <input id="userName_USRN" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Phone:" input-size="xlarge"  no-description>
                        <input id="phone_USRPHN" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Email:" input-size="xlarge"  no-description>
                        <input id="email_USRMAIL" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Original user:" input-size="xlarge">
                        <input id="originalUser_USRO" runat="server" />
                        <input id="originalUserName_USRON" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Stop level:" input-size="small" no-description>
                        <input id="stopLevel_STOPLVL" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Approve type:" input-size="xlarge">
                        <input id="approveType_TYP" runat="server" />
                        <input id="approveTypeDesc_TYPD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Task:" input-size="xlarge" no-description>
                        <input id="taskDesc_TSK" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Cost center:" input-size="xlarge">
                        <input id="costCenterCode_CST" runat="server" />
                        <input id="costCenterDesc_CSTN" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Workflow type:" input-size="medium">
                        <input id="workFlowType_S1GFTYP1" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="column-form related-fields-area" style="width: 900px">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Notify code :" input-size="small" no-description>
                        <input id="notifyCode_NTNUM" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Notify user :" input-size="large">
                        <input id="notifyUserCode_NTUSR" runat="server" />
                        <input id="notifyUserName_NTUSRN" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Hold release :" input-size="large">
                        <input id="holdReleaseCode_HLDT" runat="server" />
                        <input id="holdReleaseDesc_HLDTD" runat="server" />
                    </gal-input>
                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input label-size="medium" label-text="Program before :" input-size="medium" no-description>
                                <input id="programBefore_PROGB" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <gal-input label-size="auto" label-text="Program after :" input-size="medium" no-description>
                                <input id="programAfter_PROGA" runat="server" />
                            </gal-input>
                        </div>
                    </div>

                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG2" runat="server"></span>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none" />
    </div>
</asp:Content>
