<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_HDR.aspx.cs" Inherits="TFU01_HDR" %>

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
                    <gal-input label-text="File:" label-size="medium" input-size="xlarge2">
                        <input id="file_FIL" runat="server">
                        <input id="quot_FILD" runat="server">
                    </gal-input>
                    <gal-input label-text="Key - 1:" label-size="medium" input-size="small" no-description>
                        <input id="key_KEY1" runat="server">
                    </gal-input>
                </div>
            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Description:" label-size="medium" input-size="large2" no-description>
                        <input id="description_AHDD" runat="server">
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="R&D weeks:" label-size="medium" input-size="xsmall" no-description>
                            <input id="rDWeeks_RDWK" runat="server">
                        </gal-input>
                        <gal-input label-text="Design hours:" label-size="auto" input-size="small" no-description>
                            <input id="designHours_DSGNH" runat="server">
                        </gal-input>
                    </div>
                    <gal-input label-text="Production weeks:" label-size="medium" input-size="xsmall" no-description>
                        <input id="productionWeeks_PRDWK" runat="server">
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
