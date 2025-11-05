<%@ Page MasterPageFile="~/template.master" Inherits="T3EU01_A_SFL" CodeFile="T3EU01_A_SFL.aspx.cs" Language="C#" %>

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
                <h1 class="headline" id="mainTitle">NAICS |</h1>
                <h1 class="headline blue-headline">N</h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="T3EU01_A_SFL_1" runat="server" class="table gal6-table-striped w-100">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="SEL1_src" runat="server" />
                                    </gal-input>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>
                                        <input id="SEL2_src" runat="server" />
                                    </gal-input>
                                    <span>%Short description</span>
                                </th>
                                <th>
                                    <gal-input input-size="xlarge" no-description>
                                        <input id="SEL3_src" runat="server" />
                                    </gal-input>
                                    <span>%Long description</span>
                                </th>
                                <th>
                                    <span>System</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="IndSrc_IND_SRC" runat="server" />
                                    </gal-input>
                                    <span>Industry</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="OPT_opt" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td>
                                    <span id="Code_COD" runat="server"></span>
                                </td>
                                <td>
                                    <span id="ShortDesc_SDS" runat="server"></span>
                                </td>
                                <td>
                                    <span id="LongDescription_DSC" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Sys_SLFLD1" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Industry_IND_COL" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />

                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="A_MSG_msg" style="margin-right: 20px" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        //var sec_title = document.getElementById("ctl00_GXPagePlaceHolder_GeographicTableMaintenance_TYP").innerText;
        //if (sec_title != "") {
        //    document.getElementById("mainTitle").innerText += " | ";
        //}
    </script>
</asp:Content>
