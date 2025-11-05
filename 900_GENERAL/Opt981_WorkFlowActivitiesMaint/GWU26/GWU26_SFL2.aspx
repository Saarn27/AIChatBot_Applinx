<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_SFL2" CodeFile="GWU26_SFL2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">WORKFLOW ACTIVITY UPDATE</h1>
            </div>
            <div style="width: fit-content">
                <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 1000px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-size="medium" label-text="Workflow number:" input-size="small" no-description>
                                <input id="workFlowNumber_UWFNUM" runat="server" />
                            </gal-input>
                            <gal-input label-size="small2" label-text="Open date:" input-size="small" no-description>
                                <input id="workFlowOpenDate_UOPND" runat="server" galtype="date" dateformat="dd/mm/y" />
                            </gal-input>
                        </div>
                        <gal-input label-size="medium" label-text="Workflow type:" input-size="xlarge">
                            <input id="workFlowType_UWFTYP" runat="server" />
                            <input id="workFlowTypeDesc_UWFTYPD" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input input-size="large" no-description>
                            <input id="returnLabelByUser_OT162" runat="server" />
                        </gal-input>
                        <gal-input input-size="large" no-description>
                            <input id="returnLabelByUserDesc_OT262" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 1000px">
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="From user:" input-size="large" no-description>
                            <input id="fromUser_UFRUSR" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Current user:" input-size="large" no-description>
                            <input id="currentUser_UUSRAN" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="auto" label-text="To user :" input-size="large" no-description>
                            <input id="toUser_UTOUSR" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="related-fields-area" style="margin-bottom: 10px; width: 1000px">
                    <gal-input label-size="medium" label-text="Document number :" input-size="xxlarge">
                        <input id="documentNumber_UDOCN" runat="server" />
                        <input id="documentNumberDesc_UDOCDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Details :" input-size="xxlarge" no-description>
                        <input id="workFlowDetails_UMYTSK" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow remarks:" input-size="xxlarge" no-description>
                        <input id="workFlowRemark1_RMKF1" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xxlarge" no-description>
                        <input id="workFlowRemark2_MINFO" runat="server" />
                    </gal-input>
                </div>

                <div class="input-container related-fields-area" style="padding: 20px; width: 1000px">
                    <label class="label-medium" for="workFlowComment_UTSKL">Comment:</label>
                    <input id="workFlowComment_UTSKL" runat="server" maxlength="50" class="input-xxlarge" autocomplete="off" />
                </div>
                <span class="blue-headline" style="font-weight: 500; font-size: 16px">Remarks:</span>
                <div class="related-fields-area" style="width: 1000px">
                    <gal-input label-size="medium" input-size="xxxlarge" no-description>
                        <input id="remark1" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xxxlarge" no-description>
                        <input id="remark2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xxxlarge" no-description>
                        <input id="remark3" runat="server" />
                    </gal-input>
                    <grid-scroller no-table></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG2" runat="server"></span>
                    <div style="margin-left: auto;display:flex; width:260px; justify-content:space-between; margin-right:10px" >
                        <div>
                            <button id="F4_Dynamic" runat="server" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf4]');">Decline</button>
                        </div>
                        <div>
                            <button id="F10_Dynamic" runat="server" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');">Approve</button>
                        </div>
                    </div>
                </div>
            </div>
            <input id="hiddenField" runat="server" style="display: none" />
        </div>
    </div>
</asp:Content>
