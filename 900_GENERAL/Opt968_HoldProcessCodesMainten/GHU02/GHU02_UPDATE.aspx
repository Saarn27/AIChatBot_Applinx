<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU02_UPDATE.aspx.cs" Inherits="GHU02_UPDATE" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">HOLD CODE TABLE</h1>
        <span class="sub-headline blue-headline" id="Subheadline_ADDUPD" runat="server"></span>
        <%--<span class="separating-line">|</span>
        <span class="sub-headline blue-headline" id="Subheadline2_B_CMP" runat="server"></span>--%>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area">
                <div class="spaced-column">
                    <gal-input label-text="Entity:" label-size="medium2" input-size="xlarge" no-description>
                        <select id="Entity_GHTYPE" runat="server"></select>
                    </gal-input>
                    <div class="line"></div>
                    <gal-input label-text="Hold code:" label-size="medium2" input-size="xsmall" no-description>
                        <input id="HoldCode_GHHLD" runat="server">
                    </gal-input>
                    <gal-input label-text="Short description:" label-size="medium2" input-size="medium" no-description>
                        <input id="ShortDescription_GHDSC" runat="server">
                    </gal-input>
                    <gal-input label-text="Long description:" label-size="medium2" input-size="xlarge" no-description>
                        <input id="LongDescription_GHDSCL" runat="server">
                    </gal-input>
                    <gal-input label-text="Action code:" label-size="medium2" input-size="xlarge" no-description>
                        <select id="ActionCode_GHEXP" runat="server"></select>
                    </gal-input>
                    <div class="line"></div>
                    <gal-input label-text="Hold code value:" label-size="medium2" input-size="xsmall" no-description>
                        <select id="HoldCodeValue_GHFHLD" runat="server">
                            <option value=""></option>
                            <option value="H">Hold</option>
                        </select>
                    </gal-input>
                    <gal-input label-text="External system:" label-size="medium2" input-size="small" no-description>
                        <select id="ExternalSystem_GHEXT" runat="server">
                            <option value=""></option>
                            <option value="F">Finance</option>
                        </select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="Authority level:" label-size="medium2" input-size="xxsmall" no-description>
                            <input id="AuthLevel_GHAUT" runat="server">
                        </gal-input>
                        <gal-input label-text="Display:" label-size="auto" input-size="xsmall" no-description>
                            <select id="AuthDisplay_GHDSP" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                            </select>
                        </gal-input>
                    </div>
                    <gal-input label-text="Omit hold:" label-size="medium2" input-size="medium" no-description>
                        <gx:GXCheckBox ID="OmitHold_U_GHCODC" CheckedValue="Y" UncheckedValue="" runat="server" />
                    </gal-input>
                    <div class="line"></div>
                    <div class="centered-flex">
                        <gal-input label-text="Sub option authority:" label-size="medium2" input-size="xsmall" no-description>
                            <input id="SubOptAuthority_GHSOPT" runat="server">
                        </gal-input>
                        <gal-input label-text="Reason code needed:" label-size="medium" input-size="medium" no-description>
                            <gx:GXCheckBox ID="ReasonCodeNeeded_GHRSN" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input-help label-text="Workflow number:" label-size="medium2" input-size="xlarge">
                        <input id="WorkflowNumber_GHWF" runat="server">
                        <input id="WorkflowNumberdes_WFDSC" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Send notification:" label-size="medium2" input-size="small" no-description>
                        <select id="SendNotification_GHMSG" runat="server">
                            <option value=""></option>
                            <option value="A">Apply</option>
                            <option value="R">Release</option>
                            <option value="B">Both</option>
                        </select>
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button id="f10button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        const DynamicSubHeadline = document.querySelector("#ctl00_GXPagePlaceHolder_Subheadline_ADDUPD")
        if (DynamicSubHeadline.innerText === "ADD") {
            document.querySelector("#f10button").innerText = "Add"
        }

    </script>
</asp:Content>
