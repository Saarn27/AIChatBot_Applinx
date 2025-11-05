<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TUU02_ADD.aspx.cs" Inherits="TUU02_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Title_TITLE" runat="server"></h1>
        <span id="SubHeadlineTarget" class="sub-headline blue-headline"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">

        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Base Unit of measure:" label-size="medium" input-size="large">
                        <input id="BaseUom_BUOM" runat="server">
                        <input id="BaseUomdes_BUOMS" runat="server">
                    </gal-input>
                    <gal-input label-text="Unit of measure code:" label-size="medium" input-size="xsmall" no-description>
                        <input id="UomCode_AUOM" runat="server">
                    </gal-input>
                    <gal-input label-text="Short description:" label-size="medium" input-size="medium" no-description>
                        <input id="Description_AUOMS" runat="server">
                    </gal-input>
                    <gal-input label-text="Long description:" label-size="medium" input-size="xlarge" no-description>
                        <input id="LongDescription_AUOML" runat="server">
                    </gal-input>
                    <gal-input label-text="Type:" label-size="medium" input-size="small2" no-description>
                        <select id="Type_ATYP" runat="server">
                        </select>
                    </gal-input>
                    <gal-input label-text="Base Unit of measure:" label-size="medium" input-size="medium" no-description>
                        <gx:GXCheckBox ID="BaseUom_ABAS" CheckedValue="Y" UncheckedValue="" runat="server" />
                    </gal-input>
                    <gal-input label-text="Factor:" label-size="medium" input-size="medium" no-description>
                        <input id="Factor_AFACT" runat="server">
                    </gal-input>
                    <gal-input label-text="Exact:" label-size="medium" input-size="xsmall" no-description>
                        <select id="Exact_AEXC" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                    <gal-input label-text="System code:" label-size="medium" input-size="medium" no-description>
                        <gx:GXCheckBox ID="SystemCode_AIMC" CheckedValue="I" UncheckedValue="" runat="server" />
                    </gal-input>
                    <gal-input label-text="Decimal:" label-size="medium" input-size="xsmall" no-description>
                        <select id="Decimal_DEC" runat="server">
                            <option value="">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                    <gal-input label-text="Last updated by:" label-size="medium" input-size="small2" no-description>
                        <input id="LastUpdatedBy_AUPDUSR" runat="server">
                    </gal-input>
                    <gal-input label-text="Last updated date:" label-size="medium" input-size="small" no-description>
                        <input id="LastUpdatedBy_AUPDDAT" runat="server" galtype="date" dateformat="ddmmy">
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA1" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

        const title = document.querySelector("#ctl00_GXPagePlaceHolder_Title_TITLE")
        const subheadlineText = title.innerText.split("-")[1].trim()

        function capitalizeFirstOnly(text) {
            return text.charAt(0).toUpperCase() + text.slice(1).toLowerCase();
        }

        document.querySelector("#SubHeadlineTarget").innerText = capitalizeFirstOnly(subheadlineText);
        title.innerText = title.innerText.split("-")[0].trim();

</script>
</asp:Content>
