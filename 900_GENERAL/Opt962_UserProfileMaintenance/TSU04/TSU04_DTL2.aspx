<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU04_DTL2.aspx.cs" Inherits="TSU04_DTL2" %>

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
                    <div id="tab_S2" text="Attributes" active="true"></div>
                    <div id="tab_S3" text="E-mail/Path"></div>
                    <div id="tab_S4" text="Menu/Language"></div>
                    <div id="tab_S5" text="Connections"></div>
                </tabs-list>

                <div class="tab-content" style="width: fit-content">
                    <div class="tab-pane active" id="2">
                        <div class="wrapper-container">
                            <div class="related-fields-area" style="margin-top: 10px">
                                <div class="centered-flex">
                                    <gal-input label-size="medium2" input-size="medium" label-text="Initial program:" no-description>
                                        <input id="InitialPgm_IPGM" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Initial program to call, *NONE"></span>
                                </div>
                                <div class="centered-flex">
                                    <gal-input label-size="medium2" input-size="medium" label-text="Initial library:" no-description>
                                        <input id="InitialLib_IPGML" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Library name, *LIBL"></span>
                                </div>
                                <div class="line"></div>
                                <div class="centered-flex">
                                    <gal-input label-size="medium2" input-size="medium" label-text="Attributes program name:" no-description>
                                        <input id="AttnProgram_ATN" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Program name"></span>
                                </div>
                                <div class="centered-flex">
                                    <gal-input label-size="medium2" input-size="medium" label-text="Attributes program library:" no-description>
                                        <input id="AttnLibrary_PLIB" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Library name, *LIBL"></span>
                                </div>
                                <div class="line"></div>
                                <div class="centered-flex">
                                    <gal-input label-size="medium2" input-size="medium" label-text="Output queue:" no-description>
                                        <input id="OutputQueue_OUTQ" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Name"></span>
                                </div>
                                <div class="centered-flex">
                                    <gal-input label-size="medium2" input-size="medium" label-text="Output library:" no-description>
                                        <input id="OutputLib_OUTL" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Library name, *LIBL"></span>
                                </div>
                                <div class="centered-flex">
                                    <gal-input label-size="medium2" input-size="medium" label-text="Source drawer:" no-description>
                                        <input id="SourceDrawer_INS1" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="1-9"></span>
                                </div>
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
