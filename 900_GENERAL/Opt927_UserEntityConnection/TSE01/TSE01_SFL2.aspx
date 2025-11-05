<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSE01_SFL2.aspx.cs" Inherits="TSE01_SFL2" %>

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
            <gal-table-header text="Entity 1" end-column="3" start-column="2"></gal-table-header>
            <gal-table-header text="Entity 2" end-column="5" start-column="4"></gal-table-header>
            <div class="table-container">
                <table id="TSE01_SFL2_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input-help input-size="xxsmall" no-description>
                                    <input id="S_GSSYS" runat="server" />
                                </gal-input-help>
                                <span>Type 1</span>

                            </th>
                            <th columntype="None">
                                <gal-input input-size="medium" no-description>
                                    <input id="S_VAL1" runat="server" />
                                </gal-input>
                                <span>%Value 1 description </span>

                            </th>
                            <th>
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="S_GSCODA" runat="server" />
                                </gal-input-help>
                                <span>Type 2</span>

                            </th>
                            <th columntype="None">
                                <gal-input input-size="medium" no-description>
                                    <input id="S_VAL2" runat="server" />
                                </gal-input>
                                <span>%Value 2 description</span>

                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="S_USER_NAM" runat="server" />
                                </gal-input>
                                <span>User Name</span>

                            </th>
                            <th>
                                <gal-input-help input-size="small2" no-description>
                                    <input id="S_GSUSRU" runat="server" />
                                </gal-input-help>
                                <span>Update user </span>

                            </th>
                            <th columntype="date">
                                <gal-input input-size="small" no-description>
                                    <input id="S_GSTUPD" runat="server" galtype="date" dateformat="dd/mm/y" />
                                </gal-input>
                                <span>Update date</span>

                            </th>
                        </tr>
                    </thead>
                    <tbody>


                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="OPT1" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="A_GSSYS" runat="server"></span>
                            </td>
                            <td>
                                <span id="C_VAL1" runat="server"></span>
                            </td>
                            <td>
                                <span id="A_GSCODA" runat="server"></span>
                            </td>
                            <td>
                                <span id="C_VAL2" runat="server"></span>
                            </td>
                            <td>
                                <span id="C_USER_NAM" runat="server"></span>
                            </td>
                            <td>
                                <span id="C_GSUSRU" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="C_GSTUPD" runat="server" galtype="date" dateformat="ddmmy"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>

                </table>

                <grid-scroller more-columns></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>

                    <span class="invalid-feedback" id="MSG1" runat="server"></span>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />

        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

    </script>
</asp:Content>
