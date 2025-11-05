<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU01_DSP.aspx.cs" Inherits="GHU01_DSP" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Hold Process Action</h1>
                <span class="sub-headline blue-headline">Display Hold</span>
            </div>
            <div class="wrapper-container" style="display: flex; flex-direction: column; gap: 10px">

                <div class="related-fields-area w-100">
                    <gal-input label-size="medium" input-size="large" label-text="Entity:">
                        <input id="Entity_P_TYPE" runat="server" />
                        <input id="entityDescription_DSCL" runat="server" />
                    </gal-input>

                    <div class="column-form">
                        <div class="spaced-column">
                            <gal-input dynamic-label label-size="medium" input-size="large" no-description>
                                <input id="dynamicLabel_DSC" runat="server" />
                                <input id="dynamicLabelOut_KEY" style="text-align: left" runat="server" />
                            </gal-input>
                        </div>

                        <div class="spaced-column">
                            <gal-input label-size="xxsmall" input-size="small" label-text="Line:" no-description>
                                <input id="line_E_GHTLINE" runat="server" />
                            </gal-input>
                        </div>
                    </div>

                    <gal-input label-size="medium" input-size="large" label-text="Description:" no-description>
                        <input id="Description_desc" runat="server" />
                    </gal-input>
                </div>
                <div class="related-fields-area w-100">

                    <gal-input label-size="medium" input-size="xsmall" label-text="Status:" no-description>
                        <select id="status_E_GHTSTS" runat="server">
                            <option value=""></option>
                            <option value="H">Hold</option>
                            <option value="R">Release</option>
                            <option value="C">Close</option>
                        </select>
                    </gal-input>

                    <gal-input label-size="medium" input-size="large" label-text="Hold type:">
                        <input id="holdType_E_GHTHLD" runat="server" />
                        <input id="holdDescription_D_GHHLD" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="large" label-text="Action code:">
                        <input id="actionCode_E_GHTEXP" runat="server" />
                        <input id="actionDescription_D_GHTEXP" runat="server" />
                    </gal-input>

                    <gal-input-help label-size="medium" input-size="large" label-text="Reason code:">
                        <input id="reasonCode_E_GHTRSN" runat="server" />
                        <input id="reasonDescription_D_GRDSCL" runat="server" />
                    </gal-input-help>

                    <gal-input label-size="medium" input-size="medium" label-text="From effective date:" no-description>
                        <input id="fromEffDate_E_GHTEFFP" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="medium" label-text="To effective date:" no-description>
                        <input id="toEffDate_E_GHTTEXP" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="medium" label-text="Workflow number:">
                        <input id="workflowNum_E_GHTWF" runat="server" />
                        <input id="workflowDsc_D_GHTWF" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="xxlarge" label-text="Remark:" no-description>
                        <input id="remark1_E_GHTREM" runat="server" />
                    </gal-input>

                    <gal-input label-size="medium" input-size="xxlarge" no-description>
                        <input id="remark2_E_GHTREM1" runat="server" />
                    </gal-input>
                </div>

                <div class="column-form related-fields-area w-100">
                    <div class="spaced-column">
                        <gal-input label-size="medium" input-size="xsmall" label-text="Hold:" no-description>
                            <input id="hold_E_GHTFHLD" runat="server" />
                        </gal-input>

                        <gal-input label-size="medium" input-size="large" label-text="Apply user:">
                            <input id="applyUser_E_GHTUSRO" runat="server" />
                            <input id="applyDesc_D_GHTUSRO" runat="server" />
                        </gal-input>

                        <gal-input label-size="medium" input-size="large" label-text="Release user:">
                            <input id="releaseUser_E_GHTUSRR" runat="server" />
                            <input id="releaseDesc_D_GHTUSRR" runat="server" />
                        </gal-input>

                        <gal-input label-size="medium" input-size="small" label-text="Apply program:" no-description>
                            <input id="apply_E_GHTCODGA" runat="server" />
                        </gal-input>
                    </div>

                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-size="medium" input-size="small" label-text="External:" no-description>
                                <input id="external_E_GHTCODE" runat="server" />
                            </gal-input>
                            <gal-input label-size="small" input-size="small" label-text="Message:" no-description>
                                <input id="message_E_GHTMSG" runat="server" />
                            </gal-input>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-size="medium" input-size="small" label-text="Apply date:" no-description>
                                <input id="applyDate_E_GHTTOPN" runat="server" galtype="date" dateformat="dd/mm/y" />
                            </gal-input>
                            <gal-input label-size="small" input-size="small" label-text="Time:" no-description>
                                <input id="applyTime_E_GHTCODB" runat="server" />
                            </gal-input>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-size="medium" input-size="small" label-text="Release date:" no-description>
                                <input id="releaseDate_E_GHTTRLS" runat="server" galtype="date" dateformat="dd/mm/y" />
                            </gal-input>
                            <gal-input label-size="small" input-size="small" label-text="Time:" no-description>
                                <input id="releaseTime_E_GHTCODF" runat="server" />
                            </gal-input>
                        </div>

                        <gal-input label-size="medium" input-size="small" label-text="Release program:" no-description>
                            <input id="releaseGrogram_E_GHTCODGR" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="message-container">
                    <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
