<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TRU05_ADD.aspx.cs" Inherits="TRU05_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">BANK MESSAGE </h1>
                <span class="blue-headline sub-headline" id="remarkAddNumber_NOTEH" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="blue-headline sub-headline" id="remarkAddType_ADDHED" runat="server"></span>
            </div>
            <div class="column-form">
                <div class="spaced-column">

                    <div class="column-form related-fields-area wrapper-container">
                        <div class="spaced-column">
                            <label>Bank Message Text:</label><br />
                            <br />
                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM1" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM2" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM3" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM4" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM5" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM6" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM7" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM8" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM9" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM10" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM11" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM12" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM13" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM14" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM15" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM16" runat="server">
                            </gal-input>

                            <gal-input input-size="xxxlarge" no-description>
                                <input id="inputTextRemark_COM17" runat="server">
                            </gal-input>
                        </div>

                        <div class="spaced-column">
                            <label>Code:</label><br />
                            <br />
                            <gal-input input-size="small" no-description>
                                <input id="remarkCode_ATRNDA04" runat="server">
                            </gal-input>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn" style="margin-top:auto">
                    <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add To Bank List</button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
