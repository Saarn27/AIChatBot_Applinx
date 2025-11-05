<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_SLT.aspx.cs" Inherits="TFU01_SLT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_hdr" runat="server"></h1>

            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="File:" label-size="xsmall" input-size="xlarge2">
                        <input id="file_FIL" runat="server">
                        <input id="fileDesc_FILD" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Key - 1:" label-size="xsmall" input-size="small" no-description>
                        <input id="key1_KEY1" runat="server">
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
