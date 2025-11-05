<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWU21_ACP.aspx.cs" Inherits="GWU21_ACP" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">CHANGE TEMPLATE</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <span>There is private workflow for the user :</span>
            <br />
            <gal-input label-size="xlarge" input-size="">
                <input class="no-color" id="currentUser_CHGUSRN" runat="server" />
            </gal-input>
            <div class="line"></div>
            <span>Do you want to change automatically in private workflow to new user :</span>
            <br />
            <gal-input label-size="" input-size="large" no-description>
                <input id="changeToNewUser_NEWUSRN" runat="server" />
                <gx:GXCheckBox ID="changeToNewUserYN_YN" CheckedValue="Y" UncheckedValue="N" runat="server" />
            </gal-input>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSGA" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Accept</button>
        </div>
    </div>
</asp:Content>
