<%@ Page MasterPageFile="~/template.master" Inherits="TNU01_SFL" CodeFile="TNU01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Numerator Table Maintaince</h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="TNU01_SFL_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="cod_SEL5" runat="server" />
                                    </gal-input>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <gal-input input-size="large2" no-description>
                                        <input id="longDsc_SEL6" runat="server" />
                                    </gal-input>
                                    <span>% Long description</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <span>Numerator</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sys_SEL1" runat="server" />
                                    </gal-input>
                                    <span>System</span>
                                </th>
                                <th>
                                    <span>System Application</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="chk_SEL4" runat="server" />
                                    </gal-input>
                                    <span>Check</span>
                                </th>
                                <th columntype="date">
                                    <span>Update date</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="opt_S" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td><span id="cod_COD" runat="server"></span></td>
                                <td><span id="longDescription_DSC" runat="server"></span></td>
                                <td columntype="primaryNumber"><span id="numerator_NUM" runat="server"></span></td>
                                <td><span id="sys_SYS" runat="server"></span></td>
                                <td><span id="sysApp_SYSAPP" runat="server"></span></td>
                                <td><span id="chk_A_TNDA02" runat="server"></span></td>
                                <td columntype="date"><span id="updDate_DAT" runat="server" galtype="date" dateformat="dd/mm/y"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>

                    <div class="message-container message-container-with-btn ">
                        <span class="invalid-feedback" id="err_EARA" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>

                </div>
            </div>
            <div class="legend-div">
                <legend-block text="80% Already in use" color="red"></legend-block>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
