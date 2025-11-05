<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWU21U_ACP.aspx.cs" Inherits="GWU21U_ACP" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">CHANGE TEMPLATE</h1>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal">
            <gal-input label-size="xlarge" label-text="There is private work flow for the user :" input-size="">
            </gal-input>
            <sapn>There are some private WF open for the user :</sapn>
            <br />
            <gal-input label-size="xlarge" input-size="">
                <input id="oldUserOpenedWf_OLDUSRD" runat="server" class="no-color" />
            </gal-input>
            <div class="line"></div>
            <sapn>Do you want to change automatically all private WF to new user :</sapn>
            <br />
            <gal-input label-size="" input-size="large" no-description>
                <input id="newUserOpenedWf_NEWUSRD" runat="server" class="no-color" />
            </gal-input>

            <input id="newUserOpenedWfYN_YN" runat="server" style="display: none;" />
        </div>
        <div class="modal-bottom">
            <button type="button" id="cancel-btn" class="btn btn-light btn-white big-button" onclick="document.getElementById('ctl00_GXPagePlaceHolder_newUserOpenedWfYN_YN').value='N';gx_SubmitKey('[pf12]');">No</button>
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="document.getElementById('ctl00_GXPagePlaceHolder_newUserOpenedWfYN_YN').value='Y';gx_SubmitKey('[pf10]');">Yes</button>
        </div>
    </div>
</asp:Content>
