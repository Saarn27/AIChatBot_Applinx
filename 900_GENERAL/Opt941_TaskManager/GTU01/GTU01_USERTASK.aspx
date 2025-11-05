<%@ Page MasterPageFile="~/template.master" Inherits="GTU01_USERTASK" CodeFile="GTU01_USERTASK.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">USER TASK</h1>
            </div>
            <gal-input label-size="medium" label-text="Name for my task : " input-size="medium" no-description>
                <input id="nameForMyTask_USERNAME" runat="server" />
            </gal-input>
        </div>
    </div>
</asp:Content>
