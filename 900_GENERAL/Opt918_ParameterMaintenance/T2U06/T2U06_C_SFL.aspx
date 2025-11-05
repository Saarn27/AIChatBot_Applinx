<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U06_C_SFL.aspx.cs" Inherits="T2U06_C_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
        </action-bar>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <gal-input input-size="medium" no-description>
                    <h1 class="headline" id="title_TITLE" runat="server"></h1>
                </gal-input>
            </div>

            <div class="table-container">

                <table id="T2U06_C_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">

                            <th>
                                <span id="tit_H_SEQ" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit2_H_WHS" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit3_H_VEND" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit4_H_CLASS" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit5_H_GRP" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit6_H_LINE" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit7_H_BRAND" runat="server"></span>
                            </th>
                            <th>
                                <span id="ThSC_H_SC" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit8_H_ITEM" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit9_H_FWHS" runat="server"></span>
                            </th>
                            <th>
                                <span id="tit10_H_VEND2" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
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
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg" runat="server"></span>
                    <button id="f10Btn" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>

                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_A_MSG" runat="server"></span>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        function ChangeText(id, beforeText, afterText) {
            const elementId = `ctl00_GXPagePlaceHolder_${id}`;
            const element = document.getElementById(elementId);
            if (element && element.innerText === beforeText) {
                element.innerText = afterText;
            }
        }

        ChangeText("tit_H_SEQ", "Seq", "Sequence")
        ChangeText("tit2_H_WHS", "Whs", "Warehouse")
        ChangeText("tit5_H_GRP", "Grp", "Group")
        ChangeText("ThSC_H_SC", "S.C", "Stock code")
        ChangeText("tit8_H_ITEM", "Item no", "Item number")
        ChangeText("tit9_H_FWHS", "Fa.WHS", "Factory warehouse")
        ChangeText("tit10_H_VEND2", "Vendor.WHS", "Vendor warehouse")
    </script>
</asp:Content>
