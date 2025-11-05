<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TEU01_ADD.aspx.cs" Inherits="TEU01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">ERROR MESSAGES</h1>
        <span class="sub-headline blue-headline" id="Status_s" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">

        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="System:" label-size="small2" input-size="medium" no-description>
                        <select id="System_SYS" runat="server">
                        </select>
                    </gal-input>
                    <gal-input label-text="Error number:" label-size="small2" input-size="small" no-description>
                        <input id="ErrorNumber_NUMB" runat="server">
                    </gal-input>
                    <gal-input label-text="Subject:" label-size="small2" input-size="medium" no-description>
                        <input id="Subject_SUBJECT" runat="server">
                    </gal-input>
                    <gal-input label-text="Error description:" label-size="small2" input-size="xxxxlarge" no-description>
                        <input id="ErrorDescription_DES" runat="server">
                    </gal-input>
                    <gal-input label-text="Second language:" label-size="small2" input-size="xxxxlarge" no-description>
                        <input id="Secondlanguage_DESL" runat="server">
                    </gal-input>
                    <gal-input label-text="Warning:" label-size="small2" input-size="small2" no-description>
                        <select id="Warn_WRN" runat="server">
                        </select>
                    </gal-input>
                    <gal-input label-text="Override:" label-size="small2" input-size="xsmall" no-description>
                        <select id="Override_OVR" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                    <gal-input label-text="Option:" label-size="small2" input-size="small" no-description>
                        <input id="Option_OPT" runat="server">
                    </gal-input>
                    <gal-input label-text="System code:" label-size="small2" input-size="medium" no-description>
                        <gx:GXCheckBox ID="SystemCode_IMC" CheckedValue="I" UncheckedValue="" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                <button id="F10_f10Btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10_f10" runat="server" style="display: none;"></span>
    <script>
        var F10_f10_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10_f10").innerText.trim() == "";
        var F10_f10_Btn = document.getElementById("F10_f10Btn");
        if (F10_f10_isHidden) {
            F10_f10_Btn.style.display = "none"
        }

    </script>
</asp:Content>
