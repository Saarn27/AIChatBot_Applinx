<%@ Page MasterPageFile="~/template.master" Inherits="T3U01_SFL" CodeFile="T3U01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="mainTitle">GEOGRAPHIC - TABLE MAINTENANCE </h1>
                <h1 class="headline blue-headline" id="GeographicTableMaintenance_TYP" runat="server"></h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="T3U01_SFL_1" runat="server" class="table gal6-table-striped w-100">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <span>Short description</span>
                                </th>
                                <th>
                                    <span>Long description</span>
                                </th>
                                <th>
                                    <span>System</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="S_opt" runat="server" />
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
                                    <span id="Sys_IMC" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />

                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="EARA_msg" style="margin-right: 20px" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var sec_title = document.getElementById("ctl00_GXPagePlaceHolder_GeographicTableMaintenance_TYP").innerText;
        if (sec_title != "") {
            document.getElementById("mainTitle").innerText += " | ";
        }
    </script>
</asp:Content>
