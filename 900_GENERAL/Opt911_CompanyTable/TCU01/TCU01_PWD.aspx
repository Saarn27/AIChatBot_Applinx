<%@ Page MasterPageFile="~/template.master" Inherits="TCU01_PWD" CodeFile="TCU01_PWD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Telnet To:</h1>
        <h1 class="headline blue-headline no-color" id="TITLE_R_IP" runat="server"></h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" style="height: 240px">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-text="Company:" label-size="small" input-size="large">
                        <input id="Company_R_CMP" runat="server">
                        <input id="company_R_TCNME" runat="server">
                    </gal-input>
                    <gal-input label-text="User:" label-size="small" input-size="large">
                        <input id="User_R_USER" runat="server">
                        <input id="user_R_TSUNME" runat="server">
                    </gal-input>
                    <gal-input label-text="Program:" label-size="small" input-size="large">
                        <input id="Program_R_PGM" runat="server">
                        <input id="program_R_PGMLIB" runat="server">
                    </gal-input>
                    <gal-input label-text="Password:" label-size="small" input-size="large" no-description>
                        <input id="Password_R_PWD" runat="server" type="password">
                    </gal-input>
                </div>
            </div>

            <div class="message-container">
                <span class="invalid-feedback" id="msg" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="cancel-btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>


</asp:Content>
