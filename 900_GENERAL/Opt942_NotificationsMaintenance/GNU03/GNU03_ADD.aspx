<%@ Page MasterPageFile="~/template.master" Inherits="GNU03_ADD" CodeFile="GNU03_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">NOTIFICATION NUMBER:</h1>
                <span id="notificationNumber_AGNNNO" class="sub-headline" runat="server" style="color: #3c7ab7"></span>
                <span id="mode_MODE" class="sub-headline" runat="server" style="color: #3c7ab7"></span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="large" label-text="Entity:" no-description>
                        <select id="entity_AGNTYPE" runat="server"></select>
                    </gal-input>
                    <gal-input label-size="medium" input-size="medium" label-text="Reference/Program:" no-description>
                        <input id="referenceProgram_AGNREF" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="xsmall" input-size="small" label-text="Status:" no-description>
                        <select id="status_AGNID" runat="server">
                            <option value="O">Open</option>
                            <option value="C">Close</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="xsmall" input-size="small" label-text="Active:" no-description>
                        <gx:GXCheckBox ID="active_AGNCOD1" CheckedValue="Y" UncheckedValue="" runat="server" />
                    </gal-input>

                </div>
            </div>
            <div class="Line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="xxlarge" label-size="small" label-text="Notifications:" no-description>
                        <input id="notificationTXT1_AGNTXT1" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small" no-description>
                        <input id="notificationTXT2_AGNTXT2" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small" no-description>
                        <input id="notificationTXT3_AGNTXT3" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small" no-description>
                        <input id="notificationTXT4_AGNTXT4" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="Line"></div>
            <div class="sub-headline">
                <span>Users</span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input-help input-size="xlarge">
                        <input id="toUser1_ATOUSR1" runat="server" />
                        <input id="toUser1Description_ATSUNME1" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="xlarge">
                        <input id="toUser2_ATOUSR2" runat="server" />
                        <input id="toUser2Description_ATSUNME2" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="xlarge">
                        <input id="toUser3_ATOUSR3" runat="server" />
                        <input id="toUser3Description_ATSUNME3" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="xlarge">
                        <input id="toUser4_ATOUSR4" runat="server" />
                        <input id="toUser4Description_ATSUNME4" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="xlarge">
                        <input id="toUser5_ATOUSR5" runat="server" />
                        <input id="toUser5Description_ATSUNME5" runat="server" />
                    </gal-input-help>
                </div>
                <div class="spaced-column">
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser6_ATOUSR6" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser7_ATOUSR7" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser8_ATOUSR8" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser9_ATOUSR9" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser10_ATOUSR10" runat="server" />
                    </gal-input-help>
                </div>
                <div class="spaced-column">
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser11_ATOUSR11" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser12_ATOUSR12" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser13_ATOUSR13" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser14_ATOUSR14" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser15_ATOUSR15" runat="server" />
                    </gal-input-help>
                </div>
                <div class="spaced-column">
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser16_ATOUSR16" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser17_ATOUSR17" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser18_ATOUSR18" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser19_ATOUSR19" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser20_ATOUSR20" runat="server" />
                    </gal-input-help>
                </div>
                <div class="spaced-column">
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser21_ATOUSR21" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser22_ATOUSR22" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser23_ATOUSR23" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser24_ATOUSR24" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="medium" no-description>
                        <input id="toUser25_ATOUSR25" runat="server" />
                    </gal-input-help>
                </div>
            </div>
            <div class="Line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" input-size="small" label-text="Delivery By:" no-description>
                        <select id="deliverBy_AGNTASK" runat="server">
                            <option value=" "></option>
                            <option value="A">All</option>
                            <option value="E">Email</option>
                            <option value="T">Task</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="small" input-size="small" label-text="Reply:" no-description>
                        <gx:GXCheckBox ID="reply_AGNRPY" CheckedValue="Y" UncheckedValue="" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input-help label-size="small" input-size="large" label-text="Entity Type:">
                        <input id="entityType_AETYP" runat="server" />
                        <input id="entityDescription_AETYPD" runat="server" />
                    </gal-input-help>
                    <gal-input input-size="small" label-size="small" label-text="Entity Value:" no-description>
                        <input id="entityValue_AEVAL" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <div class="spaced-column">
                        <gal-input label-size="xxsmall" input-size="large" label-text="Roll:" no-description>
                            <select id="roll_AROLL" runat="server"></select>
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMessage_AMSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
</asp:Content>
