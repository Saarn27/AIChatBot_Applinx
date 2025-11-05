<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01H_SCREN1.aspx.cs" Inherits="T0U01H_SCREN1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline"> VENDOR HARMONIZE CODE </h1>        
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="related-fields-area">             
                 <gal-input-help label-size="medium2" label-text="Vendor number" input-size="medium" no-description>
                    <input id="vendorNumber_VEND" runat="server" />                                
                </gal-input-help>
               <gal-input label-size="medium2" label-text="Vendor name" input-size="medium" no-description>
                    <input id="vendorName_VENDN" runat="server" />                                
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
</asp:Content>
