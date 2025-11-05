<%@ Page MasterPageFile="~/template.master" Inherits="GHRU05_ASFL" CodeFile="GHRU05_ASFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline"> ZIP CODE SALESMAN </h1>
            </div>
            <div class="table-container">
                <table id="GHRU05_ASFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small2" no-description>
                                    <input id="col1Src_S_GHRZIP" runat="server" />
                                </gal-input>
                                <span>%Zip Code</span>
                            </th>
                            <th>
                                <gal-input input-size="small2" no-description>
                                    <select id="col2Src_S_GHRGRV" runat="server"></select>
                                </gal-input>
                                <span>%Salesman</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="col3Src_SD_SLSMAN" runat="server" />
                                </gal-input>
                                <span>%Salesman Name</span>
                            </th>
                            <th>
                                <gal-input input-size="small2" no-description>
                                    <input id="col4Src_S_GHRES4" runat="server" />
                                </gal-input>
                                <span>Partner</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="A_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="ZipCode_A_GHRZIP" runat="server"></span>
                            </td>
                            <td>
                                <span id="Salesman_A_GHRGRV" runat="server"></span>
                            </td>
                            <td>
                                <span id="SalesmanName_AD_SLSMAN" runat="server"></span>
                            </td>
                            <td>
                                <span id="Partner_A_GHRES4" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="A_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>

            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
