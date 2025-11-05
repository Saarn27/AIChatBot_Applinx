<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GRU01_UPDATE.aspx.cs" Inherits="GRU01_UPDATE" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">REPLACE/ADD RECORDS </h1>
        <h1 class="headline" style="display: block; font-size: 20px; color: red">*** MASSIVE MULTY COMPANY UPDATE ***</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="centered-flex">
                <gal-input label-text="Option: " input-size="large" label-size="small" no-description>
                    <select id="Option_SEL" runat="server">
                        <option value="1">Add only if no records</option>
                        <option value="2">Update record description</option>
                        <option value="3">Delete records</option>
                          <option value="4">Log menu field only TSPLOG</option>
                    </select>
                </gal-input>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('enter');">Continue</button>
        </div>
    </div>
</asp:Content>

