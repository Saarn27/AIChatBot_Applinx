<%@ Page MasterPageFile="~/template.master" Inherits="TUU03_SFL" CodeFile="TUU03_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar1" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <span style="font-size: inherit; font-weight: 500;">UOM </span>
                <h1 class="headline">Conversions Maintenance </h1>
            </div>

            <div class="table-container">
                <table id="TUU03_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="sorce1Src_HSRC" runat="server">
                                </gal-input-help>
                                <span>%Source</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="source2Src_HSRCD" runat="server">
                                </gal-input>
                                <span>%Source Description</span>
                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="descrSrc1_HDST" runat="server">
                                </gal-input-help>
                                <span>%Destination</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="desSrc2_HDSTD" runat="server">
                                </gal-input>
                                <span>%Destination Description</span>
                            </th>

                            <th columntype="qty">
                                <span>Factor</span>
                            </th>
                            <th>
                                <span id="col6" runat="server"></span>
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
                                <span id="Source_SRC" runat="server"></span>

                            </td>
                            <td>
                                <span id="Source_SRCD" runat="server"></span>

                            </td>
                            <td>
                                <span id="Destination_DST" runat="server"></span>
                            </td>
                            <td>
                                <span id="Destination_DSTD" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="Factor_FCT" runat="server"></span>
                            </td>
                            <td>
                                <span id="Imc_IMC" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMsg_EARA" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('pf6');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <script>
        var sysHeaderd = document.getElementById("ctl00_GXPagePlaceHolder_col6");
        if (sysHeaderd.innerText == "Sys") {
            sysHeaderd.innerText = "System code";
        }
    </script>
</asp:Content>
