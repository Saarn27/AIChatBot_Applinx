<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U03_C_SFL.aspx.cs" Inherits="T2U03_C_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
            </div>
            <gal-table-header text="Shift weeks" start-column="9" end-column="11"></gal-table-header>
            <gal-table-header text="Shipping policy" start-column="12" end-column="13"></gal-table-header>
            <div class="table-container">
                <table id="T2U03_C_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th columntype="primaryNumber">
                                <span id="tit1_H_SEQ" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit2_H_VEND" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit3_H_GRP" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit4_H_LINE" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit5_H_WHS" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit6_H_MFG" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit7_H_SC" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit8_H_FRQ" runat="server"></span>
                            </th>
                            <th columntype="qty">
                                <span id="tit9_H_FORCST" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit10_H_BLANKS" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit11_H_MINB" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit12_H_MIN" runat="server"></span>
                            </th>
                            <th columntype="primaryNumber">
                                <span id="tit13_H_MAX" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td columntype="primaryNumber">
                                <span id="col1_A_SEQ" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="col2_A_VEND" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="col3_A_GRP" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="col4_A_LINE" runat="server"></span>
                            </td>
                            <td>
                                <span id="col5_A_WHS" runat="server"></span>
                            </td>
                            <td>
                                <span id="col6_A_MFG" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="col7_A_SC" runat="server"></span>
                            </td>
                            <td>
                                <span id="col8_A_FRQ" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="col9_A_FORCST" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="col10_A_BLANKS" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="col11_A_MINB" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="col12_A_MIN" runat="server"></span>

                            </td>
                            <td columntype="primaryNumber">
                                <span id="col13_A_MAX" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_C_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
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
        ChangeText("tit2_H_VEND", "Vnd/Fac", "Vendor / Factory")
        ChangeText("tit3_H_GRP", "Grp", "Group")
        ChangeText("tit5_H_WHS", "Whs", "Harehouse")
        ChangeText("tit6_H_MFG", "Mfg", "Manufacture group")
        ChangeText("tit7_H_SC", "S.c", "Stock code")
        ChangeText("tit8_H_FRQ", "Frq", "Frequency")
        ChangeText("tit9_H_FORCST", "Saf.Stk", "Safe stock")
        ChangeText("tit11_H_MINB", "Min.B", "Min balance")

    </script>
</asp:Content>
