<%@ Page MasterPageFile="~/template.master" Inherits="GHQ03_DSP" CodeFile="GHQ03_DSP.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">HOLD PROCESS ACTION</h1>
                <span class="sub-headline blue-headline">Display Hold</span>
            </div>
            <div class="related-fields-area" style="margin-bottom: 10px; width: 700px">
                <gal-input label-size="medium" input-size="large" label-text="Entity:">
                    <input id="entityType_P_TYPE" runat="server" />
                    <input id="entityTypeDescription_DSCL" runat="server" />
                </gal-input>
                <gal-input label-size="medium" input-size="large" dynamic-label no-description>
                    <input id="label_DSC" runat="server" />
                    <input id="entityNumber_KEY15" runat="server" />
                </gal-input>
                <gal-input label-size="medium" input-size="xsmall" label-text="Line:" no-description>
                    <input id="entityLine_E_GHTLINE" runat="server" />
                </gal-input>
                <gal-input label-size="medium" input-size="large" label-text="Description:" no-description>
                    <input id="entityDescription_DESC30" runat="server" />
                </gal-input>
            </div>
            <div class="column-form related-fields-area" style="width: 700px">
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="large" label-text="Status:" no-description>
                        <select id="holdStatus_E_GHTSTS" runat="server">
                            <option value=" "></option>
                            <option value="H">H: Hold</option>
                            <option value="R">R: Release</option>
                            <option value="C">C: Close</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="medium" input-size="large" label-text="Hold Type:">
                        <input id="holdType_E_GHTHLD" runat="server" />
                        <input id="holdTypeDescription_D_GHHLD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="large" label-text="Action Code:">
                        <input id="actionCode_E_GHTEXP" runat="server" />
                        <input id="actionCodeDescription_D_GHTEXP" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="large" label-text="Reason Code:">
                        <input id="reasonCode_E_GHTRSN" runat="server" />
                        <input id="reasonCodeDescription_D_GRDSCL" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="small" label-text="Effect Date:" no-description>
                            <input id="fromEffectDate_E_GHTEFFP" dateformat="dd/mm/yy" runat="server" />
                        </gal-input>
                        <gal-input label-size="xxsmall" input-size="small" label-text="-" no-description>
                            <input id="toEffectDate_E_GHTTEXP" dateformat="dd/mm/yy" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="medium" input-size="xlarge" label-text="Workflow Number:">
                        <input id="workflowNumber_EGHTWF" runat="server" />
                        <input id="workflowDescription_D_GHTWF" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xlarge" label-text="Remark:" no-description>
                        <input id="remark1_E_GHTREM" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xlarge" label-text=" " no-description>
                        <input id="remark2_E_GHTREM1" runat="server" />
                    </gal-input>
                    <div class="centered-flex" style="gap: 13px">
                        <gal-input label-size="medium" input-size="xsmall" label-text="Hold:" no-description>
                            <select id="holdCode_E_GHTFHLD" runat="server">
                                <option value=" "></option>
                                <option value="A">A: Apply</option>
                                <option value="R">R: Release</option>
                                <option value="B">B: Both</option>
                            </select>
                        </gal-input>
                        <gal-input label-size="xsmall" input-size="xxsmall" label-text="Extrenal:" no-description>
                            <input id="externalCode_E_GHTCODE" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" input-size="xxsmall" label-text="Message:" no-description>
                            <input id="sendMessageYesNo_E_GHTMSG" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="medium" input-size="xlarge" label-text="Apply User:">
                        <input id="applyUserCode_E_GHTUSRO" runat="server" />
                        <input id="applyUserName_D_GHTUSRO" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="small" label-text="Apply Date:" no-description>
                            <input id="applyDate_E_GHTTOPN" runat="server" galtype="date" dateformat="dd/mm/y" />
                        </gal-input>
                        <gal-input label-size="xsmall" input-size="small" label-text="Time :" no-description>
                            <input id="applyTime_E_GHTCODB" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="medium" input-size="xlarge" label-text="Release User:">
                        <input id="releaseUserCode_E_GHTUSRR" runat="server" />
                        <input id="releaseUserName_D_GHTUSRR" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="small" label-text="Release Date:" no-description>
                            <input id="releaseDate_E_GHTTRLS" runat="server" galtype="date" dateformat="dd/mm/y" />
                        </gal-input>
                        <gal-input label-size="xsmall" input-size="small" label-text="Time:" no-description>
                            <input id="releaseTime_E_GHTCODF" runat="server" />
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="small" label-text="Apply Program:" no-description>
                            <input id="applyProgram_E_GHTCODGA" runat="server" />
                        </gal-input>
                        <gal-input label-size="small2" input-size="small" label-text="Release Program:"  no-description>
                            <input style="margin-left:10px" id="releaseProgram_E_GHTCODGR" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>

        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        let status = document.getElementById("ctl00_GXPagePlaceHolder_holdStatus_E_GHTSTS");
        if (status.value == 'H') {
            status.style = "background-color:#ffacaa"
        }
    </script>
</asp:Content>
