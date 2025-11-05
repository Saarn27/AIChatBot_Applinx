<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWT1_SFLP.aspx.cs" Inherits="OWT1_SFLP" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline" id="headLine_KOT" runat="server"></h1>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form" style="margin-bottom: 10px; width: 100%" id="card" runat="server">
                <div class="table-container">
                    <table id="SFLP_table" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <%--Table headers and selections--%>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="typeSearch_SEL1" runat="server" />
                                    </gal-input>
                                    <span>Type</span>
                                </th>

                                <th>
                                    <gal-input input-size="large2" no-description>
                                        <input id="descriptionSearch_SEL2" runat="server" />
                                    </gal-input>
                                    <span>Type description</span>
                                </th>
                                <th style="display: none;"></th>
                                <th><span>Current plus / Cash</span></th>
                                <th columntype="qty"><span>Net days</span></th>
                                <th columntype="qty"><span>Days for discount</span></th>
                                <th columntype="price"><span>Discount percentage</span></th>
                                <th columntype="qty"><span>Fix pay day</span></th>
                                <th columntype="qty"><span>Number of payments</span></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <%--Table column data--%>
                                <td><span id="typeCol_COD" runat="server"></span></td>
                                <td><span id="shortDesc" runat="server"></span></td>
                                <td style="display: none;"><span id="isHelp" runat="server"></span></td>
                                <td><span id="currentPulsCash_CUR" runat="server"></span></td>
                                <td columntype="qty"><span id="netDays_NETD" runat="server"></span></td>
                                <td columntype="qty"><span id="DaysForDiscount_DIS" runat="server"></span></td>
                                <td columntype="price"><span id="discountPercent_DAYS" runat="server"></span></td>
                                <td columntype="qty"><span id="fixPayDays_FIXD" runat="server"></span></td>
                                <td columntype="qty">
                                    <span id="numberOfPayments_NOPY" runat="server"></span>
                                    <action-bar mode="single" checktd="2" colors="text" values="extended payment" keytopress="pf2"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller more-columns></grid-scroller>
                </div>
                <input style="display: none;" id="pageIndex" runat="server" />
            </div>
        </div>
    </div>
    <script>
        var headline = document.getElementById("ctl00_GXPagePlaceHolder_headLine_KOT");
        headline.innerText = headline.innerText.replace("=", " = ").trim();

        const currentTableRows = document.querySelector("#ctl00_GXPagePlaceHolder_SFLP_table").children[0];
        for (let rowIndex = 1; rowIndex < currentTableRows.children.length; rowIndex++) {
            if (currentTableRows.children[rowIndex].children[2].children[0].innerText.length == 0) {
                let parent = currentTableRows.children[rowIndex].children[8];
                parent.removeChild(parent.children[1]);
            }
        }
    </script>
</asp:Content>

