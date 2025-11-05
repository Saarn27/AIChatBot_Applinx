<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_SLT1.aspx.cs" Inherits="TFU01_SLT1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">USER DEFINED FIELDS MAINTENANCE</h1>

            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="Father:" label-size="xsmall" input-size="xlarge2">
                        <input id="father_FATHER" runat="server">
                        <input id="fatherDesc_FATDSC" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Son:" label-size="xsmall" input-size="xlarge2">
                        <input id="son_SON" runat="server">
                        <input id="sonDesc_SONDSC" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_msg" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
