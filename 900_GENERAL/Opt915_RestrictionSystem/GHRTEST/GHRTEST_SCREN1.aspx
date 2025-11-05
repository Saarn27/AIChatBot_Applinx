<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRTEST_SCREN1.aspx.cs" Inherits="GHRTEST_SCREN1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Test Restriction Inquiry</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input-help input-size="xlarge" label-size="large" label-text="Customer:">
                        <input id="customer_CST" runat="server" />
                        <input id="customerDescription_CSTDES" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="xlarge" label-size="large" label-text="Item Number:">
                        <input id="itemNumber_CAT" runat="server" />
                        <input id="itemDescription_CATDES" runat="server" />
                    </gal-input-help>
                    <gal-input input-size="xlarge" label-size="large" label-text="Warehouse:" no-description>
                        <select id="warehouse_WHS" runat="server"></select>
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="large" label-text="State Code:" no-description>
                        <select id="stateCode_STATE" runat="server"></select>
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="large" label-text="Zip Code:" no-description>
                        <input id="zipCode_ZIP" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="large" label-text="Shipping Method:" no-description>
                        <select id="shipMethod_SPC" runat="server"></select>
                    </gal-input>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_MSG" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
    </div>
</asp:Content>
