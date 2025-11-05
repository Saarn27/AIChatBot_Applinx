<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U05_C_SFL.aspx.cs" Inherits="T2U05_C_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">DELETE CONFIRMATION</h1>

            </div>
            <div class="table-container">
                <table id="T2U05_C_SFL_1" runat="server" class="table gal6-table-striped no-selection-table less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th sortby="th1_H_SEQ" columntype="primaryNumber">
                                <span id="th1_H_SEQ" runat="server"></span>
                            </th>
                            <th sortby="th2_H_WHS">
                                <span id="th2_H_WHS" runat="server"></span>
                            </th>
                            <th sortby="th3_H_FWHS">
                                <span id="th3_H_FWHS" runat="server"></span>
                            </th>
                            <th sortby="th4_H_FRQ">
                                <span id="th4_H_FRQ" runat="server"></span>
                            </th>
                            <th sortby="th5_H_OCCUR" columntype="primaryNumber">
                                <span id="th5_H_OCCUR" runat="server"></span>
                            </th>
                            <th sortby="th6_H_GRP">
                                <span id="th6_H_GRP" runat="server"></span>
                            </th>
                            <th sortby="th7_H_LINE">
                                <span id="th7_H_LINE" runat="server"></span>
                            </th>
                            <th sortby="th8_H_MFG">
                                <span id="th8_H_MFG" runat="server"></span>
                            </th>
                            <th sortby="th9_H_BRAND">
                                <span id="th9_H_BRAND" runat="server"></span>
                            </th>
                            <th sortby="th10_H_VEND" columntype="primaryNumber">
                                <span id="th10_H_VEND" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber" sortby="th11_H_SC">
                                <span id="th11_H_SC" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
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
                            <td>
                                <span id="Grp_A_GRP" runat="server"></span>
                            </td>
                            <td>
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
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_C_MSG" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
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
