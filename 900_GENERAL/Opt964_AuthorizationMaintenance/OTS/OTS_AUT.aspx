<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OTS_AUT.aspx.cs" Inherits="OTS_AUT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline">GAL SYSTEM AUTHORIZATION</h1>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">

            <div class="column-form">
                <div class="spaced-column">
                    <span id="text1_TXT" runat="server" style="font-weight: bold; color: #3c7ab7"></span>
                    <br>
                    <span id="text2_MSG" runat="server" style="font-weight: bold; color: #3c7ab7"></span>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="xlarge" label-text="Company:">
                        <input id="company_CMP" runat="server" />
                        <input id="companyDescription_CMPDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xlarge" label-text="System:">
                        <input id="system_SYS" runat="server" />
                        <input id="systemDescription_SYSDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xlarge" label-text="Module:">
                        <input id="module_MOD" runat="server" />
                        <input id="moduleDescription_MODDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xlarge" label-text="Option/Sub Option:">
                        <input id="optionSubOption_OPT" runat="server" />
                        <input id="optionSubOptionDescription_OPTDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" input-size="xlarge" label-text="Program Name:">
                        <input id="programName_PGM" runat="server" />
                        <input id="programDescription_DSCL" runat="server" />
                    </gal-input>
                </div>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
    </div>
</asp:Content>
