<%@ Page MasterPageFile="~/template.master" Inherits="TUU03_SFLI" CodeFile="TUU03_SFLI.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar2" runat="server" />
            <%--<input id="actionBar1" runat="server" /> --%>
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline no-title-case">UOM</h1>
                <h1 class="headline">Conversions Maintenance </h1>
            </div>

            <div class="table-container">
                <table id="TUU03_SFLI_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="itemNoSrc_HITM" runat="server">
                                </gal-input>
                                <span>Item number</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="itemDesSrc_HITMD" runat="server">
                                </gal-input>
                                <span>%item description</span>
                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="srSrc_HSRC" runat="server">
                                </gal-input-help>
                                <span>Source</span>
                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="dsSrc_HDST" runat="server">
                                </gal-input-help>
                                <span>Destination</span>
                            </th>
                            <th columntype="qty">
                                <span>Mult Factor</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input-help input-size="small" no-description>
                                    <input id="vendorSrc_HVND" runat="server">
                                </gal-input-help>
                                <span>Vendor</span>
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
                                <span id="ItemNo_ITM" runat="server" class="link-span" onclick="moveToPrimaryKeyScreen(event, '7');" onmouseout="hideToolTip(event);" onmouseover="setToolTip(event,'item');"></span>
                            </td>
                            <td>
                                <span id="ItemDescription_ITMD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sr_ISRC" runat="server"></span>
                            </td>
                            <td>
                                <span id="Ds_IDST" runat="server"></span>
                            </td>
                            <td columntype="qty">
                                <span id="Factor_IFCT" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Vendor_IVND" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMsg_EARA" runat="server"></span>
                    <button id="F6Button" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="pageIndicator" runat="server" style="display: none" />
    <input id="F6_add" runat="server" style="display: none" />
    <script>

        var F6_add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F6_add").value.trim() == "";
        var F6_add_Btn = document.getElementById("F6Button");
        if (F6_add_isHidden) {
            F6_add_Btn.style.display = "none"
        }

    </script>
</asp:Content>
