<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U01_SFL3.aspx.cs" Inherits="T2U01_SFL3" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
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
                <table id="T2U01_SFL3_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="col1_SEL1" runat="server" />
                                </gal-input>
                                <span id="col1_T1" runat="server"></span>
                            </th>
                            <th>
                                <span>Supplier description</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="col2_SEL2" runat="server">
                                </gal-input>
                                <span id="col2_T2" runat="server"></span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="col3_SEL3" runat="server">
                                </gal-input>
                                <span id="col3_T3" runat="server"></span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="col4_SEL4" runat="server">
                                </gal-input>
                                <span id="col4_T4" runat="server"></span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="col5_SEL5" runat="server">
                                </gal-input>
                                <span id="col5_T5" runat="server"></span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="col6_SEL6" runat="server">
                                </gal-input>
                                <span id="col6_T6" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="data1_K1" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                            <td>
                            </td>
                            <td>
                                <span id="data2_K2" runat="server"></span>
                            </td>
                            <td>
                                <span id="data3_K3" runat="server"></span>
                            </td>
                            <td>
                                <span id="data4_K4" runat="server"></span>
                            </td>
                            <td>
                                <span id="data5_K5" runat="server"></span>
                            </td>
                            <td>
                                <span id="data6_K6" runat="server"></span>
                            </td>

                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg" runat="server"></span>
                    <button type="button" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <input style="display: none;" id="f6_Indicator" runat="server" />
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        if (!document.querySelector("#ctl00_GXPagePlaceHolder_f6_Indicator").value.includes("F6"))
            document.querySelector("#btn").style.display = 'none';

        function ChangeText(id, beforeText, afterText) {
            const elementId = `ctl00_GXPagePlaceHolder_${id}`;
            const element = document.getElementById(elementId);
            if (element && element.innerText === beforeText) {
                element.innerText = afterText;
            }
        }

        ChangeText("col1_T1", "SUPPLIER", "Supplier")
        ChangeText("col1_T1", "FROM DATEYY", "From date YY")
        ChangeText("col2_T2", "EXPIRE D.YY", "Expire date YY")
        ChangeText("col4_T4", "ITEM", "Item")
        ChangeText("col5_T5", "%SURPURCH", "%Surpurch")
        ChangeText("col6_T6", "%SURMARKET", "%Surmarket")
    </script>
</asp:Content>
