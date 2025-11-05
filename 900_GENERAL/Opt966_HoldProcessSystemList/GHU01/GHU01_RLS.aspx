<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU01_RLS.aspx.cs" Inherits="GHU01_RLS" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Hold Process Action</h1>
                <span class="sub-headline blue-headline">Release Hold</span>
            </div>
            <div class="wrapper-container" style="display: flex; flex-direction: column; gap: 10px">

                <div class="related-fields-area w-100">
                    <gal-input label-size="medium" input-size="large" label-text="Entity:">
                        <input id="Entity_P_TYPE" runat="server" />
                        <input id="Acs_DSCL" runat="server" />
                    </gal-input>

                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input dynamic-label label-size="medium" input-size="large" no-description>
                                <input id="DSC" runat="server" />
                                <input id="AccessoriesDie_KEY" style="text-align: left" runat="server" />
                            </gal-input>
                        </div>

                        <div class="spaced-column">
                            <gal-input label-size="xxsmall" input-size="small" label-text="Line:" no-description>
                                <input id="AccessoriesDie_R_GHTLINE" runat="server" />
                            </gal-input>
                        </div>
                    </div>

                    <gal-input label-size="medium" input-size="large" label-text="Description:" no-description>
                        <input id="Description_desc" runat="server" />
                    </gal-input>

                </div>
                <div class="related-fields-area w-100">

                    <gal-input label-size="medium" input-size="large" label-text="Hold type:">
                        <input id="HoldType_R_GHTHLD" runat="server" />
                        <input id="Ns_D_GHHLD" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="large" label-text="Action code:">
                        <input id="ActionCode_R_GHTEXP" runat="server" />
                        <input id="Aas_D_GHHLD" runat="server" />
                    </gal-input>

                    <gal-input-help label-size="medium" input-size="large" label-text="Reason code:">
                        <input id="R_GHTRSN" runat="server" />
                        <input id="D_GRDSCL" runat="server" />
                    </gal-input-help>

                    <gal-input label-size="medium" input-size="small2" label-text="From effective date:" no-description>
                        <input id="FromToEffDate_R_GHTEFFP" galtype="date" dateformat="ddmmyy" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="small2" label-text="To effective date:" no-description>
                        <input id="R_GHTTEXP" galtype="date" dateformat="ddmmyy" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="large" label-text="Workflow number:">
                        <input id="WorkflowNumber_R_GHTWF" runat="server" />
                        <input id="WorkflowNumber_D_GHTWF" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="xsmall" label-text="Send notification:" no-description>
                        <input id="R_GHTMSG" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="A=Apply,R=Release,B=Both"></span>
                    </gal-input>

                    <gal-input label-size="medium" input-size="xxlarge" label-text="Remark:" no-description>
                        <input id="Remark_R_GHTREM" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="xxlarge" no-description>
                        <input id="R_GHTREM1" runat="server" />
                    </gal-input>

                </div>
                <div class="related-fields-area w-100">
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="xxsmall" label-text="Hold code:" no-description>
                            <input id="HoldCodeEexternal_R_GHTFHLD" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" input-size="xxsmall" label-text="External:" no-description>
                            <input id="H_R_GHTCODE" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="related-fields-area w-100">
                    <gal-input label-size="medium" input-size="large" label-text="Release user:">
                        <input id="ReleaseUser_R_GHTUSRR" runat="server" />
                        <input id="Isyah_D_GHTUSRR" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="small" label-text="Release date:" no-description>
                        <input id="ReleaseDate_R_GHTTRLS" runat="server" galtype="date" dateformat="dd/mm/y" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf9]');">Update</button>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Release</button>
                </div>
            </div>
        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        function pageOnLoad(gx_event) {
            deflectFocus("Remark_R_GHTREM");
        }
    </script>
</asp:Content>
