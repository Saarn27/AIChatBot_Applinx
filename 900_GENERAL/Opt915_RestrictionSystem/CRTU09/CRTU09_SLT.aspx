<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="CRTU09_SLT.aspx.cs" Inherits="CRTU09_SLT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">UPDATE SALESMAN FROM ZIP CODE </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <gal-input label-text="From month:" label-size="small" input-size="medium">
                <input id="FromMonth_A_RTTMON" runat="server">
                <input id="A_RTTMOND" runat="server">
            </gal-input>
            <gal-input label-text="From Year:" label-size="small" input-size="medium">
                <input id="FromYear_A_RTTYEAR" runat="server">
                <input id="A_RTTYEARD" runat="server">
            </gal-input>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button class="btn btn-primary big-button btn-galweb" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>

    </div>

</asp:Content>
