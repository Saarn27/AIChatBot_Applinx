<%@ Page MasterPageFile="~/template.master" Inherits="GWU26H_ADDL_CHANGE_RETURN" CodeFile="GWU26H_ADDL_CHANGE_RETURN.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DATA TRANSACTION</h1>
                <span id="transactionType_TYPET" class="sub-headline blue-headline" runat="server"></span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Document number:" input-size="xlarge">
                        <input id="documentNumber_DOCN" runat="server" />
                        <input id="documentDescription_DESC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow number:" input-size="medium" no-description>
                        <input id="worflowNumber_ADDNUM" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Sub document:" input-size="xsmall" no-description>
                        <input id="subDodcumentNumber_SUBD" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Workflow type:" input-size="large">
                        <input id="workFlowType_ADDWFT" runat="server" />
                        <input id="workflowTypeDescription_ADDWFTD" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input-help label-size="medium" label-text="User:" input-size="large" no-description>
                        <input id="updatedUserName_USRTRN" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium" label-text="Remark: " input-size="xlarge" no-description>
                        <input id="transactionRemark_RMK" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <gal-input label-size="medium" label-text=" " input-size="xxlarge" no-description>
                <input id="remark1_RMK1" runat="server" />
            </gal-input>
            <gal-input label-size="medium" label-text=" " input-size="xxlarge" no-description>
                <input id="remark2_RMK2" runat="server" />
            </gal-input>
            <div class="line"></div>
            <br />
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Transaction :" input-size="small,xsmall" no-description>
                        <input id="transactionDate_TRN" runat="server" galtype="date" dateformat="ddmmy" />
                        <input id="transactionTime_TIM" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="By program :" input-size="medium" no-description>
                        <input id="transactionProgram_TPGM" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_MSG2" runat="server"></span>
            </div>

        </div>
        <script>
            let str = document.getElementById("ctl00_GXPagePlaceHolder_transactionType_TYPET").innerText;
            document.getElementById("ctl00_GXPagePlaceHolder_transactionType_TYPET").innerText = str.charAt(0).toUpperCase() + str.substr(1).toLowerCase();
        </script>
    </div>
</asp:Content>
