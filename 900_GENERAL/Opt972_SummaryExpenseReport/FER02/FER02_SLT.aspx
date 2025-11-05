<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FER02_SLT.aspx.cs" Inherits="FER02_SLT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline">EXPENSES REPORT - SUMMARY</h1>

            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-text="Dates from:" label-size="small" input-size="small2" no-description>
                            <input id="DatesFrom_FDATE" runat="server" galtype="date" dateformat="ddmmy">
                        </gal-input>
                        <gal-input label-text="To:" label-size="auto" input-size="small2" no-description>
                            <input id="DatesTo_TDATE" runat="server" galtype="date" dateformat="ddmmy">
                        </gal-input>
                    </div>
                    <gal-input-help label-text="Employee:" label-size="small" input-size="large">
                        <input id="Employee_EMPL" runat="server">
                        <input id="Employeedes_EMPLD" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Sales Person:" label-size="small" input-size="large">
                        <input id="SalesPerson_SPRSN" runat="server">
                        <input id="SalesPersondes_SPRSND" runat="server">
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input-help label-text="Cost center:" label-size="small" input-size="xxsmall" no-description>
                            <input id="CostCenter_CODCOST" runat="server">
                        </gal-input-help>
                        <gal-input-help label-text="" label-size="auto" input-size="large">
                            <input id="CostCenter_COSTCNTR" runat="server">
                            <input id="CostCenterdes_COSTCNTRD" runat="server">
                        </gal-input-help>
                    </div>
                    <gal-input-help label-text="Region:" label-size="small" input-size="large">
                        <input id="Region_RGN" runat="server">
                        <input id="Regiondes_RGND" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Division:" label-size="small" input-size="medium">
                        <input id="Division_DIV" runat="server">
                        <input id="Divisiondes_DIVD" runat="server">
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input label-text="Expense type:" label-size="small" input-size="small" no-description>
                            <select id="ExpenseType_EXPT1" runat="server"></select>
                        </gal-input>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT2" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT3" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT4" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT5" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT6" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT7" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT8" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT9" runat="server"></select>
                            </gal-input>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input input-size="small" no-description>
                                <select id="ExpenseType_EXPT10" runat="server"></select>
                            </gal-input>
                        </div>
                        <button class="active add-select" onclick="openNewSelect('grp3-cont',event)"></button>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf9]');">Print</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

        checkSelectValue('grp3-cont', 'select');

</script>
</asp:Content>
