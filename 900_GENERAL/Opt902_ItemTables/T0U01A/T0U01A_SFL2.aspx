<%@ Page MasterPageFile="~/template.master" Inherits="T0U01A_SFL2" CodeFile="T0U01A_SFL2.aspx.cs" Language="C#" %>

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
                <table id="T0U01A_SFL2_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="appSearch_SEL1" runat="server" />
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
                                <span>System</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="productGrpSearch_SEL4" runat="server" />
                                </gal-input>
                                <span>Group</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="lineSearch_SEL5" runat="server" />
                                </gal-input>
                                <span>Line</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="familySearch_SEL6" runat="server" />
                                </gal-input>
                                <span>Family</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="show_SEL7" runat="server" />
                                </gal-input>
                                <span>Show</span>
                            </th>
                            <th>
                                <span>%-Land cost</span>
                            </th>
                            <th>
                                <span>%-Gross profit</span>
                            </th>
                            <th>
                                <span>Producer</span>
                            </th>
                            <th>
                                <span>Cost types</span>
                            </th>
                            <th>
                                <span>R / F
                                    <br />
                                    S / Z</span>
                            </th>
                            <th>
                                <span>Class</span>
                            </th>
                            <th>
                                <span>Class1</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="optionSelection_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="appCode_COD" runat="server"></span></td>
                            <td><span id="shortDesc_SDS" runat="server"></span></td>
                            <td><span id="imc_IMC" runat="server"></span></td>
                            <td><span id="productGrp_GRP" runat="server"></span></td>
                            <td><span id="line_LIN" runat="server"></span></td>
                            <td><span id="familyCode_FAM" runat="server"></span></td>
                            <td><span id="show_SHOW" runat="server"></span></td>
                            <td><span id="landingCost_LDCST" runat="server"></span></td>
                            <td><span id="grossProfit_GRPRF" runat="server"></span></td>
                            <td><span id="productionUce_PRODU" runat="server"></span></td>
                            <td><span id="costType_TOLINS" runat="server"></span></td>
                            <td><span id="costCode_RAWMAT" runat="server"></span></td>
                            <td><span id="class_CLS" runat="server"></span></td>
                            <td><span id="class1_CLASS1" runat="server"></span>
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
