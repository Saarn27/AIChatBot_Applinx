<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_UPDATE.aspx.cs" Inherits="T0U01_UPDATE" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">REPLACE / ADD RECORDS</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <h5 class="alert alert-danger">* * * Massive Multy Company Update * * *</h5>
            <div class="related-fields-area">
                <gal-input label-size="auto" label-text="Option:" input-size="large" no-description>
                    <select id="Option_SEL" runat="server">
                        <option value="1">Add only if no records</option>
                        <option value="2">Update record description</option>
                        <option value="3">Delete records</option>
                    </select>
                </gal-input>
            </div>
            <div style="display: flex; justify-content: flex-end; margin-top: 10px">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
</asp:Content>
