<%@ Page MasterPageFile="~/template.master" Inherits="TSU02_DLT" CodeFile="TSU02_DLT.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">Delete All User Options</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" input-size="large" label-text="From User:">
                        <input id="user_FUSRD" runat="server" />
                        <input id="userDesc_FNAM" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" input-size="medium" label-text="From System:" no-description>
                        <select id="fromSystem_FSYSD" runat="server"></select>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Blank = All systems"></span>
                    </gal-input>
                    <gal-input label-size="small" input-size="small" label-text="From Option:" no-description>
                        <input id="fromOption_FOPTD" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" input-size="small" label-text="To Option:" no-description>
                        <input id="toOption_TOPTD" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
        </div>

    </div>
</asp:Content>
