<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD2E.aspx.cs" Inherits="T0U01_ADD2E" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Family Group</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="medium2" label-text="Type - General:" input-size="xxsmall" no-description>
                        <input id="TypeGeneral_ATYP2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Family code:" input-size="xxsmall" no-description>
                        <input id="FamilyCode_ACOD2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Short description:" input-size="large" no-description>
                        <input id="Description1_ASDS2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Long description" input-size="xxlarge" no-description>
                        <input id="Description2_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Local description:" input-size="large" no-description>
                        <input id="DescriptionLocal_ASDS3" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Show on screen:" input-size="xxsmall" no-description>
                        <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" ID="ShowOnScreen_SHOW" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="System code:" input-size="xsmall" no-description>
                        <select id="SystemCode_AIMC2" runat="server">
                            <option value=""></option>
                            <option value="I">I = System</option>
                        </select>
                    </gal-input>
                    <span id="F10" runat="server" style="display: none"></span>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA1" runat="server"></span>
                    <button id="F10btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"></button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var f10Text = document.getElementById("ctl00_GXPagePlaceHolder_F10").innerText.trim();
        var f10btn = document.getElementById("F10btn");
        if (f10Text) {
            f10btn.style.display = "block";
            f10btn.innerText = "Update / Add";
        }
        else {
            f10btn.style.display = "none";
        }

    </script>
</asp:Content>
