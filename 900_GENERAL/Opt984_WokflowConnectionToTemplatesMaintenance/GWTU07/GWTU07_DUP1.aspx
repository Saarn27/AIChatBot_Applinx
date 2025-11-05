<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU07_DUP1.aspx.cs" Inherits="GWTU07_DUP1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">WORKFLOW PROFESSIONALS LIST</h1>
        <span class="sub-headline blue-headline no-color">Duplicate</span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
        <div id="gx_screenArea">
            <div class="main-area-form main-area-form-modal" id="mainContent">
                <div class="column-form related-fields-area">
                    <div class="spaced-column">
                        <gal-input label-size="xxsmall" input-size="xlarge" no-description>
                            <input id="line1_DUPLIN1" runat="server">
                        </gal-input>
                        <gal-input style="text-align: left" label-size="xxsmall" input-size="xlarge" no-description>
                            <input id="line2_DUPLIN2" runat="server">
                        </gal-input>
                        <gal-input label-size="xxsmall" input-size="xlarge" no-description>
                            <input id="line3_DUPLIN3" runat="server">
                        </gal-input>
                    </div>
                </div>
            </div>
            <div style="margin-left: 410px">
                <button type="button" id="F10Button_F10" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>
</asp:Content>
