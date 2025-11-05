<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TCU01_CNF.aspx.cs" Inherits="windowTemplate" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DELETE CONFIRMATION</h1>
            </div>

            <gal-input label-text="Are you sure?" label-size="xlarge" input-size="xsmall" no-description>
                <gx:GXCheckBox id="scrapStock_CNF" CheckedValue="Y" UncheckedValue="N" runat="server"></gx:GXCheckBox>
            </gal-input>

            <gal-input label-text="Are you sure?" label-size="xlarge" input-size="xsmall" no-description>
                <gx:GXCheckBox id="DLTUSRPRF" CheckedValue="Y" UncheckedValue="N" runat="server"></gx:GXCheckBox>
            </gal-input>
            

        </div>
        <input id="hiddenField" runat="server" style="display:none;" />
    </div>


</asp:Content>
