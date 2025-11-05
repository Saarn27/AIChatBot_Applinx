<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_RETURN" CodeFile="GWU26_RETURN.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">RETURN TO USER</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">

            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="Return to user:" input-size="xlarge">
                        <input id="returnToUser_RTNUSR" runat="server" />
                        <input id="returnToUserName_RTNUSRN" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" label-text="Comment:" input-size="xxlarge" no-description>
                        <input id="returnUserComment_RTNTSKL" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="msg_RTNMSG" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Accept</button>
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf13]');">Remarks</button>
        </div>
    </div>
</asp:Content>
