<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GRU01_ADD.aspx.cs" Inherits="GRU01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">REASON CODE TABLE </h1>
        <h1 class="headline blue-headline" id="title_UPADD" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <gal-input label-text="Reason code:" input-size="medium" label-size="small2" no-description>
                <input id="ReasonCode_ARSN" runat="server">
            </gal-input>
            <gal-input label-text="Short description:" input-size="large" label-size="small2" no-description>
                <input id="ShortDescription_ADSC" runat="server">
            </gal-input>
            <gal-input label-text="Long description:" input-size="xlarge" label-size="small2" no-description>
                <input id="LongDescription_ADSCL" runat="server">
            </gal-input>
            <gal-input label-text="Exception:" input-size="medium" label-size="small2" no-description>
                <gx:GXCheckBox ID="Exception_EXCE" runat="server" CheckedValue="Y" UncheckedValue="" />
            </gal-input>
            <hr />
            <gal-input-help label-text="Workflow number:" input-size="xlarge" label-size="medium">
                <input id="WorkflowNumber_AWF" runat="server">
                <input id="workDes_WFDSC" runat="server">
            </gal-input-help>
            <gal-input-help label-text="Warehouse:" input-size="xlarge" label-size="medium">
                <input id="Warehouse_WHSS" runat="server">
                <input id="whs_WHSSD" runat="server">
            </gal-input-help>
            <gal-input label-text="Color code:" input-size="medium" label-size="medium" no-description>
                <select id="ColorCode_COLOR" runat="server"></select>
            </gal-input>

            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>

