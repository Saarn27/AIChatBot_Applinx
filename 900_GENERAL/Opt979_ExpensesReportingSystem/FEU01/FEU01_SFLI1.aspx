<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FEU01_SFLI1.aspx.cs" Inherits="FEU01_SFLI1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="Approveactionbar" runat="server" />
            <input id="Deniedactionbar" runat="server" />
            <input id="PartialAppactionbar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
            </div>
            <div class="table-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-text="From date:" label-size="auto" input-size="small2" no-description>
                                <input id="FromDate_FDATE" runat="server" galtype="date" dateformat="ddmmy">
                            </gal-input>
                            <gal-input label-text="To:" label-size="xxsmall" input-size="small2" no-description>
                                <input id="ToDate_TDATE" runat="server" galtype="date" dateformat="ddmmy">
                            </gal-input>
                        </div>
                    </div>
                </div>

                <table id="FEU01_SFLI1_1" runat="server" class="table gal6-table-striped  ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>Line</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <select id="inputAbovetype_HTYP" runat="server"></select>
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="inputAbovedes_HLDSC" runat="server" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                            <th columntype="date">
                                <span>Date</span>
                            </th>
                            <th columntype="qty">
                                <span>Amount</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="inputAboveS_HLSTS" runat="server" />
                                </gal-input>
                                <span>Status</span>
                            </th>
                            <th columntype="qty">
                                <span>Amount approved</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="option_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="Line_LINE" runat="server"></span>
                            </td>
                            <td>
                                <span id="Type_TYPD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_LDSC" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="Date_LDATE" galtype="date" dateformat="ddmmy" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="Amount_VTS" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_LSTS" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="amountApproved_VTSA" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button id="F6" runat="server" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf6]');">New</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <div class="legend-div">
        <legend-block text="Note" color="blue"></legend-block>
        <legend-block text="Approve" color="green"></legend-block>
        <legend-block text="Denied" color="red"></legend-block>
        <legend-block text="Partial app" color="purple"></legend-block>
    </div>
    <script>
    </script>
</asp:Content>
