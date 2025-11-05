<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWU21_ADD.aspx.cs" Inherits="GWU21_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">WORKFLOW TEMPLATE DEFINITION</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Workflow Number :" input-size="small" no-description>
                        <input id="workFlowNumber_ADDNUM" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow Type :" input-size="xlarge" no-description>
                        <select id="workFlowType_ADDWFT" runat="server"></select>
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow Description :" input-size="xlarge" no-description>
                        <input id="workFlowDescription_ADDDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Approve Type :" input-size="xlarge">
                        <input id="workFlowApproveType_ADDTYP1" runat="server" />
                        <input id="workFlowApproveTypeDesc_ADDTYPD" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium" label-text="Approve Notification :" input-size="small" no-description>
                        <input id="workFlowApproveNot_NTNUMA" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="medium" label-text="Decline Notification :" input-size="small" no-description>
                        <input id="workFlowDeclineNot_NTNUMD" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="medium" label-text="Responsible User :" input-size="xlarge">
                        <input id="responsibleUser_RESUSR" runat="server" />
                        <input id="responsibleUserDesc_RESUSRN" runat="server" />
                    </gal-input-help>
                    <div id="line1" class="line"></div>
                    <gal-input label-size="medium" label-text="Last User Updated :" input-size="xlarge">
                        <input id="lastUserUpdated_LSUPD" runat="server" />
                        <input id="lastUserUpdatedName_LSUPDNM" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Last Date Updated :" input-size="small" no-description>
                        <input id="lastDateUpdated_LSUPT" runat="server" dateformat="ddmmy" galtype="date" />
                    </gal-input>
                    <div class="message-container">
                        <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                    </div>
                </div>
                <input id="hiddenField" runat="server" style="display: none;" />
            </div>
            <div class="modal-bottom">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf8]');">Details</button>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf13]');">Remark</button>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf18]');">Long description</button>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"><span id="labelF10" runat="server" class="no-color"></span></button>
            </div>
        </div>
    </div>
    <script>
        function pageOnLoad(gx_event) {
            var effectiveDate = document.getElementById("ctl00_GXPagePlaceHolder_lastUserUpdated_LSUPD");
            var line1 = document.getElementById("line1");
            if (effectiveDate.parentElement.parentElement.style.display == "none") {
                line1.style.display = "none";
            } else {
                line1.style.display = "block";
            }
        }
    </script>


</asp:Content>
