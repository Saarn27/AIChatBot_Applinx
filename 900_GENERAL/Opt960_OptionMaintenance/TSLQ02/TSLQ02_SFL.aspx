<%@ Page MasterPageFile="~/template.master" Inherits="TSLQ02_SFL" CodeFile="TSLQ02_SFL.aspx.cs" Language="C#" %>

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
                <h1 class="headline" id="dynamicTitle" runat="server">Option Not In Use</h1>
            </div>
            <div class="centered-flex">
                <gal-input label-size="small" input-size="small" label-text="From date:" no-description>
                    <input id="fromDate_B_TSLTTRNF" runat="server" style="width: 110px !important; margin-left:-20px;"/>
                </gal-input>
                <gal-input label-size="small" input-size="small" label-text="To date:" no-description>
                    <input id="toDate_B_TSLTTRNT" runat="server" style="width: 110px !important;margin-left:-35px;" />
                </gal-input>
            </div>
           <div class="table-container"><table id="TSLQ02_SFL_1" runat="server" class="table gal6-table-striped ">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th style="width: 100px">
                            <gal-input input-size="medium" no-description>
                                <input id="userCodeFilter_STSUUSR" runat="server" />
                            </gal-input>
                            <span>%User code</span>
                        </th>
                        <th style="width: 800px">
                            <gal-input input-size="xxlarge" no-description>
                                <input id="userNameDescFilter_STSUNME" runat="server" />
                            </gal-input>
                            <span>%User name</span>
                        </th>
                        <th style="width: 100px">
                            <gal-input input-size="medium" no-description>
                                <input id="mainIpFilter_STSUDA" runat="server" />
                            </gal-input>
                            <span>%Main IP</span>
                        </th>
                        <th>
                            <gal-input input-size="xsmall" no-description>
                                <input id="factoryFilter_SYFAC" runat="server" />
                            </gal-input>
                            <span>Factory</span>
                        </th>
                        <th>
                            <gal-input input-size="small" no-description>
                                <input id="department_SYDEP" runat="server" />
                            </gal-input>
                            <span>Department</span>
                        </th>


                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="userCodeSFL" runat="server"></span></td>
                        <td><span id="userNameSFL" runat="server"></span></td>
                        <td><span id="mainIpSFL" runat="server"></span></td>
                        <td><span id="factorySFL" runat="server"></span></td>
                        <td><span id="departmentSFL" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <input id="hiddenField" runat="server" style="display: none;" />
        </div>
    </div>
</asp:Content>
