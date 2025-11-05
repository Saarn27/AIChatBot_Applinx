<%@ Page MasterPageFile="~/template.master" Inherits="TSU05_ADDP" CodeFile="TSU05_ADDP.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline" id="title_ATITLE" runat="server"></h1>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">

        <div class="main-area-form main-area-form-modal" style="width: 100%">

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input-help label-text="Company:" label-size="large" input-size="large2">
                        <input id="company_ACMPG" runat="server" />
                        <input id="companyDesc_ACMPD" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input-help label-text="User:" label-size="large" input-size="large2">
                        <input id="user_AUSR" runat="server" />
                        <input id="userDesc_AUSRD" runat="server" />
                    </gal-input-help>
                </div>
            </div>

            <div class="sub-headline"></div>

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input label-text="Printer/Output queue:" label-size="large" input-size="large2" no-description>
                        <input id="printerOutputQueue_APRT" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input label-text="Report type:" label-size="large" input-size="large2" no-description>
                        <input id="reportType_ARTYP" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input label-text="Remark-1:" label-size="large" input-size="large2" no-description>
                        <input id="remark1_ARMK1" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input label-text="Remark-2:" label-size="large" input-size="large2" no-description>
                        <input id="remark2_ARMK2" runat="server" />
                    </gal-input>
                </div>
            </div>

            <div class="sub-headline"></div>

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input label-text="Active dates from:" label-size="large" input-size="small2" no-description>
                        <input id="activeDatesFrom_AFDAT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input label-text="Active dates to:" label-size="large" input-size="small2" no-description>
                        <input id="activeDatesTo_ATDAT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form" id="lastDiv" runat="server">
                    <gal-input label-size="large" input-size="small2" dynamic-label no-description>
                        <input id="lastUpdatedBy" runat="server" />
                        <input id="lastUPD_AUPDUSR" runat="server" />                        
                    </gal-input>
                </div>
                <div class="column-form" id="lastDiv2" runat="server">
                    <gal-input label-text="Last updated date:" label-size="large" input-size="small2" no-description>
                        <input id="lastUpdDate_AUPDDAT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
            </div>

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button id="updbtn" runat="server" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[PF10]');">Update</button>
            </div>
        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>

    <script>
        var title = document.querySelector("#ctl00_GXPagePlaceHolder_title_ATITLE");

        if (title) {
            var parts = title.textContent.trim().split("=>");

            if (parts.length === 2) {
                title.innerHTML = parts[0].trim();
                const subTitle = document.createElement("span");
                subTitle.innerText = parts[1].trim();
                subTitle.classList.add("blue-headline", "sub-headline");
                title.parentElement.appendChild(subTitle);
            }
        }
    </script>

</asp:Content>
