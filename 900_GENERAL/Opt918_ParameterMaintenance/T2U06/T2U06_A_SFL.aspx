<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U06_A_SFL.aspx.cs" Inherits="T2U06_A_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
        </action-bar>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
            </div>

            <div class="table-container">
                <table id="T2U06_A_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">

                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th sortby="tit1_H_SEQ">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="sel1_S_SEQ" runat="server" />
                                </gal-input>
                                <span id="tit1_H_SEQ" runat="server"></span>
                            </th>
                            <th sortby="tit2_H_WHS">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="sel2_S_WHS" runat="server">
                                </gal-input>
                                <span id="tit2_H_WHS" runat="server"></span>
                            </th>
                            <th sortby="tit3_H_VEND">
                                <gal-input input-size="small" no-description>
                                    <input id="sel3_S_VEND" runat="server">
                                </gal-input>
                                <span id="tit3_H_VEND" runat="server"></span>
                            </th>
                            <th sortby="tit4_H_CLASS">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="sel4_S_CLASS" runat="server">
                                </gal-input>
                                <span id="tit4_H_CLASS" runat="server"></span>
                            </th>
                            <th sortby="tit5_H_GRP">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="sel5_S_GRP" runat="server">
                                </gal-input>
                                <span id="tit5_H_GRP" runat="server"></span>
                            </th>
                            <th sortby="tit6_H_LINE">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="sel6_S_LINE" runat="server">
                                </gal-input>
                                <span id="tit6_H_LINE" runat="server"></span>
                            </th>
                            <th sortby="tit7_H_BRAND">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="sel7_S_BRAND" runat="server">
                                </gal-input>
                                <span id="tit7_H_BRAND" runat="server"></span>
                            </th>
                            <th sortby="ThSC_H_SC">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="inputaboveSC_S_SC" runat="server">
                                </gal-input>
                                <span id="ThSC_H_SC" runat="server"></span>
                            </th>
                            <th sortby="tit8_H_ITEM">
                                <gal-input input-size="small" no-description>
                                    <input id="sel8_S_ITEM" runat="server">
                                </gal-input>
                                <span id="tit8_H_ITEM" runat="server"></span>
                            </th>
                            <th sortby="tit9_H_FWHS">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="sel9_S_FWHS" runat="server">
                                </gal-input>
                                <span id="tit9_H_FWHS" runat="server"></span>
                            </th>
                            <th sortby="tit10_H_VEND2">
                                <gal-input input-size="small" no-description>
                                    <input id="sel10_S_VEND2" runat="server">
                                </gal-input>
                                <span id="tit10_H_VEND2" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="col1_A_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="col2_A_SEQ" runat="server"></span>
                            </td>
                            <td>
                                <span id="col3_A_WHS" runat="server"></span>
                            </td>
                            <td>
                                <span id="col4_A_VEND" runat="server"></span>
                            </td>
                            <td>
                                <span id="col5_A_CLASS" runat="server"></span>
                            </td>
                            <td>
                                <span id="col6_A_GRP" runat="server"></span>
                            </td>
                            <td>
                                <span id="col7_A_LINE" runat="server"></span>
                            </td>
                            <td>
                                <span id="col8_A_BRAND" runat="server"></span>
                            </td>
                            <td>
                                <span id="SC_A_SC" runat="server"></span>
                            </td>
                            <td>
                                <span id="col9_A_ITEM" runat="server"></span>
                            </td>
                            <td>
                                <span id="col10_A_FWHS" runat="server"></span>
                            </td>
                            <td>
                                <span id="col11_A_VEND2" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>

                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_A_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <div class="legend-div" style="margin-left: 5px;">
        <legend-block text="Exclude" color="red"></legend-block>
    </div>
    <script>
        function ChangeText(id, beforeText, afterText) {
            const elementId = `ctl00_GXPagePlaceHolder_${id}`;
            const element = document.getElementById(elementId);
            if (element && element.innerText === beforeText) {
                element.innerText = afterText;
            }
        }

        ChangeText("tit1_H_SEQ", "Seq", "Sequence")
        ChangeText("tit2_H_WHS", "Whs", "Warehouse")
        ChangeText("tit5_H_GRP", "Grp", "Group")
        ChangeText("ThSC_H_SC", "S.C", "Stock code")
        ChangeText("tit8_H_ITEM", "Item no", "Item number")
        ChangeText("tit9_H_FWHS", "Fa.WHS", "Factory warehouse")
        ChangeText("tit10_H_VEND2", "Vendor.WHS", "Vendor warehouse")


    </script>

</asp:Content>
