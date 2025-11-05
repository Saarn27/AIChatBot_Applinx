<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="tabTemplate.aspx.cs" Inherits="tabTemplate" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server"><%--enter headline text or change the id for dynamic headline text--%></h1>
            </div>

            <div>
                <tabs-list>
                    <%--<div id="MainTab" text="Main" active="true"></div>--%>
                    <%-- each div is dedicated for one tab 
                         id is set to the same name mapped in the designer
                         text is the text that will be set in the html
                         active is set for the current tab--%>
                </tabs-list>

                <div class="tab-content">
                    <div class="tab-pane active" id="1">
                        <%-- set the tab content in here
                             the id of the upper div is the position of tab--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
</asp:Content>
