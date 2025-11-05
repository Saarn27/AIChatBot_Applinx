<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU05_ADD1.aspx.cs" Inherits="GWTU05_ADD1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">PARAMETER TYPES DEFINTION</h1>
        <span class="sub-headline blue-headline" id="title1" runat="server"></span>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input label-text="Workflow type:" label-size="small" input-size="xlarge" no-description>
                    <select id="WorkflowType_ACOD" runat="server"></select>
                </gal-input>
                <div class="line"></div>
                <div class="blue-headline" style="font-weight: bold; margin-bottom: 10px">Keys</div>
                <gal-input label-text="Code 1:" label-size="small" input-size="xlarge" no-description>
                    <select id="Code_code1" runat="server" />
                </gal-input>
                <gal-input label-text="Code 2:" label-size="small" input-size="xlarge" no-description>
                    <select id="Code_code2" runat="server" />
                </gal-input>
                <gal-input label-text="Code 3:" label-size="small" input-size="xlarge" no-description>
                    <select id="Code_code3" runat="server" />
                </gal-input>
                <gal-input label-text="Code 4:" label-size="small" input-size="xlarge" no-description>
                    <select id="Code_code4" runat="server" />
                </gal-input>
                <gal-input label-text="Code 5:" label-size="small" input-size="xlarge" no-description>
                    <select id="Code_code5" runat="server" />
                </gal-input>
                <gal-input label-text="Code 6:" label-size="small" input-size="xlarge" no-description>
                    <select id="Code_code6" runat="server" />
                </gal-input>
                <div class="line"></div>
                <gal-input label-text="Result:" label-size="small" input-size="medium" no-description>
                    <input id="Result" runat="server" />
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button type="button" id="F10_button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"></button>
            </div>
        </div>
    </div>
    <script>
        var page_title = document.getElementById("ctl00_GXPagePlaceHolder_title1");

        document.getElementById("F10_button").innerText = page_title.innerText;
        if (document.getElementById("F10_button").innerText == "ADD") {
            document.getElementById("F10_button").innerText = "Add";
        }
        if (document.getElementById("F10_button").innerText == "UPDATE") {
            document.getElementById("F10_button").innerText = "Update";
        }
        if (document.getElementById("F10_button").innerText.toLowerCase() == "display") {
            document.getElementById("F10_button").style.display = "none";
        }
    </script>
</asp:Content>
