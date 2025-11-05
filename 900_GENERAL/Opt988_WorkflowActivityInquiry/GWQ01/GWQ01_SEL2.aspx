<%@ Page MasterPageFile="~/template.master" Inherits="GWQ01_SEL2" CodeFile="GWQ01_SEL2.aspx.cs" Language="C#" %>

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
                <div id="tab1_S1" text="Header"></div>
                <div id="tab2_S2" text="Lines"  active="true"></div>
            </tabs-list>
            <div class="tab-content" style="width: fit-content">
                <div class="tab-pane active" id="2">
                    <div class="column-form" style="width: 100%">
                        <div class="spaced-column related-fields-area" style="margin-right: 0px">
               
                            <gal-input-help label-size="medium2" label-text="Previous user:" input-size="large">
                                <input id="previousUser_SFRMUSR" runat="server" />
                                <input id="previousUserName_SFRMUSRD" runat="server" />
                            </gal-input-help>
                            <gal-input-help label-size="medium2" label-text="Current user:" input-size="large">
                                <input id="currentUser_SGFUSR" runat="server" />
                                <input id="currentUserName_SGFUSRD" runat="server" />
                            </gal-input-help>
                                  <gal-input-help label-size="medium2" label-text="Next user:" input-size="large">
                                <input id="nextUser_SGFUSRT" runat="server" />
                                <input id="nextUserName_SGFUSRTD" runat="server" />
                            </gal-input-help>
                     
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
