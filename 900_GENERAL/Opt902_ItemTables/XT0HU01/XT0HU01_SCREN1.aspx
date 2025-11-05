<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="XT0HU01_SCREN1.aspx.cs" Inherits="XT0HU01_SCREN1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">COUNTRY / REGION HARMONIZE CODE</h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Select code:" label-size="small2" input-size="small" no-description>
                        <select id="code_CODECR" runat="server" onchange="gx_SubmitKeyInPos(code_CODECR,'[pageup]');">
                            <option value=""></option>
                            <option value="C">Country</option>
                            <option value="R">Region</option>
                        </select>
                    </gal-input>
                    <gal-input-help label-text="Country / Region:" label-size="small2" input-size="xsmall" no-description>
                        <input id="countryRegion_COUNT" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>


</script>
</asp:Content>
