<%@ Page MasterPageFile="~/template.master" Inherits="TSU03_ADD" CodeFile="TSU03_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline" id="title_ATITLE" runat="server"></h1>
        <span class="separating-line">|</span>
        <span class="sub-headline blue-headline" id="mode" runat="server"></span>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">

        <div class="main-area-form main-area-form-modal" style="width: 100%">

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input-help label-text="System:" label-size="small2" input-size="large">
                        <input id="system_AS_COD" runat="server" />
                        <input id="systemDsc_AS_DSC" runat="server" />
                    </gal-input-help>
                </div>
            </div>

            <div class="sub-headline"></div>

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input-help label-text="System:" label-size="small2" input-size="large">
                        <input id="company_ACMP" runat="server" />
                        <input id="companyDsc_AC_DSC" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input-help label-text="User/Group:" label-size="small2" input-size="large">
                        <input id="userGroup_AUSRGPR" runat="server" />
                        <input id="userDsc_AUSRD" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input-help label-text="Module:" label-size="small2" input-size="large">
                        <input id="module_AM_COD" runat="server" />
                        <input id="module_AM_DSC" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input-help label-text="Option code:" label-size="small2" input-size="large">
                        <input id="optionCode_AOCOD" runat="server" />
                        <input id="optionCodeDsc_AO_DSC" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input-help label-text="Sub option code:" label-size="small2" input-size="large">
                        <input id="subOptionCode_ABCOD" runat="server" />
                        <input id="subOptionCodeDsc_AB_DSC" runat="server" />
                    </gal-input-help>
                </div>
            </div>

            <div class="sub-headline"></div>

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input label-text="Authority:" label-size="small2" input-size="medium" no-description>
                        <select id="authority_AAUT" runat="server">
                            <option value=""></option>
                            <option value="0">0 = Not Authorized</option>
                            <option value="1">1 = Read</option>
                            <option value="2">2 = Update</option>
                            <option value="3">3 = Supervisory</option>
                        </select>
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input label-text="From Active date:" label-size="small2" input-size="small2" no-description>
                        <input id="fromActiveDate_AFDAT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input label-text="To Active date:" label-size="small2" input-size="small2" no-description>
                        <input id="toActiveDate_ATDAT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input-help label-text="Additional data:" label-size="small2" input-size="small2" no-description>
                        <input id="additionalData_AADDD" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input label-text="Last updated by:" label-size="small2" input-size="small,small" no-description>
                        <input id="lastUpdatedBy_AUPDUSR" runat="server" />
                        <input id="lastUpdatedBy_AUPDDAT" galtype="date" dateformat="dd/mm/y" runat="server" />
                    </gal-input>
                </div>
            </div>

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                <button id="btn_F10" runat="server" type="button" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[PF10]');">Add</button>
            </div>
        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        let mode = document.getElementById("ctl00_GXPagePlaceHolder_mode");
        mode.innerText = mode.innerText.replace("DISPLA", "Display");
        mode.innerText = mode.innerText.replace("UPDATE", "Update");
        mode.innerText = mode.innerText.replace("NEW", "New");
    </script>
</asp:Content>
