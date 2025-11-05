<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="CRU03_ADD.aspx.cs" Inherits="CRU03_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SALESMAN MAINTENANCE</h1>
                <span class="sub-headline blue-headline" id="mode_S1" runat="server"></span>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area column-form">
                    <div class="spaced-column">
                        <gal-input label-size="medium2" label-text="Salesman code" input-size="medium" no-description>
                            <input id="SalesmanCode_SALMAN" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="medium2" label-text="Customer number:" input-size="xlarge">
                            <input id="CustomerNo_RCCUST" runat="server" />
                            <input id="CustomerNoDesc_RCCUSTD" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="medium2" label-text="Salesman name:" input-size="xxlarge" no-description>
                            <input id="SalesmanName_RCFIRST" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="medium2" label-text="Salesman type:" input-size="xlarge">
                            <input id="SalesmanTyp_SALTYP" runat="server" />
                            <input id="SalesmanTypDesc_SALTYPD" runat="server" />
                        </gal-input-help>
                        <gal-input-help label-size="medium2" label-text="Cose center:" input-size="xlarge">
                            <input id="CostCenter_COSTC" runat="server" />
                            <input id="CostCenterDesc_COSTCD" runat="server" />
                        </gal-input-help>
                        <gal-input-help label-size="medium2" label-text="Account number:" input-size="xlarge">
                            <input id="AccNumber_ACCNUM" runat="server" />
                            <input id="AccNumberDesc_ACCNUMD" runat="server" />
                        </gal-input-help>
                        <div class="centered-flex">
                            <gal-input label-size="medium2" label-text="Credit limit:" input-size="small" no-description>
                                <input id="CreditLimit_CREDITA" runat="server" />
                            </gal-input>
                            <gal-input label-size="auto" label-text="Due amount:" input-size="small" no-description>
                                <input id="DueAmount_DUEDAA" runat="server" />
                            </gal-input>
                        </div>
                        <gal-input label-size="medium2" label-text="Job title:" input-size="medium" no-description>
                            <input id="JobTitle_RCJOB" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="Department:" input-size="medium" no-description>
                            <input id="Department_RCDEPT" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="medium2" label-text="Address number:" input-size="medium" no-description>
                            <input id="AddressNo_ADRESNO" runat="server" />
                        </gal-input-help>
                        <div class="centered-flex">
                            <gal-input label-size="medium2" label-text="Phone number:" input-size="medium" no-description>
                                <input id="PhoneNo_RCPHN" runat="server" />
                            </gal-input>
                            <gal-input label-size="auto" label-text="Pager number:" input-size="medium" no-description>
                                <input id="PagerNo_RCPHNP" runat="server" />
                            </gal-input>
                        </div>
                        <gal-input label-size="medium2" label-text="Help display:" input-size="xsmall" no-description>
                            <gx:GXCheckBox ID="HelpDisplay_SCRCDA6" CheckedValue="" UncheckedValue="N" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="E-Mail:" input-size="xxlarge" no-description>
                            <input id="EMail_RCEMAIL" runat="server" onkeyup="createDynamicLinks('EMail_RCEMAIL')" />
                        </gal-input>
                        <gal-input label-size="medium2" label-text="E-Mail 2:" input-size="xxlarge" no-description>
                            <input id="EMail2_RCEMAIL2" runat="server" onkeyup="createDynamicLinks('EMail2_RCEMAIL2')" />
                        </gal-input>
                        <div class="centered-flex">
                            <gal-input-help label-size="medium2" label-text="Open date:" input-size="small2" no-description>
                                <input id="OpenDate_OPNDAT" runat="server" galtype="date" dateformat="dd/mm/yy" />
                            </gal-input-help>
                            <gal-input label-size="auto" label-text="Last update:" input-size="small2" no-description>
                                <input id="LastUpdateDate_RCTUPD" runat="server" galtype="date" dateformat="dd/mm/yy" />
                            </gal-input>
                            <gal-input-help label-size="auto" label-text="User:" input-size="small2" no-description>
                                <input id="LastUpdateUser_RCUSRU" runat="server" />
                            </gal-input-help>
                        </div>
                    </div>
                    <div class="spaced-column">
                        <gal-input-help label-size="medium" label-text="User (ERP):" input-size="large">
                            <input id="UserErp_USERINAGL" runat="server" />
                            <input id="UserErpDesc_USERINAGLD" runat="server" />
                        </gal-input-help>
                        <gal-input-help label-size="medium" label-text="Currency:" input-size="small" no-description>
                            <input id="Currency_SALCURR" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="medium" label-text="Sort statis:" input-size="xxsmall" no-description>
                            <input id="SortStatis_SORTS" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Title:" input-size="large" no-description>
                            <input id="Title_RCTITLE" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="medium" label-text="Desc /Tech:" input-size="large">
                            <input id="DeskTech_DESK" runat="server" />
                            <input id="DeskTechDesc_DESKD" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="medium" label-text="Fax number:" input-size="medium" no-description>
                            <input id="FaxNo_RCFAX" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Mobile number:" input-size="medium" no-description>
                            <input id="MobileNo_RCPHNM" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Territory:" input-size="large" no-description>
                            <select id="Territory_TERA" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Region:" input-size="large" no-description>
                            <select id="Region_RGNA" runat="server" />
                        </gal-input>
                          <gal-input label-size="medium" label-text="State" input-size="large" no-description>
                            <select id="state_STATA" runat="server" />                         
                        </gal-input>
                        <gal-input label-size="medium" label-text="Manager:" input-size="small" no-description>
                            <gx:GXCheckBox ID="Manager_MANGRA" CheckedValue="M" UncheckedValue="" runat="server" />
                        </gal-input>

                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" id="f10Btn" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');"></button>
                </div>
            </div>
        </div>
    </div>
    <script>

        document.getElementById("f10Btn").innerText = document.getElementById("ctl00_GXPagePlaceHolder_mode_S1").innerText;
        function pageOnLoad(gx_event) {
            createDynamicLinks('EMail_RCEMAIL');
            createDynamicLinks('EMail2_RCEMAIL2');
        }
    </script>
</asp:Content>
