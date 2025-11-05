<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU04_DTL3.aspx.cs" Inherits="TSU04_DTL3" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">USER DATA MAINTENANCE </h1>
                <h1 class="headline">|</h1>
                <span class="sub-headline blue-headline" id="titleStatus" runat="server"></span>
            </div>

            <div class="column-form related-fields-area" style="width: fit-content">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-size="xsmall2" input-size="medium" label-text="User type:">
                            <input id="UserType_TYP" runat="server" />
                            <input id="U_TYPD" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" input-size="medium" label-text="User:" no-description>
                            <input id="User_USR" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" input-size="large" label-text="User name:" no-description>
                            <input id="UserName_NME" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>
            <div>
                <tabs-list>
                    <div id="tab_S1" text="General"></div>
                    <div id="tab_S2" text="Attributes"></div>
                    <div id="tab_S3" text="E-mail/Path" active="true"></div>
                    <div id="tab_S4" text="Menu/Language"></div>
                    <div id="tab_S5" text="Connections"></div>
                </tabs-list>

                <div class="tab-content" style="width: fit-content">
                    <div class="tab-pane active" id="3">
                        <div class="wrapper-container">
                            <div class="related-fields-area" style="margin-top: 10px">
                                <gal-input label-size="small2" input-size="xxlarge" label-text="E-mail:" no-description>
                                    <input id="EMail_MAIL" runat="server" />
                                </gal-input>
                                <gal-input label-size="small2" input-size="xxlarge" label-text="Path/Reference:" no-description>
                                    <input id="PathReference_PATH" runat="server" />
                                </gal-input>
                            </div>
                        </div>
                        <div class="message-container message-container-with-btn">
                            <span class="invalid-feedback" id="MSG" runat="server"></span>
                            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
