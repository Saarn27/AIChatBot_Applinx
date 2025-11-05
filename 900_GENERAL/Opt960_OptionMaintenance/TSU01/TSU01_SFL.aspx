<%@ Page MasterPageFile="~/template.master" Inherits="TSU01_SFL" CodeFile="TSU01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
            <input id="optTrans2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" runat="server">Option Maintenance</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="auto" input-size="large" label-text="System:" no-description>
                        <select id="system_STR1" runat="server"></select>
                    </gal-input>
                </div>
            </div>
           <div class="table-container"><table id="TSU01_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th style="width: 60px">
                            <gal-input input-size="xxsmall" no-description>
                                <input id="module_STR2" runat="server" />
                            </gal-input>
                            <span>Module</span>
                        </th>
                        <th style="width: 200px">
                            <gal-input input-size="small" no-description>
                                <input id="description_SEL1" runat="server" />
                            </gal-input>
                            <span>Module Description</span>
                        </th>
                        <th style="width: 50px">
                            <gal-input input-size="xxsmall" no-description>
                                <input id="menu_STR5" runat="server" />
                            </gal-input>
                            <span>Menu</span>
                        </th>
                        <th columntype="qty" style="width: 60px">
                            <gal-input input-size="xsmall" no-description>
                                <input id="fatherSelection_FCOD" runat="server" />
                            </gal-input>
                            <span>Father</span>
                        </th>
                        <th columntype="qty" style="width: 60px">
                            <gal-input input-size="xsmall" no-description>
                                <input id="option_STR3" runat="server" />
                            </gal-input>
                            <span>Option</span>
                        </th>
                        <th style="width: 100px">
                            <gal-input input-size="xsmall" no-description>
                                <input id="subOpt_STR4" runat="server" />
                            </gal-input>
                            <span>Sub Option</span>
                        </th>
                        <th style="width: 100px" >
                            <gal-input input-size="small" no-description>
                                <input id="program_SEL3" runat="server" />
                            </gal-input>
                            <span>%Program</span>
                        </th>
                        <th columntype="qty" style="width: 150px">
                            <span>No. Of Parameters</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <input id="longDesc_SEL2" runat="server" />
                            </gal-input>
                            <span>%Long Description</span>
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
                        <td columntype="qty"><span id="option_OCOD" runat="server"></span></td>
                        <td columntype="qty"><span id="subOption_BCOD" runat="server"></span></td>
                        <td><span id="program_PGM" runat="server"></span></td>
                        <td columntype="qty"><span id="pr_NOP" runat="server"></span></td>
                        <td><span id="longDesc_DSCL1" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="legend-div">
                <legend-block text="Call OTS with Sys+Opt" color="yellow"></legend-block>
                <legend-block text="Not active" color="white"></legend-block>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_EARA" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
