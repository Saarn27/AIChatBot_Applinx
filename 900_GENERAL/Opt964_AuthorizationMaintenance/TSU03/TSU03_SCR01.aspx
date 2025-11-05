<%@ Page MasterPageFile="~/template.master" Inherits="TSU03_SCR01" CodeFile="TSU03_SCR01.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Authority Maintenance</h1>
            </div>
            <div class="related-fields-area" style="margin-bottom:10px">
                <gal-input-help label-text="Company:" label-size="medium" input-size="large">
                    <input id="company_CMPCOD" runat="server" />
                    <input id="companyDsc_CMPDES" runat="server" />
                </gal-input-help>
                <gal-input label-text="System:" label-size="medium" input-size="large" no-description>
                    <select id="system_SYSCOD" runat="server"></select>
                </gal-input>
            </div>
            <div class="related-fields-area">
                <gal-input-help label-text="User / Group:" label-size="medium" input-size="large">
                    <input id="user_USERGRP" runat="server" />
                    <input id="userDsc_USERDES" runat="server" />
                </gal-input-help>
                <gal-input-help label-text="Module:" label-size="medium" input-size="large">
                    <input id="module_MOD" runat="server" />
                    <input id="moduleDsc_MODDES" runat="server" />
                </gal-input-help>
                <gal-input-help label-text="Option code:" label-size="medium" input-size="large">
                    <input id="optionCode_OPTCOD" runat="server" />
                    <input id="optionCodeDsc_OPTDES" runat="server" />
                </gal-input-help>
                <gal-input-help label-text="Sub option code:" label-size="medium" input-size="large">
                    <input id="subOptionCode_SUBCOD" runat="server" />
                    <input id="subOptionCodeDsc_SUBDES" runat="server" />
                </gal-input-help>
            </div>

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG0" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[PF6]');">Add</button>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
