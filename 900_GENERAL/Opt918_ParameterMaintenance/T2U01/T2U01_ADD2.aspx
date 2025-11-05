<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U01_ADD2.aspx.cs" Inherits="T2U01_ADD2" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">KEY MAINTENANCE</h1>
        <span class="sub-headline blue-headline" id="subheadline_MODE2" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="System:" label-size="small" input-size="medium" no-description>
                        <select id="System_ASYS" runat="server"></select>
                    </gal-input>
                    <gal-input label-text="Key code:" label-size="small" input-size="xsmall" no-description>
                        <input id="KeyCode_ACOD2" runat="server">
                    </gal-input>
                    <gal-input label-text="Description:" label-size="small" input-size="xlarge" no-description>
                        <input id="description_ADSC" runat="server">
                    </gal-input>
                    <gal-input-help label-text="Company:" label-size="small" input-size="large">
                        <input id="Company_ACMP" runat="server">
                        <input id="Companydes_AC_DSC" runat="server">
                    </gal-input-help>
                    <gal-input label-text="IMC code:" label-size="small" input-size="small" no-description>
                        <select id="SystemCode_AIMC" runat="server">
                            <option value=""></option>
                            <option value="I">System</option>
                        </select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="Validity file:" label-size="small" input-size="small2" no-description>
                            <input id="ValidityFile_AVLDF" runat="server">
                        </gal-input>
                        <gal-input label-text="Key level 1:" label-size="auto" input-size="xsmall" no-description>
                            <input id="KeyLevel1_AKLVL1" runat="server">
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input label-text="Check validity:" label-size="small" input-size="xsmall" no-description>
                            <select id="CheckValidity_T2A03" runat="server">
                                <option value=""></option>
                                <option value="N">No</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Key level 2:" label-size="auto" input-size="xsmall" no-description style="margin-left: 65px">
                            <input id="KeyLevel2_AKLVL2" runat="server">
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button id="F10_F102Btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10_F102" runat="server" style="display: none;"></span>
    <script>
        var F10_F102_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10_F102").innerText.trim() == "";
        var F10_F102_Btn = document.getElementById("F10_F102Btn");
        if (F10_F102_isHidden) {
            F10_F102_Btn.style.display = "none"
        }

        if (document.querySelector("#ctl00_GXPagePlaceHolder_subheadline_MODE2").innerText === "UPDATE") {
            F10_F102_Btn.innerText = "Update"
        }
        else if (document.querySelector("#ctl00_GXPagePlaceHolder_subheadline_MODE2").innerText === "COPY") {
            F10_F102_Btn.innerText = "Copy"
        }


</script>
</asp:Content>
