<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FEU01_ADD.aspx.cs" Inherits="FEU01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">EXPENSES HEADER</h1>
        <span class="sub-headline blue-headline no-color" id="subheadline_ASTSD" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Number:" label-size="medium" input-size="small" no-description>
                        <input id="Number_ANUM" runat="server">
                    </gal-input>
                    <gal-input label-text="Description:" label-size="medium" input-size="large" no-description>
                        <input id="Description_ADSC" runat="server">
                    </gal-input>
                    <gal-input-help label-text="Owner user:" label-size="medium" input-size="xlarge2">
                        <input id="OwnerUser_AUSRO" runat="server">
                        <input id="OwnerUserdes_AUSRON" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Sent to user:" label-size="medium" input-size="xlarge2">
                        <input id="SentToUser_AUSRT" runat="server">
                        <input id="SentToUser_AUSRTN" runat="server">
                    </gal-input>
                    <gal-input-help label-text="Employee number:" label-size="medium" input-size="xlarge2">
                        <input id="EmployeeNumber_AEMP" runat="server">
                        <input id="EmployeeNumberdes_AEMPN" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Sales person:" label-size="medium" input-size="xlarge2">
                        <input id="SalesPerson_ASM" runat="server">
                        <input id="SalesPersondes_ASMN" runat="server">
                    </gal-input-help>
                    <gal-input label-text="From date:" label-size="medium" input-size="small2" no-description>
                        <input id="FromDate_ADATF" runat="server" galtype="date" dateformat="dd/mm/yy">
                    </gal-input>
                    <gal-input label-text="To date:" label-size="medium" input-size="small2" no-description>
                        <input id="ToDate_ADATT" runat="server" galtype="date" dateformat="dd/mm/yy">
                    </gal-input>
                    <gal-input label-text="Total trip time:" label-size="medium" input-size="small" no-description>
                        <input id="TotalTripTime_ATIME" runat="server">
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="Last updated by:" label-size="medium" input-size="small2" no-description>
                            <input id="Lastupdatedby_AUPDUSR" runat="server">
                        </gal-input>
                        <gal-input label-size="auto" input-size="small" no-description>
                            <input id="Lastupdatedbydate_AUPDDAT" runat="server" galtype="date" dateformat="dd/mm/yy">
                        </gal-input>
                    </div>
                </div>
            </div>
            <div id="addMC" class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA1" runat="server"></span>
                <button type="button" id="FactionBar" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');">Update</button>
                <button type="button" id="F13remark" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf13]');">Remarks</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        console.log(document.querySelector("#ctl00_GXPagePlaceHolder_Lastupdatedby_AUPDUSR"))
        const LastUpBy = document.querySelector("#ctl00_GXPagePlaceHolder_Lastupdatedby_AUPDUSR");
        if (LastUpBy && LastUpBy.value === "") { // Ensure element exists
            document.querySelector("#F13remark").style.display = "none";
            document.querySelector("#FactionBar").innerText = "Add";
        }
        const Des = document.querySelector("#ctl00_GXPagePlaceHolder_Description_ADSC");
        if (Des && Des.readOnly) { // Check if the element exists and is readonly
            const remarksButton = document.querySelector("#F13remark");
            const addButton = document.querySelector("#FactionBar");
            const messageContainer = document.querySelector("#addMC");
            messageContainer.insertBefore(remarksButton, addButton);
            document.querySelector("#FactionBar").style.display = "none";
        }

    </script>
</asp:Content>
