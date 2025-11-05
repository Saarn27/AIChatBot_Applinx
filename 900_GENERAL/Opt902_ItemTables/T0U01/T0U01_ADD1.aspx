<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01_ADD1.aspx.cs" Inherits="T0U01_ADD1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Discount Group</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="medium2" label-text="Type - General:" input-size="xxsmall" no-description>
                        <input id="TypeGeneral_ATYP2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Discount group:" input-size="xxsmall" no-description>
                        <input id="DiscountGroup_ACOD2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Descriptions:" input-size="large" no-description>
                        <input id="Description1_ASDS2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="Description2_ADSC2" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Local description:" input-size="large" no-description>
                        <input id="LocalDescription_ASDS3" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="" input-size="xxlarge" no-description>
                        <input id="LocalDescription_ADSC3" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium2" label-text="Product Group:" input-size="xlarge">
                        <input id="ProductGroup_PRODUC" runat="server" />
                        <input id="ProductGroupDesc_TEURGR" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="medium2" label-text="Product line:" input-size="xlarge">
                        <input id="ProductLine_LINEP" runat="server" />
                        <input id="ProductLineDesc_LINEPD" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium2" label-text="Application type:" input-size="xlarge" no-description>
                        <select id="ApplicationType_TOLINS2" runat="server" />
                        <%--<input id="ApplicationType_TOLINS2D" runat="server" />--%>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="System code:" input-size="xsmall" no-description>
                        <select id="SystemCode_AIMC2" runat="server">
                            <option value=""></option>
                            <option value="I">I = System</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Header group:" input-size="xsmall" no-description>
                        <select id="HeaderGroup_HEAD" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Class:" input-size="xsmall" no-description>
                        <input id="Class_fatg" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium2" label-text="Print Value:" input-size="xsmall" no-description>
                        <select id="PrintValue_PRTVAL" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input>
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
