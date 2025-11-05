<%@ Page MasterPageFile="~/template.master" Inherits="GHRU05_CADD" CodeFile="GHRU05_CADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline"> ZIP CODE SALESMAN </h1>
                <span class="blue-headline sub-headline">Delete Confirmation</span>
            </div>
            <div class="table-container">
                <table id="GHRU05_CADD_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Zip Code</span>
                            </th>
                            <th>
                                <span>Salesman</span>
                            </th>
                            <th>
                                <span>Salesman Name</span>
                            </th>
                            <th>
                                <span>Partner</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="ZipCode_A_GHRZIP" runat="server"></span>
                            </td>
                            <td>
                                <span id="Salesman_A_GHRGRV" runat="server"></span>
                            </td>
                            <td>
                                <span id="SalesmanName_AD_SLSMAN" runat="server"></span>
                            </td>
                            <td>
                                <span id="Partner_A_GHRES4" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="A_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
