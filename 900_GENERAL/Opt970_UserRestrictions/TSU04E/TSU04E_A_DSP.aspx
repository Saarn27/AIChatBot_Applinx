<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU04E_A_DSP.aspx.cs" Inherits="TSU04E_A_DSP" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">USER RESTRICTION</h1>
            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 100%">
                <div class="spaced-column">
                    <gal-input-help label-size="medium" label-text="User:" input-size="large">
                        <input id="User" runat="server" />
                        <input id="UserDesc" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium" label-text="Warehouse:" input-size="large" no-description>
                        <select id="warehouse" runat="server"></select>
                    </gal-input>
                </div>
            </div>
            <div id="cardToRemove" class="column-form related-fields-area" style="margin-bottom: 10px; width: 100%">
                <div class="spaced-column">
                    <gal-input id="GalInputToRemove" label-size="medium" label-text="Restriction:" input-size="large" no-description>
                        <%--<input id="Restriction" runat="server" />--%>
                        <select id="Restriction" runat="server">
                            <option value=""></option>
                            <option value="W">Web only</option>
                            <option value="U">Web user</option>
                        </select>
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <div>
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <br />
                    <span class="invalid-feedback" id="msg_MSG2" runat="server"></span>
                </div>
                <button class="btn btn-primary big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>



        function pageOnLoad(gx_event) {
            const RestrictionGalInput = document.querySelector("#ctl00_GXPagePlaceHolder_Restriction")
            if (RestrictionGalInput.hasAttribute("hidden")) {
                document.querySelector("#cardToRemove").remove();
            }
        }

    </script>
</asp:Content>
