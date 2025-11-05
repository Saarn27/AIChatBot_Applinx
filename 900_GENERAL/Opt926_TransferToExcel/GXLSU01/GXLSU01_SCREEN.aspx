<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXLSU01_SCREEN.aspx.cs" Inherits="GXLSU01_SCREEN" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">IMPORT TO EXCEL MAINTENANCE </h1>
                <span class="sub-headline blue-headline" id="display_subtitle" runat="server"></span>
                <span class="sub-headline blue-headline" id="mode_subtitle" runat="server"></span>
            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">

                        <gal-input label-text="Subject:" label-size="small2" input-size="small2" no-description>
                            <input id="Subject_ISUB" runat="server">
                        </gal-input>
                        <gal-input label-text="Template name:" label-size="small2" input-size="medium" no-description>
                            <input id="TemplateName_ITMP" runat="server">
                        </gal-input>


                    </div>
                    <div class="spaced-column">
                        <gal-input label-text="Number:" label-size="small2" input-size="xxsmall" no-description>
                            <input id="Number_INUM" runat="server">
                        </gal-input>
                        <gal-input label-text="System code:" label-size="small2" input-size="medium" no-description>
                            <input id="SystemCode_IIMC" runat="server">
                        </gal-input>

                    </div>


                </div>

                <div class="column-form related-fields-area  " style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input label-text="Sql Query:" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL2" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL3" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL4" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL5" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL6" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL7" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL8" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL9" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL10" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL11" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL12" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL13" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery_ISQL14" runat="server">
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_IMSG" runat="server"></span>
                    <button id="btn_edit" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Save</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        var display = document.querySelector("#ctl00_GXPagePlaceHolder_display_subtitle");
        var btn = document.getElementById("btn_edit");

        if (display.innerText.trim().includes("DISPLAY")) {
            btn.setAttribute("hidden", "");
        }

    </script>
</asp:Content>
