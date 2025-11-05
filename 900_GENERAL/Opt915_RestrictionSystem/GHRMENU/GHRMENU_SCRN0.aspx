<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRMENU_SCRN0.aspx.cs" Inherits="GHRMENU_SCRN0" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline">Restriction Menu</h1>
            </div>
            <gal-input label-text="Select Option:" label-size="medium" input-size="large" no-description>
                <select id="selectOption_OPT1" runat="server">
                    <option value=""></option>
                    <option value="01">Restrict Table Maintenance</option>
                    <option value="02">Zip code/State - Warehouse</option>
                    <option value="03">Order Warehouse Sorting</option>
                    <option value="04">Restriction Test Inquiry</option>
                    <option value="05">Transmit Global file</option>
                    <option value="06">Zip code - Salesman</option>
                </select>
            </gal-input>
            <span id="opt05" runat="server" style="display:none"></span>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errMsg_EARA" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
    <script>
        if (document.getElementById("ctl00_GXPagePlaceHolder_opt05").innerText == "") {
            var select = document.getElementById("ctl00_GXPagePlaceHolder_selectOption_OPT1");
            select.remove(5);
        }
         
    </script>
</asp:Content>
