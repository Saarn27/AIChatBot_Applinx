<%@ Page MasterPageFile="~/template.master" Inherits="formTemplate" CodeFile="formTemplate.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server"></h1>
                <span id="transactionSequenceNumber_TSEQ" class="sub-headline" runat="server">
                    <%--enter sub headline text or change the id for dynamic headline text or delete it if the screen doesn't have sub headline--%>
                </span>
            </div>
            <%-- if the screen has a lot of inputs/inputs than we will put it inside a columned form
                 each div with class spaced column is a column in the form, inside we put all the inputs/inputs
                 that are related to the column.
                 if you have 2 columns than delete the third div--%>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="" label-size="" label-text="">
                        <%-- input-container can contain inputs and inputs and for each of them you need to set
                             a label, you can see the examples in here.--%>
                        <%--<input class="input-medium" id="programName_TPGM" runat="server" />--%>--%>
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input input-size="" label-size="" label-text="">
                        <%--<input class="input-medium" id="itemNumber_TCAT" runat="server" />
                        <input class="input-large" id="itemDescription_TCATD" runat="server" />--%>
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input input-size="" label-size="" label-text="">
                        <%--<input class="input-medium" id="itemNumber_TCAT" runat="server" />--%>
                    </gal-input>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
