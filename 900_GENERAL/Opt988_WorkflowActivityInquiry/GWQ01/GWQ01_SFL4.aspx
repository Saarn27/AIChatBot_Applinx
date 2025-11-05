<%@ Page MasterPageFile="~/template.master" Inherits="GWQ01_SFL4" CodeFile="GWQ01_SFL4.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">WORKFLOW ACTIVITY DETAIL</h1>
            </div>
            <div style="width: fit-content">
                <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 1000px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-size="medium" label-text="Workflow number:" input-size="small" no-description>
                                <input id="workflowNumber_DWFNUM" runat="server" />
                            </gal-input>
                            <gal-input label-size="small2" label-text="Open date:" input-size="small" no-description>
                                <input id="openDate_DOPND" runat="server" galtype="date" dateformat="dd/mm/y" />
                            </gal-input>
                        </div>
                        <gal-input label-size="medium" label-text="Workflow type:" input-size="xlarge">
                            <input id="workflowType_DWFTYP" runat="server" />
                            <input id="worflowTypeDescription_DWFTYPD" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input input-size="large" no-description>
                            <input id="returnUser_DRTNBYUSR" runat="server" />
                        </gal-input>
                        <gal-input input-size="large" no-description>
                            <input id="returnUserName_D_RTNUSR" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 1000px">
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="From user:" input-size="large" no-description>
                            <input id="fromUser_DFRMUSR" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Current user:" input-size="large" no-description>
                            <input id="currentUser_DCURUSR" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="auto" label-text="To user :" input-size="large" no-description>
                            <input id="toUser_DTOUSR" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="related-fields-area" style="margin-bottom: 10px; width: 1000px">
                    <gal-input label-size="medium" label-text="Document number :" input-size="xxlarge">
                        <input id="documentNumber_DDOCN" runat="server" />
                        <input id="documentDescription_DDOCDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Details :" input-size="xxlarge" no-description>
                        <input id="details_DTASK" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow remarks:" input-size="xxlarge" no-description>
                        <input id="remark_DRMK" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xxlarge" no-description>
                        <input id="information_DINFO" runat="server" />
                    </gal-input>
                </div>

       
                <span class="blue-headline" style="font-weight: 500; font-size: 16px">Remarks:</span>
                <div class="related-fields-area" style="width: 1000px">
                    <gal-input label-size="medium" input-size="xxxlarge" no-description>
                        <input id="remark1_URMK" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xxxlarge" no-description>
                        <input id="remark2_URMK" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xxxlarge" no-description>
                        <input id="remark3_URMK" runat="server" />
                    </gal-input>
                    <grid-scroller no-table></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
<%--                    <div style="margin-left: auto;display:flex; width:260px; justify-content:space-between; margin-right:10px" >--%>
                 
                    <%--</div>--%>
                </div>
            </div>
            <input id="hiddenField" runat="server" style="display: none" />
        </div>
    </div>
</asp:Content>
