<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXKU01_SLT.aspx.cs" Inherits="GXKU01_SLT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline">BARCODE LABEL</h1>

            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="Label type:" label-size="medium" input-size="large2">
                        <input id="LabelType_LBL" runat="server">
                        <input id="LabelTypedes_LBLDSC" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Production order:" label-size="medium" input-size="small" no-description>
                        <input id="ProductionOrder_PROD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Item number:" label-size="medium" input-size="xlarge">
                        <input id="ItemNumber_ITEM8" runat="server">
                        <input id="ItemNumberdes_ITEMDSC" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Customer number:" label-size="medium" input-size="xlarge">
                        <input id="CustomerNumber_CUST" runat="server">
                        <input id="CustomerNumberdes_CUSTDSC" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div id="CardToRemove" class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="User:" label-size="medium" input-size="large">
                        <input id="User_USER" runat="server">
                        <input id="Userdes_USERD" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Job:" label-size="medium" input-size="small2" no-description>
                        <input id="Job_JOB" runat="server">
                    </gal-input>
                    <gal-input-help label-text="Printer output:" label-size="medium" input-size="small2" no-description>
                        <input id="ProPrinteroutput_GXK2OUTQ" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        const User = document.querySelector("#ctl00_GXPagePlaceHolder_User_USER")
        const Job = document.querySelector("#ctl00_GXPagePlaceHolder_Job_JOB")
        const PrinterOutput = document.querySelector("#ctl00_GXPagePlaceHolder_ProPrinteroutput_GXK2OUTQ")
        function pageOnLoad(gx_event) {
            if (User.hasAttribute("hidden") && Job.hasAttribute("hidden") && PrinterOutput.hasAttribute("hidden")) {
                document.querySelector("#CardToRemove").remove();
            }
        }

</script>
</asp:Content>
