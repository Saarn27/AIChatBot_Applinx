<%@ Page MasterPageFile="~/template.master" Inherits="TSU01_UPDATE" CodeFile="TSU01_UPDATE.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">Replace/Add Records</h1>
        <span style="display:block; font-size:18px; font-weight:bold; color:red" id="title" runat="server"></span>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="auto" input-size="large" label-text="Option:" no-description>
                        <select id="option_SEL" runat="server">
                            <option value="1">Add Only If No Records</option>
                            <option value="2">Update The Description</option>
                            <option value="3">Delete Records</option>
                        </select>
                    </gal-input>
                </div>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
    </div>
</asp:Content>
