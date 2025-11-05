<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU02_WIN1.aspx.cs" Inherits="GHU02_WIN1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">HOLD CODE - MAINTENANCE</h1>
        <span class="sub-headline blue-headline" id="Subheadline_A_CMP" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="Entity:" label-size="small" input-size="xlarge">
                        <input id="Entity_ENTI" runat="server">
                        <input id="Entitydes_DSC" runat="server">
                    </gal-input-help>
                </div>
            </div>
            <div class="message-container ">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>


</script>
</asp:Content>
