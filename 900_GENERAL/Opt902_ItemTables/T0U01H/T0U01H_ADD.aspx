<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01H_ADD.aspx.cs" Inherits="T0U01H_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">HARMONIZE CODES </h1>
        <span class="blue-headline sub-headline" id="harmonizeCodes_KOTERET" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="related-fields-area">
                <gal-input-help label-size="medium" label-text="Vendor:" input-size="medium">
                    <input id="vendor_AVEND" runat="server" />
                    <input id="vendorName_AVENDN" runat="server" />
                </gal-input-help>
                <div class="line"></div>
                <gal-input-help label-size="medium" label-text="Harmonize:" input-size="medium">
                    <input id="harmonizeCode_ASER" runat="server" />
                    <input id="harmonizeDesc_ASERD" runat="server" />
                </gal-input-help>
                <gal-input label-size="medium" label-text="Long description:" input-size="large" no-description>
                    <input id="harmonizeDesc1_ASERDL" runat="server" />
                </gal-input>
                <gal-input label-size="medium" label-text="Local Description:" input-size="large" no-description>
                    <input id="localDescription_ADESC" runat="server" />
                </gal-input>
                <gal-input label-size="medium" label-text="%-Landing cost:" input-size="xsmall" no-description>
                    <input id="landingCost_LANDCOST" runat="server" />
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".xxx"></span>
                </gal-input>
                <div class="centered-flex">
                    <gal-input label-size="medium" label-text="%-Customs:" input-size="xsmall" no-description>
                        <input id="customs_CUSTOM" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".xxx" style="margin-bottom: -2px; margin-left: 0px"></span>
                    </gal-input>
                    <gal-input label-size="auto" label-text="%-SurCharge:" input-size="small" no-description>
                        <input id="Surcharge_SURCHRG" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="xxx.xx" style="margin-bottom: -2px; margin-left: 0px"></span>
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button id="f10Btn" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        var title = document.getElementById("ctl00_GXPagePlaceHolder_harmonizeCodes_KOTERET");
        var f10Btn = document.getElementById("f10Btn");
        console.log(title.innerText.toLowerCase().trim())
        if (title.innerText.toLowerCase().trim() == ("add new code")) {
            f10Btn.innerText = "Add"
        }
        else if (title.innerText.toLowerCase().trim() == ("maintain code")) {
            f10Btn.innerText = "Update"
        }
        else if (title.innerText.toLowerCase().trim() == ("new code")) {
            f10Btn.innerText = "Copy"
        }
        else if (title.innerText.toLowerCase().trim() == ("delete code")) {
            f10Btn.innerText = "Delete"
        }
    </script>
</asp:Content>
