<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU04_DTL4.aspx.cs" Inherits="TSU04_DTL4" %>

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
                    <div id="tab_S3" text="E-mail/Path"></div>
                    <div id="tab_S4" text="Menu/Language" active="true"></div>
                    <div id="tab_S5" text="Connections"></div>
                </tabs-list>

                <div class="tab-content" style="width: fit-content">
                    <div class="tab-pane active" id="4">
                        <div class="wrapper-container">
                            <div class="related-fields-area" style="margin-top: 10px">
                                <gal-input label-size="medium" label-text="Restrictions:" input-size="medium" no-description>
                                    <select id="Restrictions_DA2" runat="server">
                                        <option value=""></option>
                                        <option value="Y">Disable</option>
                                        <option value="U">Web user</option>
                                        <option value="W">Web only</option>
                                    </select>
                                </gal-input>
                                <gal-input label-size="medium" label-text="Menu option log:" input-size="medium" no-description>
                                    <gx:GXCheckBox ID="MenuOptionLog_DA3" runat="server" UncheckedValue="N" CheckedValue="" />
                                </gal-input>
                                <gal-input label-size="medium" input-size="medium" label-text="GWEB language:" no-description>
                                    <select id="GwebLanguage_DA4" runat="server"></select>
                                </gal-input>
                                <div class="centered-flex">
                                    <gal-input label-size="medium" input-size="medium" label-text="Limit query PF:" no-description>
                                        <input id="LimitQueryPf_DN7" runat="server" />
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Number of records"></span>
                                </div>
                                <div class="line"></div>
                                <div class="centered-flex">
                                    <gal-input label-size="medium" input-size="large" label-text="Follow-up option:" no-description>
                                        <select id="FollowUpOption_DA1" runat="server"></select>
                                    </gal-input>
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Allow VPN"></span>
                                </div>
                                <div class="line"></div>
                                <gal-input label-size="medium" input-size="medium" label-text="Main IP address:" no-description>
                                    <input id="MainIpAddress_DA8" runat="server" />
                                </gal-input>
                                <gal-input label-size="medium" input-size="large" label-text="Active directory:" no-description>
                                    <input id="ActiveDirectory_DA8AD" runat="server" />
                                </gal-input>
                                <gal-input label-size="medium" input-size="small2" label-text="Time difference:" no-description>
                                    <input id="TimeDifference_S_TSUDN8" runat="server" />
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
