<%@ Page MasterPageFile="~/template.master" Inherits="GWU26T_SFL2" CodeFile="GWU26T_SFL2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW REMARKS</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <div class="spaced-row">
                        <gal-input label-size="medium" label-text="Workflow number :" input-size="small" no-description>
                            <input id="workFlowNumber_UWFNUM" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="Open date :" input-size="small" no-description>
                            <input id="workFlowOpenDate_UOPND" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="medium" label-text="Workflow type :" input-size="xlarge">
                        <input id="workFlowType_UWFTYP" runat="server" />
                        <input id="workFlowTypeDesc_UWFTYPD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Document number :" input-size="xlarge">
                        <input id="workFlowDocNumber_UDOCN" runat="server" />
                        <input id="workFlowDocNumber_UDOCDSC" runat="server" />
                    </gal-input>
                </div>
            </div>
            <h1 style="font-weight: 600; font-size: 16px; color: #2D7DD2; margin-bottom: 0; margin-top: 30px">Remarks:</h1>
            <div class="line" style="margin-top: 0;"></div>
            <span style="font-weight: 500; font-size: 20px; margin-bottom: 10px" id="remark1" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark2" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark3" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark4" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark5" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark6" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark7" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark8" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark9" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark10" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark11" runat="server" />
            <div style="padding-bottom: 7px; font-size: 20px" id="remark12" runat="server" />
            <grid-scroller style="padding-right: 1300px" no-table></grid-scroller>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG2" runat="server"></span>
            </div>

        </div>

    </div>
</asp:Content>
