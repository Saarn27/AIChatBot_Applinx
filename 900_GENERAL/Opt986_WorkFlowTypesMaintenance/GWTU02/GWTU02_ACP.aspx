<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU02_ACP.aspx.cs" Inherits="GWTU02_ACP" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">MAINTENANCE WORKFLOW TYPES </h1>
                <span class="sub-headline blue-headline"> CHANGE WORKFLOW TYPE</span>
                <div class="main-area-form main-area-form-modal">
                    <div class="column-form related-fields-area" style="margin-bottom: 10px">
                        <div class="spaced-column">
                            <p>The <input id="CHNG" runat="server" /></p>
                            <p>There is private WF/Templates for the type: <input id="TYP_N" runat="server" /> </p>
                            <p>Do you want to change automatically in private WF/Template?</p>
                            <gal-input label-text="Y\N:" label-size="medium" input-size="xxsmall">
                            <input id="YN" runat="server" />
                             </gal-input>
                            <div class="message-container">
                                <span class="invalid-feedback" id="MSGA" runat="server"></span>
                            </div>
                            <input id="hiddenField" runat="server" style="display: none;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
      
    </script>
</asp:Content>