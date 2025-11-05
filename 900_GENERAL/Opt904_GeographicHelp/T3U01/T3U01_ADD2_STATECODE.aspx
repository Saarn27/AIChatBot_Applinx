<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T3U01_ADD2_STATECODE.aspx.cs" Inherits="T3U01_ADD2_STATECODE" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">naojcnao</h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input input-size="xxsmall" label-size="medium" label-text="Type - General:" no-description>
                        <input id="TypeGeneral_ATYP2" runat="server" />
                    </gal-input>
                    <gal-input input-size="xsmall" label-size="medium" label-text="Subject code:" no-description>
                        <input id="SubjectCode_ACOD2" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Descriptions:" no-description>
                        <input id="Descriptions_ASDS2" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge2" label-size="medium" no-description>
                        <input id="des2_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="medium" label-text="Local descriptions:" no-description>
                        <input id="LocalDescription_LASDS2" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge2" label-size="medium" no-description>
                        <input id="locDes2_LADSC2" runat="server" />
                    </gal-input>
                    <gal-input input-size="small" label-size="medium" label-text="System code:" no-description>
                        <select id="SystemCode_IMC" runat="server">
                            <option value=""></option>
                            <option value="I">System</option>
                        </select>
                    </gal-input>
                    <gal-input-help label-text="Country:" label-size="medium" input-size="large">
                        <input id="Country_COUN" runat="server">
                        <input id="Countrydes_COUN" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Tax reporting:" label-size="medium" input-size="xsmall" no-description>
                        <select id="TaxReporting_TR" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                    <gal-input label-text="Freight:" label-size="medium" input-size="xsmall" no-description>
                        <select id="fre_FRET" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                    <gal-input-help label-text="Tax account:" label-size="medium" input-size="small2" no-description>
                        <input id="TaxAccount_TA" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Last updated user:" label-size="medium" input-size="small2" no-description>
                        <input id="LastUpdatedUser_UPDUSR" runat="server">
                    </gal-input>
                    <gal-input label-text="Update date:" label-size="medium" input-size="small2" no-description>
                        <input id="UpdateDate_UPDDATE" runat="server" galtype="date" dateformat="dd/mm/y">
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA2" runat="server"></span>
                <button id="Bt" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/add</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        if (document.querySelector("#ctl00_GXPagePlaceHolder_Descriptions_ASDS2").hasAttribute("readonly")) {
            document.querySelector("#Bt").style.display = "none"
        }

    </script>
</asp:Content>
