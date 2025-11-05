<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_HDR1.aspx.cs" Inherits="TFU01_HDR1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SPECIFICATION</h1>

            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Father:" label-size="small" input-size="xlarge2">
                        <input id="father_FATHER" runat="server">
                        <input id="fatherDesc_FATDSC" runat="server">
                    </gal-input>
                    <gal-input label-text="Son:" label-size="small" input-size="xlarge2">
                        <input id="son_SON" runat="server">
                        <input id="sonDesc_SONDSC" runat="server">
                    </gal-input>
                </div>
            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Description:" label-size="small" input-size="large2" no-description>
                        <input id="description_AHDD" runat="server">
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                <button id="F10btnBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
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
