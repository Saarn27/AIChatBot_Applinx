<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FEU01_LIN.aspx.cs" Inherits="FEU01_LIN" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Delete Confirmation</h1>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area">
                <div class="spaced-column">
                    <gal-input label-text="" label-size="auto" input-size="xlarge2" no-description>
                        <span id="line1_LINE1" runat="server" style="font-size: large"></span>
                    </gal-input>
                    <gal-input label-text="" label-size="auto" input-size="xlarge2" no-description style="margin-top: -10px">
                        <span id="line2_LINE2" runat="server"></span>
                    </gal-input>
                    <input id="YesorNo_DLIN" runat="server" style="display: none" />
                </div>
            </div>
            <div class="message-container message-container-with-btn" style="justify-content:end;margin-bottom:-30px">
                <button class="btn btn-primary btn-galweb" onclick="yesOrNo('Y');" style="margin-left: 12px; font-size: 14px; padding: 4px 8px;">yes</button>
                <button class="btn btn-primary btn-galweb" onclick="yesOrNo('N');" style="margin-left: 8px; font-size: 14px; padding: 4px 11px;">no</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        document.getElementById("ctl00_GXPagePlaceHolder_line2_LINE2").innerText = "do you want to delete it anyway?"
        function yesOrNo(value) {
            document.getElementById('ctl00_GXPagePlaceHolder_YesorNo_DLIN').value = value;
            gx_SubmitKey('[enter]');
        }
    </script>
</asp:Content>
