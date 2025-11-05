<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U04_A_SFL.aspx.cs" Inherits="T2U04_A_SFL" %>

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
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100">
                    <div class="spaced-column">
                        <gal-input label-text="Table:" label-size="auto" input-size="small" no-description>
                            <select id="ttype_S_TABLE" runat="server" onchange="gx_SubmitKey('[enter]');">
                                <option value=""></option>
                                <option value="S">Selling</option>
                                <option value="W">Working</option>
                                <option value="B">Budget</option>
                            </select>
                        </gal-input>
                    </div>
                </div>
                <gal-table-header text="Days factor %" start-column="11" end-column="13"></gal-table-header>
                <div class="table-container">
                    <table id="T2U04_A_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th sortby="tit1_H_SEQ" columntype="primaryNumber">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel1_S_SEQ" runat="server" />
                                    </gal-input>
                                    <span id="tit1_H_SEQ" runat="server"></span>
                                </th>
                                <th sortby="tit2_H_VEND" columntype="primaryNumber">
                                    <gal-input input-size="small" no-description>
                                        <input id="sel2_S_VEND" runat="server">
                                    </gal-input>
                                    <span id="tit2_H_VEND" runat="server"></span>
                                </th>
                                <th sortby="tit3_H_GRP">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel3_S_GRP" runat="server">
                                    </gal-input>
                                    <span id="tit3_H_GRP" runat="server"></span>
                                </th>
                                <th sortby="tit4_H_LINE" columntype="primaryNumber">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel4_S_LINE" runat="server">
                                    </gal-input>
                                    <span id="tit4_H_LINE" runat="server"></span>
                                </th>
                                <th sortby="tit5_H_WHS">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel5_S_WHS" runat="server">
                                    </gal-input>
                                    <span id="tit5_H_WHS" runat="server"></span>
                                </th>
                                <th sortby="tit6_H_MFG">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel6_S_MFG" runat="server">
                                    </gal-input>
                                    <span id="tit6_H_MFG" runat="server"></span>
                                </th>
                                <th sortby="tit7_H_SC">
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="sel7_S_SC" runat="server">
                                    </gal-input>
                                    <span id="tit7_H_SC" runat="server"></span>
                                </th>
                                <th sortby="tit8_H_FRQ">
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="sel8_S_FRQ" runat="server">
                                    </gal-input>
                                    <span id="tit8_H_FRQ" runat="server"></span>
                                </th>
                                <th sortby="tit9_H_WEEK" columntype="primaryNumber">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel9_S_WEEK" runat="server">
                                    </gal-input>
                                    <span id="tit9_H_WEEK" runat="server"></span>
                                </th>
                                <th sortby="tit10_H_SELL" columntype="price">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel10_S_SELL" runat="server">
                                    </gal-input>
                                    <span id="tit10_H_SELL" runat="server"></span>
                                </th>
                                <th sortby="tit11_H_WORK" columntype="qty">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel11_S_WORK" runat="server">
                                    </gal-input>
                                    <span id="tit11_H_WORK" runat="server"></span>
                                </th>
                                <th sortby="tit12_H_BUDGET" columntype="price">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sel12_S_BUDGET" runat="server">
                                    </gal-input>
                                    <span id="tit12_H_BUDGET" runat="server"></span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="opt_A_OPT" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="col1_A_SEQ" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="col2_A_VEND" runat="server"></span>
                                </td>
                                <td>
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
                                <td>
                                    <span id="col7_A_SC" runat="server"></span>
                                </td>
                                <td>
                                    <span id="col8_A_FRQ" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="col9_A_WEEK" runat="server"></span>
                                </td>
                                <td columntype="price">
                                    <span id="col10_A_SELL" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="col11_A_WORK" runat="server"></span>
                                </td>
                                <td columntype="price">
                                    <span id="col12_A_BUDGET" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>

                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg_A_MSG" runat="server"></span>
                        <button id="F6_addBtn" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
        <span id="F6_add" runat="server" style="display: none;"></span>
    </div>
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

        ChangeText("tit1_H_SEQ", "Seq", "Sequence")
        ChangeText("tit3_H_GRP", "Grp", "Group")
        ChangeText("tit5_H_WHS", "Whs", "Warehouse")
        ChangeText("tit6_H_MFG", "Mfg", "Manufacture group")
        ChangeText("tit7_H_SC", "S.c", "Stock code")
        ChangeText("tit8_H_FRQ", "Frq", "Frequency")



    </script>

</asp:Content>
