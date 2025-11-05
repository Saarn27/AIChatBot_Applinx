<%@ Page MasterPageFile="~/template.master" Inherits="TFQ03_B_SCR" CodeFile="TFQ03_B_SCR.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DEFAULT FIELDS PER OPTION - DISPLAY</h1>
            </div>
            <div class="sub-headline">
                <span>Defaults for:</span>
            </div>
            <div class="related-fields-area" style="margin-bottom:10px">
                <div class="centered-flex">
                    <gal-input label-text="System:" label-size="small" input-size="xsmall" no-description>
                        <input id="system_HSYSTEM" runat="server" />
                    </gal-input>
                    <gal-input label-text="Option:" label-size="auto" input-size="xsmall" no-description>
                        <input id="option_HOPTION" runat="server" />
                    </gal-input>
                    <gal-input label-text="Program:" label-size="auto" input-size="small" no-description>
                        <input id="program_HPROGRAM" runat="server" />
                    </gal-input>
                </div>
                <gal-input label-text="User/Group:" label-size="small" input-size="xlarge">
                    <input id="userOrGroup_HUSER" runat="server" />
                    <input id="userOrGroupDescription_HUSRNME" runat="server" />
                </gal-input>
            </div>
            <div class="related-fields-area">

                <gal-input label-text="Field changed:" label-size="small" input-size="medium" no-description>
                    <input id="feild_BFIELD" runat="server" />
                </gal-input>
                <gal-input label-text="Value before:" label-size="small" input-size="medium" no-description>
                    <input id="valueBefore_BBEFORE" runat="server" />
                </gal-input>
                <gal-input label-text="Value after:" label-size="small" input-size="medium" no-description>
                    <input id="valueAfter_BAFTER" runat="server" />
                </gal-input>
                <gal-input label-text="Date:" label-size="small" input-size="small" no-description>
                    <input id="transactionDate_BTTRN" runat="server" galtype="date" dateformat="dd/mm/y"/>
                </gal-input>
                <gal-input label-text="Time:" label-size="small" input-size="small" no-description>
                    <input id="transactionTime_BTIME" runat="server" />
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="HH:MM:SS"></span>
                </gal-input>
                <gal-input label-text="User:" label-size="small" input-size="large">
                    <input id="user_BUSER" runat="server" />
                    <input id="userName_BUSRNME" runat="server" />
                </gal-input>

                <gal-input label-text="Remark:" label-size="small" input-size="large" no-description>
                    <input id="remark_BREMARK" runat="server" />
                </gal-input>
            </div>

            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_BMSG" runat="server"></span>
            </div>
        </div>
    </div>

</asp:Content>
