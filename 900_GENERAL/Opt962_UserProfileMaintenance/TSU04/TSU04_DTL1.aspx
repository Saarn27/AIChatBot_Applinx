<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU04_DTL1.aspx.cs" Inherits="TSU04_DTL1" %>

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
                        <gal-input-help label-size="xsmall2" input-size="large" label-text="User type:">
                            <input id="UserType_TYP" runat="server" />
                            <input id="U_TYPD" runat="server" />
                        </gal-input-help>
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
                    <div id="tab_S1" text="General" active="true"></div>
                    <div id="tab_S2" text="Attributes"></div>
                    <div id="tab_S3" text="E-mail/Path"></div>
                    <div id="tab_S4" text="Menu/Language"></div>
                    <div id="tab_S5" text="Connections"></div>
                </tabs-list>

                <div class="tab-content" style="width: fit-content;height:fit-content">
                    <div class="tab-pane active" id="1">
                        <div class="related-fields-area" style="margin-top: 10px">
                            <gal-input label-size="medium2" input-size="medium" label-text="Default company:">
                                <input id="DefaultCompany_CMPD" runat="server" />
                                <input id="Xz_CMPDDSC" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium2" input-size="medium" label-text="User class:" no-description>
                                <select id="UserClass_TYP1" runat="server"></select>
                            </gal-input>
                            <gal-input label-size="medium2" input-size="medium" label-text="Current user profile cmd:" no-description>
                                <gx:GXCheckBox ID="CrtusrprfCmd_CRTUSRPRF" runat="server" UncheckedValue="" CheckedValue="Y" />
                            </gal-input>
                            <gal-input-help label-size="medium2" input-size="medium" label-text="Customer:">
                                <input id="Customer_CUST" runat="server" />
                                <input id="CUSTD" runat="server" />
                            </gal-input-help>
                            <gal-input label-size="medium2" input-size="large" label-text="Warehouse:" no-description>
                                <select id="Warehouse_WHS" runat="server"></select>
                            </gal-input>
                            <gal-input-help label-size="medium2" input-size="large" label-text="Division:">
                                <input id="Division_DIV" runat="server" />
                                <input id="T3DSC_D" runat="server" />
                            </gal-input-help>
                            <gal-input label-size="medium2" input-size="large" label-text="Region:" no-description>
                                <select id="Region_RGN" runat="server"></select>
                            </gal-input>
                            <gal-input label-size="medium2" input-size="medium" label-text="Territory:" no-description>
                                <select id="Territory_TER" runat="server"></select>
                            </gal-input>
                            <gal-input-help label-size="medium2" input-size="xlarge" label-text="Employee:">
                                <input id="Employee_ENUM" runat="server" />
                                <input id="ENUMD" runat="server" />
                            </gal-input-help>
                            <gal-input label-size="medium2" input-size="xxlarge" label-text="Password:">
                                <input id="Password_TSUDA7" runat="server" />
                                <input id="TSUDA7D" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium2" label-text="System:" input-size="small" no-description>
                                <select id="System_IMC" runat="server">
                                    <option value=""></option>
                                    <option value="I">System</option>
                                </select>
                            </gal-input>
                            <gal-input label-size="medium2" input-size="xsmall" label-text="Local use:" no-description>
                                <input id="localUse_DA5" runat="server" />
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
</asp:Content>
