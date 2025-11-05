<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRU04_ADD.aspx.cs" Inherits="GHRU04_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">RESTRICTION MESSAGE</h1>
                <span id="msg_HODAAA" class="sub-headline no-color blue-headline" runat="server"></span>
            </div>
            <div class="spaced-column">
                <gal-input label-size="auto" label-text="Issue number:" input-size="small" no-description>
                    <input id="issueNumber_ASEQ" runat="server" />
                </gal-input>
                <span class="blue-headline" style="font-weight: 600">Internal Remark</span>
                <div class="related-fields-area" style="margin-bottom:10px">
                    <gal-input input-size="xxxlarge" no-description>
                        <input id="internLine1_AREMI" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxxlarge" no-description>
                        <input id="internLine2_AREMI1" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxxlarge" no-description>
                        <input id="internLine3_AREMI2" runat="server" />
                    </gal-input>
                </div>
                <span class="blue-headline" style="font-weight: 600">External Remark</span>
                <div class="related-fields-area">
                    <gal-input input-size="xxxlarge" no-description>
                        <input id="externLine1_AREME" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxxlarge" no-description>
                        <input id="externLine2_AREME2" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>

    </div>

</asp:Content>
