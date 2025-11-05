<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_UPDATE" CodeFile="TWU01_UPDATE.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">REPLACE/ADD RECORDS: </h1>
        <h1 class="headline">Massive Multi Company Update</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG" style="overflow: inherit !important;">
        <div class="main-area-form main-area-form-modal">
            <gal-input input-size="large" label-size="xsmall" label-text="Option:" no-description>
                <select id="option_SEL" runat="server">
                    <option value="1">Add only if no records</option>
                    <option value="2">Update record description</option>
                    <option value="3">Delete records</option>
                </select>
            </gal-input>
        </div>
        <div class="modal-bottom">
            <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[Enter]');" data-bs-dismiss="modal">Continue</button>
        </div>
    </div>
</asp:Content>
