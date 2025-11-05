<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU04_SLT.aspx.cs" Inherits="windowTemplate" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">ENTITY SELECTION</h1>
            </div>
            <gal-input-help label-size="medium" label-text="Entity:" input-size="xlarge">
                <input id="Entity_COD" runat="server" />
                <input id="DSCL" runat="server" />
            </gal-input-help>

            <gal-input-help label-size="medium"  input-size="medium" dynamic-label no-description>
                <input id="DSC" runat="server" />
                <input id="KEYD" runat="server" />
            </gal-input-help>

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>

        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>


</asp:Content>
