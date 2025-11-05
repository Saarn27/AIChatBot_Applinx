<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U01_SFL4.aspx.cs" Inherits="T2U01_SFL4" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <gal-input input-size="medium" no-description>
                    <h1 class="headline" id="title_TITLE" runat="server"></h1>
                    <span style="width: 10px;"></span>
                    <h1 class="headline">| </h1>
                    <span style="width: 10px;"></span>
                    <h1 class="headline blue-headline">MAINTENANCE</h1>
                </gal-input>
            </div>
            <div class="table-container">
                <table id="T2U01_SFL4_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="small2" no-description>
                                    <input id="col1_SEL1" runat="server" />
                                </gal-input>
                                <span id="col1_T1" runat="server"></span>
                            </th>
                            <th>
                                <span>Supplier description</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="Opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Supplier_K1" runat="server"></span>
                            </td>
                            <td>
                            </td>
                            <td>
                                <span id="Description_DESCL" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button id="f6_IndicatorBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="f6_Indicator" runat="server" style="display: none;"></span>
    <script>
        var f6_Indicator_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_f6_Indicator").innerText.trim() == "";
        var f6_Indicator_Btn = document.getElementById("f6_IndicatorBtn");
        if (f6_Indicator_isHidden) {
            f6_Indicator_Btn.style.display = "none"
        }

        if (document.querySelector("#ctl00_GXPagePlaceHolder_col1_T1").innerText === "SUPPLIER") {
            document.querySelector("#ctl00_GXPagePlaceHolder_col1_T1").innerText = "Supplier";
        }

</script>
</asp:Content>
