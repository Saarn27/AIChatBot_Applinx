<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FEU01_ADDI.aspx.cs" Inherits="FEU01_ADDI" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">EXPENSES LINE</h1>
        <span class="sub-headline blue-headline no-color" id="subheadline_ALSTSD" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Line number:" label-size="large" input-size="xsmall" no-description>
                        <input id="LineNumber_ALINE" runat="server">
                    </gal-input>
                    <gal-input label-text="Type:" label-size="large" input-size="large" no-description>
                        <select id="Type_ATYP" runat="server"></select>
                    </gal-input>
                    <gal-input label-text="Description:" label-size="large" input-size="xlarge" no-description>
                        <input id="Description_ALDSC" runat="server">
                    </gal-input>
                    <gal-input label-text="Supplier of service" label-size="large" input-size="medium" no-description>
                        <input id="SupplierOfService_ASUP" runat="server">
                    </gal-input>
                    <gal-input-help label-text="Custumer linked to expense" label-size="large" input-size="large">
                        <input id="CustumerLinkedToExpense_ACUST" runat="server">
                        <input id="CustumerLinkedToExpensedes_ACUSTD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Pay type" label-size="large" input-size="large" no-description>
                        <select id="PayType_ACPT" runat="server"></select>
                    </gal-input-help>
                    <gal-input-help label-text="Currency:" label-size="large" input-size="large">
                        <input id="Currency_ACUR" runat="server">
                        <input id="Currencydes_ACURD" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Amount:" label-size="large" input-size="medium" no-description>
                        <input id="Amount_AVTS" runat="server">
                    </gal-input>
                    <gal-input laebl-text="Amount approved" label-size="large" input-size="medium" no-description>
                        <input id="AmountApproved_AVTSA" runat="server">
                    </gal-input>
                    <gal-input label-text="Reference:" label-size="large" input-size="xlarge" no-description>
                        <input id="Reference_AREF" runat="server">
                    </gal-input>
                    <gal-input label-text="Expense Date:" label-size="large" input-size="small2" no-description>
                        <input id="ExpenseDate_ADATE" runat="server" galtype="date" dateformat="dd/mm/yy">
                    </gal-input>
                    <gal-input label-text="Approver" label-size="large" input-size="large">
                        <input id="Approver_AUSRN" runat="server">
                        <input id="ApproverDate_ADAT" runat="server">
                    </gal-input>
                    <gal-input label-text="Amount deductable" label-size="large" input-size="medium" no-description>
                        <input id="AmountDeductable_AVTSD" runat="server">
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="Last updated by" label-size="large" input-size="small2" no-description>
                            <input id="Lastupdatedby_AUPDUSR" runat="server">
                        </gal-input>
                        <gal-input label-size="auto" input-size="small" no-description>
                            <input id="Lastupdatedby_AUPDDAT" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>
            <div id="add1MC" class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA1" runat="server"></span>
                <button id="F13remarks" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf13]');">Remarks</button>
                <button id="F10" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');">Update</button>
                <div>
                    <button id="F8_dynamicbutton" runat="server" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf8]');">IMC Compass Link</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        //console.log(document.querySelector("#ctl00_GXPagePlaceHolder_Lastupdatedby_AUPDUSR"))
        const LastUpBy = document.querySelector("#ctl00_GXPagePlaceHolder_Lastupdatedby_AUPDUSR");
        if (LastUpBy && LastUpBy.value === "") { // Ensure element exists
            document.querySelector("#add1MC").children[1].remove()
            document.querySelector("#F10").innerText = "Add";
        }
        console.log(document.querySelector("#add1MC"))
        const Amount = document.querySelector("#ctl00_GXPagePlaceHolder_Amount_AVTS");
        if (Amount && Amount.readOnly) { // Check if the element exists and is readonly
            const remarksButton = document.querySelector("#F13remarks");
            const addButton = document.querySelector("#F10");
            const messageContainer = document.querySelector("#add1MC");
            //messageContainer.insertBefore(remarksButton, addButton);
            //document.querySelector("#F10").style.display = "none";
            document.querySelector("#add1MC").children[2].remove()
        }



    </script>
</asp:Content>
