<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRTEST_SCREN2.aspx.cs" Inherits="GHRTEST_SCREN2" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Test Restriction Inquiry</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[enter]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input-help input-size="large" label-size="small" label-text="Customer:">
                        <input id="customer_CST" runat="server" />
                        <input id="customerDescription_CSTDES" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="large" label-size="small" label-text="Item Number:">
                        <input id="item_CAT" runat="server" />
                        <input id="itemDescription_CATDES" runat="server" />
                    </gal-input-help>
                    <gal-input input-size="large" label-size="small" label-text="Location:">
                        <input id="location_WHS" runat="server" />
                        <input id="locationDescription_WHSD" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="small" label-text="State Code:">
                        <input id="state_STATE" runat="server" />
                        <input id="stateDescription_STATED" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="small" label-text="Zip Code:" no-description>
                        <input id="zipCode_ZIP" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="small" label-text="Answer:" no-description>
                        <input id="answer_ANSW" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small" label-text="Message:" no-description>
                        <input id="msg_REM1" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small" label-text="        " no-description>
                        <input id="msg_REM2" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small" label-text="        " no-description>
                        <input id="msg_REM3" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small" label-text="        " no-description>
                        <input id="msg_REM4" runat="server" />
                    </gal-input>
                </div>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Return</button>
        </div>
    </div>
</asp:Content>
