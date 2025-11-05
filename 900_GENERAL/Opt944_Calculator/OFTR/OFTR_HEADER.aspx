<%@ Page MasterPageFile="~/template.master" Inherits="OFTR_HEADER" CodeFile="OFTR_HEADER.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">CURRENCY CALCULATOR</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area" style="width: fit-content;">

                    <div class="spaced-column">

                        <div class="centered-flex">

                            <gal-input-help label-text="From Currency:" label-size="medium2" input-size="large">
                                <input id="fromCurrency_FROMCURR" runat="server" />
                                <input id="fromName_FROMNAME" runat="server" />
                            </gal-input-help>


                            <gal-input label-text="Amount:" label-size="medium" input-size="large" no-description>
                                <input id="amountIn_INAMOUNT" runat="server" />
                            </gal-input>


                        </div>

                        <div class="centered-flex">

                            <gal-input-help label-text="To Currency:" label-size="medium2" input-size="large">
                                <input id="toCurrency_TOCURR" runat="server" />
                                <input id="toName_TONAME" runat="server" />
                            </gal-input-help>


                            <gal-input label-text="Amount:" label-size="medium" input-size="large" no-description>
                                <input id="amountOut_OUTAMOUNT" runat="server" />
                            </gal-input>


                        </div>

                        <div class="centered-flex">
                            <gal-input label-text="Date:" label-size="medium2" input-size="large" no-description>
                                <input id="date_EXDATE" galtype="date" dateformat="ddmmy" runat="server" />
                            </gal-input>

                            <gal-input label-text="Exchange Rate:" label-size="medium" input-size="large" no-description>
                                <input id="exchangeRate_EXCH" runat="server" />
                            </gal-input>


                        </div>

                    </div>

                </div>

                 <div class="message-container message-container-with-btn ">
                    <span class="invalid-feedback" id="msg_MESSAGE" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
                </div>
            </div>
        </div>

  
    </div>

</asp:Content>
