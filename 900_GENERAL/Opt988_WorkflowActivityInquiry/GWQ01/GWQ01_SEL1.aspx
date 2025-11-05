<%@ Page MasterPageFile="~/template.master" Inherits="GWQ01_SEL1" CodeFile="GWQ01_SEL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY INQUIRY</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column related-fields-area">
                    <gal-input label-size="medium" label-text="Document number:" input-size="small" no-description>
                        <input id="documentNumberFilter_SGFHDOC" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium" label-text="Workflow type:" input-size="xlarge">
                        <input id="workflowType_SGFHTYP" runat="server" />
                        <input id="workflowTypeDescription_SGFHTYPD" runat="server" />
                    </gal-input-help>
                </div>
            </div>
            <tabs-list>
                <div id="tab1_S1" text="Header" active="true"></div>
                <div id="tab2_S2" text="Lines"></div>
            </tabs-list>
            <div class="tab-content" style="width: fit-content">
                <div class="tab-pane active" id="1">
                    <div class="column-form" style="width: 100%">
                        <div class="spaced-column related-fields-area" style="margin-right: 0px">
                            <gal-input input-size="xlarge" label-size="medium2" label-text="%Document description:" no-description>
                                <input id="documentDescription_SGFHDSC" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium2" label-text="Open date:" input-size="small2,xxsmall,small2" no-description>
                                <input id="formOpenDate_SGFHTOPNF" galtype="date" dateformat="ddmmy" runat="server" />
                                <label>- </label>
                                <input id="toOpenDate_SGFHTOPNT" galtype="date" dateformat="ddmmy" runat="server" style="margin-left: -20px;" />
                            </gal-input>
                            <gal-input label-size="medium2" label-text="Close date:" input-size="small2,xxsmall,small2" no-description>
                                <input id="fromCloseDate_SGFHTCLSF" galtype="date" dateformat="ddmmy" runat="server" />
                                <label>- </label>
                                <input id="toCloseDate_SGFHTCLST" galtype="date" dateformat="ddmmy" runat="server" style="margin-left: -20px;" />
                            </gal-input>
                            <gal-input-help label-size="medium2" label-text="Open by user:" input-size="large">
                                <input id="openUser_SGFHUSRO" runat="server" />
                                <input id="openUserName_SGFHUSROD" runat="server" />
                            </gal-input-help>
                            <gal-input-help label-size="medium2" label-text="Resposible user:" input-size="large">
                                <input id="responsibleUser_SGFHUSRR" runat="server" />
                                <input id="responsibleUserName_SGFHUSRRD" runat="server" />
                            </gal-input-help>
                            <gal-input-help label-size="medium2" label-text="Template number:" input-size="large">
                                <input id="templateNumber_SGFHNT" runat="server" />
                                <input id="templateDescription_SGFHNTD" runat="server" />
                            </gal-input-help>
                            <gal-input input-size="xsmall" label-size="medium2" label-text="Status:" no-description>
                                <select id="status_SGFHSTT" runat="server">
                                    <option value="C">Close</option>
                                    <option value="O">Open</option>
                                    <option value="">All</option>
                                </select>
                            </gal-input>
                            <gal-input input-size="medium" label-size="medium2" label-text="Type of action:" no-description>
                                <select id="actionType_SGFHACT" runat="server"></select>
                            </gal-input>
                            <gal-input-help label-size="medium2" label-text="Cost center:" input-size="large">
                                <input id="costCenter_SGFHCSTC" runat="server" />
                                <input id="costCenterDescription_SGFHCSTCD" runat="server" />
                            </gal-input-help>
                            <gal-input label-size="medium2" label-text="Value:" input-size="small,medium" no-description>
                                <select id="valueSign_SSIGN" runat="server" class="no-color">
                                    <option value="=">=  Equal</option>
                                    <option value=">">>  Greater than</option>
                                    <option value="<"><  Less than </option>
                                </select>
                                <input id="value_SGFHVAL" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <input id="hiddenField" runat="server" style="display: none;" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
                    </div>
                </div>
            </div>

        </div>
    </div>


</asp:Content>
