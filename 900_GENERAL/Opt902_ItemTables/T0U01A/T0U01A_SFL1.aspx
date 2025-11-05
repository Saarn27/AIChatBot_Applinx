<%@ Page MasterPageFile="~/template.master" Inherits="T0U01A_SFL1" CodeFile="T0U01A_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
            <input id="actionBar3" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 id="title_TITLE" runat="server" class="headline"></h1>
                <span class="blue-headline sub-headline" id="type_TYP" runat="server"></span>
            </div>
            <div class="table-container">
                <table id="T0U01A_SFL1_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="appCodeSearch_SEL1" runat="server" />
                                </gal-input>
                                    <span>Application</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="shortDescSearch_SEL2" runat="server" />
                                </gal-input>
                                <span>%Short description</span>
                            </th>
                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="longDescSearch_SEL3" runat="server" />
                                </gal-input>
                                <span>%Long description</span>
                            </th>
                            <th>
                                <span>Sequence</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="followupSelect_SEL0" runat="server" />
                                </gal-input>
                                <span>Follow up</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="appSelection_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="appCode_COD" runat="server"></span></td>
                            <td><span id="shortDesc_SDS" runat="server"></span></td>
                            <td><span id="longDescription_DSC" runat="server"></span></td>
                            <td><span id="seq_SEQ" runat="server"></span></td>
                            <td><span id="imc_IMC" runat="server"></span></td>
                            <td><span id="followupCode_FUP" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="errorMessage_EARA" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
