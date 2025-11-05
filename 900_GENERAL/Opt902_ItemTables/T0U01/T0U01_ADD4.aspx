<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD4.aspx.cs" Inherits="T0U01_ADD4" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Line Group</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="medium2" label-text="Type - General:" input-size="small" no-description>
                        <input id="TypeGeneral_ATYP2" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="medium2" label-text="Line code:" input-size="small" no-description>
                            <input id="LineCode_ACOD2" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="auto" label-text="Global line:" input-size="large">
                            <input id="GlobalLine_GLOBL" runat="server" />
                            <input id="globalLineDesc_GLBDSC" runat="server" />
                        </gal-input-help>
                    </div>
                    <gal-input label-size="medium2" label-text="Descriptions:" input-size="large" no-description>
                        <input id="Description1_ASDS2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="Description2_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Local description:" input-size="large" no-description>
                        <input id="DescriptionLocal_ASDS3" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium2" label-text="Family Code:" input-size="xlarge">
                        <input id="FamilyCode_ACOD2" runat="server" />
                        <input id="FamilyCodeDesc_TEURFM" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium2" label-text="Show on screen:" input-size="xxsmall" no-description>
                        <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" ID="ShowOnScreen_SHOW" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Display seq.for CMS:" input-size="small" no-description>
                        <input id="DispSeqForCms_SEQ" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="System code:" input-size="small" no-description>
                        <select id="SystemCode_AIMC2" runat="server">
                            <option value=""></option>
                            <option value="I">I = System</option>
                        </select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="medium2" label-text="Class:" input-size="small" no-description>
                            <input id="Class_CLASS" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" label-text="Class1:" input-size="small" no-description>
                            <select id="Class_CLASS1" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="medium2" label-text="FCS group:" input-size="small" no-description>
                        <input id="FcsGroup_CS" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium2" label-text="User responsible:" input-size="xlarge">
                        <input id="UserResponsible_URESPO" runat="server" />
                        <input id="UserResponsibleDesc_URESPOD" runat="server" />
                    </gal-input-help>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA1" runat="server"></span>
                    <button type="button" id="F10btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
                </div>
            </div>
        </div>
        <span id="F10Text" runat="server" style="display: none"></span>
    </div>
    <script>
        var isF10Visible = document.getElementById("ctl00_GXPagePlaceHolder_F10Text").innerText.trim() == "";
        var F10btn = document.getElementById("F10btn");
        if (isF10Visible) {
            F10btn.style.display = "none";
        }
    </script>
</asp:Content>
