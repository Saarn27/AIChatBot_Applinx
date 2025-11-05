<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="XT0HU01_ADD.aspx.cs" Inherits="XT0HU01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">COUNTRY / REGION HARM</h1>
        <span class="sub-headline blue-headline" id="header_KOTERET" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-size="xxlarge" input-size="xlarge" dynamic-label>
                            <input id="subHeader_KOT1" runat="server">
<%--                            <input id="crReg1_ACNTRSK" runat="server">--%>
                            <input id="crReg2_ACNTRS" runat="server">
                            <input id="crReg3_ACNTRSD" runat="server">
                        </gal-input>
                    </div>
                    <gal-input label-text="Application/Son Group/Item/Harmonize:" label-size="xxlarge" input-size="xxsmall" no-description>
                        <input id="type_ACODEAS" runat="server">
                    </gal-input>
                    <gal-input-help label-text="Application/Son Group/Item/Harmonize:" label-size="xxlarge" input-size="xlarge">
                        <input id="type2_AKEY" runat="server">
                        <input id="type2d_AKEYD" runat="server">
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input-help label-text="Harmonize:" label-size="xxlarge" input-size="xsmall" no-description>
                            <input id="harmonize1_HARMCA" runat="server">
                        </gal-input-help>
                        <gal-input-help label-text="" label-size="auto" input-size="small2" no-description>
                            <input id="harmonize2_HARMCAD" runat="server">
                        </gal-input-help>
                        <gal-input label-text="" label-size="auto" input-size="xlarge2">
                            <input id="harmonize3_HARMCAD1" runat="server">
                            <input id="harmonize4_HARMCADL" runat="server">
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button id="btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update / add</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        var text = document.getElementById("ctl00_GXPagePlaceHolder_header_KOTERET").innerText;
        if (text.toLowerCase().includes('copy')) {
            document.getElementById("btn").innerText = 'Copy';
        } else if (text.toLowerCase().includes('maintain')) {
            document.getElementById("btn").innerText = 'Update';
        } else if (text.toLowerCase().includes('delete')) {
            document.getElementById("btn").innerText = 'Delete';
        } else {
            document.getElementById("btn").innerText = 'Add';
        }

</script>
</asp:Content>
