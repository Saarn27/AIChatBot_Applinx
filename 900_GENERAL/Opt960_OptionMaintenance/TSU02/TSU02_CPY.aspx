<%@ Page MasterPageFile="~/template.master" Inherits="TSU02_CPY" CodeFile="TSU02_CPY.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">Copy/Update User Options</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" input-size="large" label-text="From User:">
                        <input id="fromUser_FUSRC" runat="server"/>
                        <input id="fromUserDesc_FNAM" runat="server"/>
                    </gal-input>
                    <gal-input label-size="small" input-size="medium" label-text="From System:" no-description>
                        <select id="fromSystem_FSYSC" runat="server"></select>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Blank = All systems"></span>
                    </gal-input>
                    <gal-input-help label-size="small" input-size="large" label-text="To User:" no-description>
                        <input id="toUser_TUSRC" runat="server"/>
                    </gal-input-help>
                    <gal-input label-size="small" input-size="large" label-text="Options:" no-description>
                        <select id="options_OP" runat="server" >
                            <option value="1">Copy to exist menu options</option>
                            <option value="2">Delete exist menu options and copy</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="small" input-size="small" label-text="From Option:" no-description>
                        <input id="fromOption_FOPTC" runat="server"/>
                    </gal-input>
                    <gal-input label-size="small" input-size="small" label-text="To Option:" no-description>
                        <input id="toOption_TOPTC" runat="server"/>
                    </gal-input>
                </div>
            </div>
              <div class="message-container">
            <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
        </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Copy</button>

        </div>
      
    </div>
</asp:Content>
