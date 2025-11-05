<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U05_A_SFL.aspx.cs" Inherits="T2U05_A_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">STOCK CODE RECOMMENDATION</h1>

            </div>
            <div class="table-container">
                <table id="T2U05_A_SFL_1" runat="server" class="table gal6-table-striped less-padding-table ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th sortby="th1_H_SEQ" columntype="primaryNumber">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="inputaboveTh1_S_SEQ" runat="server" />
                                </gal-input>
                                <span id="th1_H_SEQ" runat="server"></span>
                            </th>
                            <th sortby="th2_H_WHS">
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="inputaboveTh2_S_WHS" runat="server" />
                                </gal-input-help>
                                <span id="th2_H_WHS" runat="server"></span>
                            </th>
                            <th sortby="th3_H_FWHS">
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="inputaboveTh3_S_FWHS" runat="server" />
                                </gal-input>
                                <span id="th3_H_FWHS" runat="server"></span>
                            </th>
                            <th sortby="th4_H_FRQ">
                                <gal-input input-size="xxsmall" no-description>
                                    <select id="inputaboveTh4_S_FRQ" runat="server"></select>
                                </gal-input>
                                <span id="th4_H_FRQ" runat="server"></span>
                            </th>
                            <th sortby="th5_H_OCCUR" columntype="primaryNumber">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="inputaboveTh5_S_OCCUR" runat="server" />
                                </gal-input>
                                <span id="th5_H_OCCUR" runat="server"></span>
                            </th>
                            <th sortby="th6_H_GRP" columntype="primaryNumber">
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="inputaboveTh6_S_GRP" runat="server" />
                                </gal-input-help>
                                <span id="th6_H_GRP" runat="server"></span>
                            </th>
                            <th sortby="th7_H_LINE" columntype="primaryNumber">
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="inputaboveTh7_S_LINE" runat="server" />
                                </gal-input-help>
                                <span id="th7_H_LINE" runat="server"></span>
                            </th>
                            <th sortby="th8_H_MFG">
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="inputaboveTh8_S_MFG" runat="server" />
                                </gal-input-help>
                                <span id="th8_H_MFG" runat="server"></span>
                            </th>
                            <th sortby="th9_H_BRAND">
                                <gal-input-help input-size="small" no-description>
                                    <input id="inputaboveTh9_S_BRAND" runat="server" />
                                </gal-input-help>
                                <span id="th9_H_BRAND" runat="server"></span>
                            </th>
                            <th sortby="th10_H_VEND" columntype="primaryNumber">
                                <gal-input-help input-size="small" no-description>
                                    <input id="inputaboveTh10_S_VEND" runat="server" />
                                </gal-input-help>
                                <span id="th10_H_VEND" runat="server"></span>
                            </th>
                            <th sortby="th11_H_SC" columntype="primaryNumber">
                                <gal-input input-size="xxsmall" no-description>
                                    <select id="inputaboveTh11_S_SC" runat="server"></select>
                                </gal-input>
                                <span id="th11_H_SC" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="Opt_A_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Seq_A_SEQ" runat="server"></span>
                            </td>
                            <td>
                                <span id="Whs_A_WHS" runat="server"></span>
                            </td>
                            <td>
                                <span id="FaWh_A_FWHS" runat="server"></span>
                            </td>
                            <td>
                                <span id="Frq_A_FRQ" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Occur_A_OCCUR" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Grp_A_GRP" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Line_A_LINE" runat="server"></span>
                            </td>
                            <td>
                                <span id="Mfg_A_MFG" runat="server"></span>
                            </td>
                            <td>
                                <span id="Brand_A_BRAND" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Vendor_A_VEND" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="SC_A_SC" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_A_MSG" runat="server"></span>
                    <button id="F6_addBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F6_add" runat="server" style="display: none;"></span>
    <script>
        var F6_add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F6_add").innerText.trim() == "";
        var F6_add_Btn = document.getElementById("F6_addBtn");
        if (F6_add_isHidden) {
            F6_add_Btn.style.display = "none"
        }

        function ChangeText(id, beforeText, afterText) {
            const elementId = `ctl00_GXPagePlaceHolder_${id}`;
            const element = document.getElementById(elementId);
            if (element && element.innerText === beforeText) {
                element.innerText = afterText;
            }
        }
        //console.log(document.querySelector("#ctl00_GXPagePlaceHolder_th11_H_SC"))

        ChangeText("th1_H_SEQ", "Seq", "Sequence")
        ChangeText("th2_H_WHS", "Whs", "Warehouse")
        ChangeText("th3_H_FWHS", "Fa.WH", "Factory warehouse")
        ChangeText("th4_H_FRQ", "Frq", "Frequency")
        ChangeText("th5_H_OCCUR", "Occur", "Occurrence")
        ChangeText("th6_H_GRP", "Grp", "Group")
        //ChangeText("th7_H_LINE")
        ChangeText("th8_H_MFG", "Mfg", "Manufacture group")
        //ChangeText("th9_H_BRAND")
        //ChangeText("th10_H_VEND")
        ChangeText("th11_H_SC", "S.c", "Stock code")



</script>
</asp:Content>
