<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="windowTemplate.aspx.cs" Inherits="windowTemplate" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server"><%--enter headline text or change the id for dynamic headline text--%></h1>
            </div>
            <%-- window content goes here --%>
        </div>

    </div>


</asp:Content>
