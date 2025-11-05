<%@ Page MasterPageFile="~/template.master" Inherits="GTU01_SNDTOUSER" CodeFile="GTU01_SNDTOUSER.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">SEND TO USER</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <gal-input-help label-size="medium" label-text="Send to user : " input-size="medium" no-description>
                <input id="sendToUserName_TOUSER" runat="server" />
            </gal-input-help>
            <gal-input label-size="medium" label-text="Delete from my tasks : " input-size="small" no-description>
                <gx:GXCheckBox ID="deleteFromMyTasksYN_DLTMY" CheckedValue="Y" UncheckedValue="" runat="server" />
            </gal-input>
            <gal-input label-size="medium" label-text="Remark : " input-size="xxlarge" no-description>
                <input id="Remark" runat="server" />
            </gal-input>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSGW" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');" data-bs-dismiss="modal">Confirm</button>
        </div>
    </div>
</asp:Content>
