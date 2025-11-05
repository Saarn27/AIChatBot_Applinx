<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU03_UPDATE.aspx.cs" Inherits="TFU03_UPDATE" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Replace / Add Records</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form-modal main-area-form ">
            <span style="padding-bottom:3vh; color: #ff2149; font-weight: bold;">Massive Multy Company Update!</span>
            <gal-input label-size="xsmall" label-text="Option:" input-size="large" no-description>
                <select id="option_SEL" runat="server">
                    <option value="1">Add only if no records</option>
                    <option value="2">If record exists, delete and then add</option>
                    <option value="3">Delete records</option>
                    <option value="4">Transmit remarks</option>
                    <option value="5">Update description only</option>
                </select>
            </gal-input>
       
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Confirm</button>
        </div>
    </div>

</asp:Content>
