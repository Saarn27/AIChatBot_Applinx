<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWT23_SFL1.aspx.cs" Inherits="OWT23_SFL1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">Gmfx</h1>
    </div>
    <div id="gx_screenArea" class="form-grey-BG" style="overflow:inherit !important;">
        <div class="main-area-form main-area-form-modal" style="padding:inherit;">
            <gal-input-radio input-size="medium" style="padding:19px; margin-bottom:-20px;display:inherit;">
                <span>Please select Gmfx report:</span>
            </gal-input-radio>
            <gal-input-radio input-size="medium" style="padding:19px; display:inherit;">
                <input id="line1_DSL2" runat="server" />
            </gal-input-radio>
            <gal-input-radio input-size="medium" style="padding:19px;display:inherit;">
                <input id="line2_DSL2" runat="server" />
            </gal-input-radio>
            <gal-input-radio input-size="medium" style="padding:19px;display:inherit;">
                <input id="line3_DSL2" runat="server"/>
            </gal-input-radio>
            <gal-input-radio input-size="medium" style="padding:19px;display:inherit;">
                <input id="line4_DSL2" runat="server"/>
            </gal-input-radio>
        </div>
        <br />
        <div class="message-container message-container-with-btn" style="padding-bottom: 15px;">
            <span class="invalid-feedback" id="msg_MSG" style="padding-left: 10px; display: none;">Please choose one of options!</span>
            <button type="button" id="cancel" class="btn btn-light btn-white big-button" onclick="gx_SubmitKey('[pf12]');" data-bs-dismiss="modal">Cancel</button>
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="chooseGMFfile(this)" style="margin-right: 15px; margin-bottom: 15px;" data-bs-dismiss="modal">Confirm</button>
        </div>
    </div>
    <script>
        function chooseGMFfile(button) {
            var isChecked1 = document.getElementById("ctl00_GXPagePlaceHolder_line1_DSL2").checked;
            var isChecked2 = document.getElementById("ctl00_GXPagePlaceHolder_line2_DSL2").checked;

            if (isChecked1) {
                button.addEventListener("click", submitFunc('line1_DSL2'));
                document.getElementById("ok").click();
            } else if (isChecked2) {
                button.addEventListener("click", submitFunc('line2_DSL2'));
                document.getElementById("cancel").click();
            } else {
                document.getElementById("msg_MSG").style.display = "block";
            }
        }
        function submitFunc(IDToPress) {
            gx_SubmitKeyInPos(IDToPress, '[enter]');
        }
    </script>
</asp:Content>
