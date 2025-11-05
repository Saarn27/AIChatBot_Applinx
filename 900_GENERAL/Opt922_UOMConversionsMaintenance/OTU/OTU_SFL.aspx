<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OTU_SFL.aspx.cs" Inherits="OTU_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">UNIT OF MEASURE</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-size="small" label-text="Source:" input-size="large">
                        <input id="sourceCode_SRC" runat="server" />
                        <input id="sourceCodeDsc_SRCD" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="small" label-text="Destination:" input-size="large">
                        <input id="destinationCode_DST" runat="server" />
                        <input id="destinationCodeDsc_DSTD" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="small" label-text="Item:" input-size="xlarge">
                        <input id="itemNumber_ITEM" runat="server" />
                        <input id="itemNumberDsc_ITEMDSC" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-size="small" label-text="Vendor:" input-size="xlarge">
                        <input id="vendorNumber_IVND" runat="server" />
                        <input id="vendorNumberDsc_IVNDSC" runat="server" />
                    </gal-input-help>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="xsmall" label-text="Value:" input-size="Xlarge" no-description>
                        <input id="Value1_SVAL" runat="server" />
                    </gal-input>
                    <gal-input label-size="xsmall" input-size="Xlarge" no-description>
                        <input id="Value2_DVAL" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class=" related-fields-area">

                <gal-input label-size="small" label-text="Factor:" input-size="large" no-description>
                    <input id="FactorValue_FCT" runat="server" />
                </gal-input>
                <div class="centered-flex">
                    <gal-input label-size="small" label-text="Item:" input-size="medium" no-description>
                        <input id="Itemdsc_ITM" runat="server" />
                    </gal-input>
                    <gal-input label-size="xsmall" label-text="Vendor:" input-size="small" no-description>
                        <input id="vendorDsc_VND" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="message_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('enter');">Continue</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
