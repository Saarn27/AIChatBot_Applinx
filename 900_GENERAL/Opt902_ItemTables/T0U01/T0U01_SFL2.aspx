<%@ Page MasterPageFile="~/template.master" Inherits="T0U01_SFL2" CodeFile="T0U01_SFL2.aspx.cs" Language="C#" %>

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
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
                <span class="blue-headline sub-headline" id="type_TYP" runat="server"></span>
            </div>
            <div class="table-container">
                <table id="TOU01_SFL2_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="codeFilter_SEL1" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="shortDescFilter_SEL2" runat="server" />
                                </gal-input>
                                <span>%Short description</span>
                            </th>
                            <th>
                                <gal-input input-size="xxlarge" no-description>
                                    <input id="longDescFilter_SEL3" runat="server" />
                                </gal-input>
                                <span>%Long description</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="filter4_SEL4" runat="server" />
                                </gal-input>
                                <span id="headerSel4_HEADL" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="selectOption_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="tableCode_COD" runat="server"></span></td>
                            <td><span id="shortDesc_SDS" runat="server"></span></td>
                            <td><span id="longDescription_DSC" runat="server"></span></td>
                            <td><span id="imc_IMC" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                            <td><span id="colSel4_GRD" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="errorMessege_EARA1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <script>
        var title = document.getElementById('ctl00_GXPagePlaceHolder_title_TITLE');
        console.log(title);
        title.innerText = title.innerText.replace("GRP", "Group");
    </script>
</asp:Content>
