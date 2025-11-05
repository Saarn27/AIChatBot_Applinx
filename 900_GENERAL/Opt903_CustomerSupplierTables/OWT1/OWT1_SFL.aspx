<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWT1_SFL.aspx.cs" Inherits="OWT1_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline" id="headLine_KOT" runat="server"></h1>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form related-fields-area" style="margin-bottom: 10px; width: 100%" id="card" runat="server">
                <div class="table-container">
                    <table id="SFL_table" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <%--Table headers and selections--%>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="typeSearch_SEL1" runat="server" />
                                    </gal-input>
                                    <span>Type</span>
                                </th>

                                <th>
                                    <gal-input input-size="xlarge" no-description>
                                        <input id="descriptionSearch_SEL2" runat="server" />
                                    </gal-input>
                                    <span>Type description</span>
                                </th>

                                <th columntype="price"><span id="column3headline_BYSBJ_H" runat="server"></span></th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <%--Table column data--%>
                                <td><span id="typeCol_COD" runat="server"></span></td>
                                <td><span id="descriptionCol_DSC" runat="server"></span></td>
                                <td columntype="price"><span id="dynamicCol_BYSBJ" runat="server"></span></td>
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
        //change the dynamic column (number 3 in table)
        var thText = document.getElementById("ctl00_GXPagePlaceHolder_column3headline_BYSBJ_H");
        var table = document.getElementById("ctl00_GXPagePlaceHolder_SFL_table");
        var rows = table.rows;
        //console.log(table.rows)
        if (thText) {
            switch (thText.innerText.trim()) {
                case "Vat %":
                    thText.innerText = "Vat Percentage";
                    break;
                case "Tax %":
                    thText.innerText = "Tax Percentage";
                    break;
                case "Days":
                    thText.innerText = "Days";
                    break;
                case "":
                    //console.log(tableLength);
                    thText.style.display = 'none';
                    for (var i = 0; i < rows.length; i++) {
                        //var cells = rows[i].cells;
                        rows[i].deleteCell(2);
                    }
                default:
                    break;
            }
        }
        var headline = document.getElementById("ctl00_GXPagePlaceHolder_headLine_KOT");
        headline.innerText = headline.innerText.replace("=", " = ");
    </script>

    <script>
        //change the dynamic page headline
        var thText = document.getElementById("ctl00_GXPagePlaceHolder_headLine_KOT");
        thText.innerText = thText.innerText.trim();
    </script>
</asp:Content>

