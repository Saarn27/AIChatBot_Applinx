<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSE01_SFL1.aspx.cs" Inherits="TSE01_SFL1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">USER & ENTITY CONNECTION </h1>

            </div>
            <gal-table-header text="Entity 1" end-column="4" start-column="2"></gal-table-header>
            <gal-table-header text="Entity 2" end-column="7" start-column="5"></gal-table-header>
            <div class="table-container">
                <table id="TSE01_SFL1_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input-help input-size="xxsmall" no-description>
                                    <input id="S_GSSYS" runat="server" />
                                </gal-input-help>
                                <span>Type</span>

                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="S_GSSYS_D" runat="server" />

                                </gal-input>
                                <span>Description</span>

                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="S_GSKEYA" runat="server" />
                                </gal-input>
                                <span>%Value 1</span>

                            </th>
                            <th>
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="S_GSCODA" runat="server" />
                                </gal-input-help>
                                <span>Type</span>

                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="S_GSCODA_D" runat="server" />
                                </gal-input>
                                <span>Description</span>


                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="xsmall" no-description>
                                    <input id="S_GSVALA2" runat="server" />
                                </gal-input>
                                <span>%Value 2</span>

                            </th>
                            <th>
                                <gal-input-help input-size="small2" no-description>
                                    <input id="S_GSVALA1" runat="server" />
                                </gal-input-help>
                                <span>User</span>

                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="S_GSSBJ" runat="server" />
                                </gal-input>
                                <span>Roll</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td class="option-column">
                                <input class="row-selector-cell" id="OptionBar" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="Entity_A_GSSYS" runat="server"></span>
                            </td>
                            <td>
                                <span id="Entity1_A_GSSYS_D" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Value1_A_GSSYS" runat="server"></span>
                            </td>
                            <td>
                                <span id="Entity_A_GSCODA" runat="server"></span>
                            </td>
                            <td>
                                <span id="Entity2_A_GSCODA_D" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Value2_A_GSVALA2" runat="server"></span>
                            </td>
                            <td>
                                <span id="User_A_GSVALA1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Rol_A_GSSBJ" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="MSG1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>

    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        checkSelectValue('grp20-cont', 'input');

    </script>
</asp:Content>
