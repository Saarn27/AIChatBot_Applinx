<%@ Page MasterPageFile="~/template.master" Inherits="TSU02_SFL" CodeFile="TSU02_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" runat="server">Personal Menu Program Maintenance</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" input-size="xlarge" label-text="User Name:">
                        <input id="userName_USR" runat="server"/>
                        <input id="userDesc_NAM" runat="server"/>
                    </gal-input>
                </div>
            </div>
           <div class="table-container"><table id="TSU02_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th style="width: 100px">
                            <gal-input input-size="small" no-description>
                                <input id="systemSelection_SEL1" runat="server" />
                            </gal-input>
                            <span>System</span>
                        </th>
                        <th style="width: 100px">
                            <gal-input input-size="xsmall" no-description>
                                <input id="menuSelection_SEL2" runat="server" />
                            </gal-input>
                            <span>Menu</span>
                        </th>
                        <th style="width: 100px">
                            <gal-input input-size="small" no-description>
                                <input id="fatherSelection_SEL3" runat="server" />
                            </gal-input>
                            <span>Father</span>
                        </th>
                        <th columntype="qty" style="width: 150px">
                            <gal-input input-size="small" no-description>
                                <input id="optionSelection_SEL4" runat="server" />
                            </gal-input>
                            <span>Option</span>
                        </th>
                        <th style="width: 150px">
                            <gal-input input-size="small" no-description>
                                <input id="subOptSelection_SEL5" runat="server" />
                            </gal-input>
                            <span>Sub Option</span>
                        </th>
                        <th style="width:200px">
                            <gal-input input-size="medium" no-description>
                                <input id="programSelection_SEL6" runat="server" />
                            </gal-input>
                            <span>%program</span>
                        </th>
                        <th >

                            <span>Number Of Parameters</span>
                        </th>
                        <th>
                            <gal-input input-size="xlarge" no-description>
                                <input id="descriptionSelection_SEL7" runat="server" />
                            </gal-input>
                            <span>Description</span>
                        </th>
                        <th>
                            <span>Sequence</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="system_SYSCOD" runat="server"></span></td>
                        <td><span id="menu_MENU" runat="server"></span></td>
                        <td><span id="father_FCOD" runat="server"></span></td>
                        <td><span id="option_OCOD" runat="server"></span></td>
                        <td><span id="sunOption_BCOD" runat="server"></span></td>
                        <td><span id="program_PGM" runat="server"></span></td>
                        <td columntype="qty"><span id="parameters_NOP" runat="server"></span></td>
                        <td><span id="description_DSCL1" runat="server"></span></td>
                        <td><span id="seq_SEQ" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="legend-div">
                <legend-block text="Option Not Active" color="white"></legend-block>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
