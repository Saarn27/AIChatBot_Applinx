<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01V_ADD.aspx.cs" Inherits="T0U01V_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" >HART - SCOTT - RODINO</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="small" label-text="Code:" input-size="xsmall" no-description>
                        <input id="Code_T0KEYA" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" label-text="HSR code:" input-size="small" no-description>
                        <input id="HsrCode_T0DSCA" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" label-text="description:" input-size="xxlarge" no-description>
                        <input id="Description_R0DSCLA" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" input-size="xxlarge" no-description>
                        <input id="Description_R0DSCL1A" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" input-size="xxlarge" no-description>
                        <input id="Description_T0DA08A" runat="server" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');">Update</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
