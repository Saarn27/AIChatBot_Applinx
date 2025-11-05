<%@ Page MasterPageFile="~/template.master" Inherits="TSU01_SFLD" CodeFile="TSU01_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" runat="server">Option Maintenance Delete Confirmation</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="large" label-text="System:">
                        <input id="system_STR1" runat="server" />
                        <input id="systemDesc_SYSDSC" runat="server" />
                    </gal-input>
                </div>
            </div>
           <div class="table-container"><table id="TSU01_SFLD_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th style="width: 100px">
                            <span>Module</span>
                        </th>
                        <th style="width: 200px">
                            <span>Module Description</span>
                        </th>
                        <th style="width: 100px">
                            <span>Menu</span>
                        </th>
                        <th columntype="qty" style="width: 150px">
                            <span>Father</span>
                        </th>
                        <th columntype="qty" style="width: 150px">
                            <span>Option</span>
                        </th>
                        <th style="width: 200px">
                            <span>Sub Option</span>
                        </th>
                        <th>
                            <span>Program</span>
                        </th>
                        <th columntype="qty" style="width: 200px">
                            <span>Number Of Parameters</span>
                        </th>
                        <th>
                            <span>Long Description</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_S" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="module_MODCOD" runat="server"></span></td>
                        <td><span id="description_MODDSC" runat="server"></span></td>
                        <td><span id="menu_MENU" runat="server"></span></td>
                        <td columntype="qty"><span id="father_FCOD" runat="server"></span></td>
                        <td columntype="qty"><span id="opt_OCOD" runat="server"></span></td>
                        <td columntype="qty"><span id="subOpt_BCOD" runat="server"></span></td>
                        <td><span id="program_PGM" runat="server"></span></td>
                        <td columntype="qty"><span id="pr_NOP" runat="server"></span></td>
                        <td><span id="longDescription_DSCL1" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errMsg_Msg" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
            </div>
        </div>
    </div>
</asp:Content>
