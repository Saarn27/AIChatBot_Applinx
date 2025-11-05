<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU01_APY.aspx.cs" Inherits="GHU01_APY" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Hold Process Action </h1>
                <span class="sub-headline" style="color: #3c7ab7">Apply Hold</span>
            </div>
            <div class="related-fields-area" style="width: 800px; margin-bottom: 10px">
                <gal-input label-size="medium" input-size="large" label-text="Entity:">
                    <input id="entity_P_TYPE" runat="server" />
                    <input id="entityDesc_DSCL" runat="server" />
                </gal-input>

                <div class="column-form">
                    <div class="spaced-column">
                        <gal-input dynamic-label label-size="medium" input-size="large" no-description>
                            <input id="dynamicLabel_DSC" runat="server" />
                            <input id="accessoriesDie_KEY" style="text-align: left" runat="server" />
                        </gal-input>
                    </div>

                    <div class="spaced-column">
                        <gal-input label-size="xxsmall" input-size="small" label-text="Line:" no-description>
                            <input id="line_A_GHTLINE" runat="server" />
                        </gal-input>
                    </div>
                </div>

                <gal-input label-size="medium" input-size="large" label-text="Description:" no-description>
                    <input id="Description_desc" runat="server" />
                </gal-input>
            </div>
            <div class="related-fields-area" style="width: 800px; margin-bottom: 10px">

                <gal-input-help label-size="medium" input-size="large" label-text="Hold type:">
                    <input id="HoldType_A_GHTHLD" runat="server" />
                    <input id="holddesc_D_GHHLD" runat="server" />
                </gal-input-help>

                <gal-input-help label-size="medium" input-size="large" label-text="Action code:">
                    <input id="ActionCode_A_GHTEXP" runat="server" />
                    <input id="actiondesc_D_GHTEXP" runat="server" />
                </gal-input-help>

            </div>
            <div class="related-fields-area" style="width: 800px; margin-bottom: 10px">

                <gal-input-help label-size="medium" input-size="large" label-text="Reason code:">
                    <input id="reason_A_GHTRSN" runat="server" />
                    <input id="reason_D_GRDSCL" runat="server" />
                </gal-input-help>
                <div class="centered-flex">
                    <gal-input label-size="medium" input-size="small2" label-text="effective date:" no-description>
                        <input id="from_A_GHTEFFP" galtype="date" dateformat="ddmmyy" placeholder="DDMMYYYY" runat="server" />
                    </gal-input>
                    <gal-input no-description>
                       <span>-</span>
                    </gal-input>
                    <gal-input input-size="small2" no-description>
                        <input id="to_A_GHTTEXP" galtype="date" dateformat="ddmmyy" placeholder="DDMMYYYY" runat="server" />
                    </gal-input>
                </div>
                <gal-input-help label-size="medium" input-size="large" label-text="Workflow number:">
                    <input id="WorkflowNumber_A_GHTWF" runat="server" />
                    <input id="workFlow_D_GHTWF" runat="server" />
                </gal-input-help>

                <gal-input label-size="medium" input-size="xsmall" label-text="Send notification:" no-description>
                    <input id="sNotification_A_GHTMSG" runat="server" />
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="A=Apply,R=Release,B=Both"></span>
                </gal-input>

                <gal-input label-size="medium" input-size="xxlarge" label-text="Remark:" no-description>
                    <input id="remark1_A_GHTREM" runat="server" />
                </gal-input>

                <gal-input label-size="medium" input-size="xxlarge" no-description>
                    <input id="remark2_A_GHTREM1" runat="server" />
                </gal-input>

            </div>
            <div style="width: fit-content">
                <div class="related-fields-area" style="width: 800px;">
                    <gal-input label-size="medium" input-size="xsmall" label-text="Hold code value:" no-description>
                        <input id="HoldCodeValue_A_GHTFHLD" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="xsmall" label-text="External system:" no-description>
                        <input id="ExternalSystem_A_GHTCODE" runat="server" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errMessage_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Apply hold</button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
