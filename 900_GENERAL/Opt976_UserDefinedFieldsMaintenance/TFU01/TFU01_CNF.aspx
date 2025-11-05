<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_CNF.aspx.cs" Inherits="TFU01_CNF" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">ALL FIELDS DELETE CONFIRMATION</h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">

        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-text="Delete all the fields for file:" label-size="large" input-size="small2" no-description>
                            <input id="file_FIL" runat="server">
                        </gal-input>
                        <gal-input label-text="Key - 1:" label-size="auto" input-size="small" no-description>
                            <input id="key_KEY1" runat="server">
                        </gal-input>
                    </div>
                </div>
            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Are you sure?" label-size="large" input-size="xsmall" no-description>
                        <select id="areYouSure_CN" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG4" runat="server"></span>
                <button id="F10btnBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10btn" runat="server" style="display: none;"></span>
    <script>
        var F10btn_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10btn").innerText.trim() == "";
        var F10btn_Btn = document.getElementById("F10btnBtn");
        if (F10btn_isHidden) {
            F10btn_Btn.style.display = "none"
        }

</script>
</asp:Content>
