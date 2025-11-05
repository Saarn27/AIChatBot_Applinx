<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01HO_ADD.aspx.cs" Inherits="T0U01HO_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">COUNTRY OF ORIGIN</h1>
        <span class="blue-headline headline" id="cooExportCodes_KOTERET" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent"  >
            <div class="related-fields-area">
                <gal-input label-size="large" label-text="Country Of Origin:" input-size="large" no-description>
                    <select id="countryOfExport_COOCA" runat="server"></select>
                </gal-input>
                <gal-input-help label-size="large" label-text="Harmonize:" input-size="large">
                    <input id="harmonize_HARMCA" runat="server" />
                    <input id="harmonize_HARMCAD" runat="server" />
                </gal-input-help>
                <gal-input-help label-size="large" label-text="Harmonize description:" input-size="medim" no-description>
                    <input id="harmonize_HARMCAD1" runat="server" />
                </gal-input-help>
                <gal-input-help label-size="large" label-text="Harmonize long description:" input-size="large" no-description>
                    <input id="harmonize_HARMCADL" runat="server" />
                </gal-input-help>
                <div class="centered-flex">
                    <gal-input label-size="large" label-text="%-Customs:" input-size="xsmall" no-description>
                        <input id="customs_CUSTOM" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=".xxx" style="margin-bottom:-2px;margin-left:0px" id="empty2"></span>
                    </gal-input>
                    <gal-input label-size="auto" label-text="%-SurCharge:" input-size="small" no-description>
                        <input id="Surcharge_SURCHRG" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="xxx.xx" style="margin-bottom:-2px;margin-left:0px"></span>
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');" id="F10"></button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        let title = document.getElementById("ctl00_GXPagePlaceHolder_cooExportCodes_KOTERET");
        let btn = document.getElementById("F10");
        console.log(title.innerText);
        if (title.innerText.trim().includes("MAINTAIN")) {
            btn.innerText = "Update";
        }
        else if (title.innerText.trim().includes("COPY")) {
            btn.innerText = "Copy";
        }
        else if (title.innerText.trim().includes("ADD")) {
            btn.innerText = "Add";
        }
        else if (title.innerText.trim().includes("DELETE")) {
            btn.innerText = "Delete";
        }

    </script>
</asp:Content>
