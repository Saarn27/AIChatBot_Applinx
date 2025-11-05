<%@ Page MasterPageFile="~/template.master" Inherits="GRU01_SFL" CodeFile="GRU01_SFL.aspx.cs" Language="C#" %>

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
                <h1 class="headline" runat="server">REASON CODE MAINTENANC</h1>
                <span style="color:#2D7DD2" id="title1_COD" runat="server"></span>
                |
                <span  style="color:#2D7DD2" id="title2_DSCL" runat="server"></span>
            </div>
            <table id="GRU01_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input input-size="xsmall" no-description>
                                <input id="RSNSrc" runat="server" />
                            </gal-input>
                            <span>Reason</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <input id="shortDesSrc_DSC" runat="server" />
                            </gal-input>
                            <span>Short description</span>
                        </th>
                        <th>
                            <gal-input input-size="xxlarge" no-description>
                                <input id="londDesSrc_DSCL" runat="server" />
                            </gal-input>
                            <span>Long description</span>
                        </th>
                        <th>
                            <gal-input input-size="small" no-description>
                                <input id="work_WF" runat="server" />
                            </gal-input>
                            <span>WorkFlow</span>
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
                            <span class="input-medium" id="rsncole_RSN" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-large" id="shortDsccol_DSC1" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-small" id="longDescol_DSCL1" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-small" id="workFlocol_WF" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
