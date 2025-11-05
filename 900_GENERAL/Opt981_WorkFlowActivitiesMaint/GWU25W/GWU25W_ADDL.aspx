<%@ Page MasterPageFile="~/template.master" Inherits="GWU25W_ADDL" CodeFile="GWU25W_ADDL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">SUPPLIER INVOICE WORKFLOW</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="small" label-size="medium" label-text="Workflow number:" no-description>
                        <input id="workflowNumber_ADDNUM" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input input-size="xlarge" label-size="medium" label-text="Workflow type:">
                        <input id="workflowType_ADDWFT" runat="server" />
                        <input id="workflowTypeDescription_ADDWFTD" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line" id="firstLine" style="display: none"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input input-size="small" label-size="small2" label-text="Invoice:" no-description>
                            <input id="invoiceNumber_SPIINV" runat="server" />
                        </gal-input>
                        <gal-input input-size="xlarge" label-size="small" label-text="Amount:">
                            <input id="amount_SPIVTC" runat="server" />
                            <input id="currency_SPICUR" runat="server" />
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help input-size="small" label-size="small2" label-text="Purchase order:" no-description>
                            <input id="purchaseOrder_SPHORD" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="xlarge" label-size="small" label-text="Order buyer:">
                            <input id="orderBuyer_SPHBYC" runat="server" />
                            <input id="orderBuyerName_SPHBYCN" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input input-size="xxlarge" label-size="small2" label-text="Supplier:">
                        <input id="supplierNumber_SPIVND" runat="server" />
                        <input id="supplierName_SCNME" runat="server" />
                    </gal-input>

                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="xlarge" label-size="small2" label-text="Buyer:">
                        <input id="buyer_SCDSK" runat="server" />
                        <input id="buyerName_SCDSKN" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="small2" label-text="Owner:">
                        <input id="owner_SPIBYC" runat="server" />
                        <input id="ownerName_SPIBYCN" runat="server" />
                    </gal-input>
                    <gal-input input-size="xlarge" label-size="small2" label-text="Reason:" no-description>
                        <select id="reason_TYP" runat="server"></select>
                    </gal-input>
                    <gal-input-help input-size="xlarge" label-size="small2" label-text="Next user:">
                        <input id="nextUser_SNEXTUSR" runat="server" />
                        <input id="nextUserDescription_SNEXTUSRN" runat="server" />
                    </gal-input-help>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="xxlarge" label-size="small2" label-text="Remarks:" no-description>
                        <input id="remark1_RMK1L" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small2" no-description>
                        <input id="remark2_RMK2L" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small2" no-description>
                        <input id="remark3_RMK3L" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small2" no-description>
                        <input id="remark4_RMK4L" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxlarge" label-size="small2" no-description>
                        <input id="remark5_RMK5L" runat="server" />
                    </gal-input>
                </div>
            </div>
             <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMessage_MSG2" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Next User</button>
            </div>
           <%-- <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_MSG2" runat="server"></span>
            </div>--%>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />

        <script>
            var workflowType_ADDWFT = document.getElementById("ctl00_GXPagePlaceHolder_workflowType_ADDWFT");
            if (workflowType_ADDWFT.style.display == "block") {
                document.getElementById("firstLine").style.display = "block";
            }

        </script>
    </div>
</asp:Content>
