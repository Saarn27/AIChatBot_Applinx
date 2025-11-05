<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GNU03_UPDATE.aspx.cs" Inherits="GNU03_UPDATE" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">REPLACE / ADD RECORDS</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="sub-headline" style="margin-top: 0px; margin-bottom: 10px;">
                <span style="text-transform: none;">Massive multy company update</span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="xlarge" label-size="xsmall" label-text="Option:" no-description>
                        <select id="option_SEL" runat="server">
                            <option value=""></option>
                            <option value="1">1 = Add only if no records</option>
                            <option value="2">2 = Add if no records, else update records</option>
                            <option value="3">3 = If record exsits, delete and then add</option>
                            <option value="4">4 = Delete records</option>
                        </select>
                    </gal-input>
                </div>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Confirm</button>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
