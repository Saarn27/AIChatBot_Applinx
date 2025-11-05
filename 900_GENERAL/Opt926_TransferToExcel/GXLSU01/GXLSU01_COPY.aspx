<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXLSU01_COPY.aspx.cs" Inherits="GXLSU01_COPY" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">IMPORT TO EXCEL MAINTENANCE</h1>
                <span class="sub-headline blue-headline">COPY</span>
            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">

                    <div class="spaced-column">
                        <gal-input label-text="Subject:" label-size="small2" input-size="small2" no-description>
                            <input id="CSUB" runat="server">
                        </gal-input>
                        <gal-input label-text="New subject:" label-size="small2" input-size="small2" no-description>
                            <input id="CNSUB" runat="server">
                        </gal-input>

                    </div>
                    <div class="spaced-column">
                        <gal-input label-text="Number:" label-size="small2" input-size="xxsmall" no-description>
                            <input id="CNUM" runat="server">
                        </gal-input>
                        <gal-input label-text="System code:" label-size="small2" input-size="xxsmall" no-description>
                            <input id="CIMC" runat="server">
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-text="Template name:" label-size="small2" input-size="medium" no-description>
                            <input id="CTMP" runat="server">
                        </gal-input>
                    </div>
                </div>
                <div class="column-form related-fields-area " style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input label-text="Sql Query:" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="SqlQuery" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_2" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_3" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_4" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_5" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_6" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_7" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_8" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_9" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_10" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_11" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_12" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_13" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="small2" input-size="xxxlarge" no-description>
                            <input id="CSQL_14" runat="server">
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="CMSG" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Save</button>
                </div>
            </div>
        </div>

    </div>
    </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
