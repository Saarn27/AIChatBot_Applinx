<%@ Page MasterPageFile="~/template.master" Inherits="TSLQ03_SFL1" CodeFile="TSLQ03_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" runat="server">Option Not In Use</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" input-size="large" label-text="System:">
                        <input id="systemCode_SYS" runat="server" />
                        <input id="systemDescription_SYSD" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="small" input-size="small" label-text="From date:" no-description>
                            <input id="fromDate_FDATE" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" input-size="small" label-text="To date:" no-description>
                            <input id="toDate_TDATE" runat="server" style="margin-left: -35px;" />
                        </gal-input>
                    </div>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="xsmall" input-size="large" label-text="Module:">
                        <input id="moduleCode_MOD" runat="server" />
                        <input id="moduleDescription_MODD" runat="server" />
                    </gal-input>
                    <gal-input label-size="xsmall" input-size="large" label-text="User:">
                        <input id="userName_USER" runat="server" />
                        <input id="userDescription_USERD" runat="server" />
                    </gal-input>
                </div>
            </div>
           <div class="table-container"><table id="optionNotUserTable_SFL1" runat="server" class="table gal6-table-striped " style="width: 1500px;">
                <%--const width--%>
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th style="width: 100px">
                            <gal-input-help input-size="small" no-description>
                                <input id="optionFilter_SXOPT" runat="server" />
                            </gal-input-help>
                            <span>Option</span>
                        </th>
                        <th>
                            <gal-input input-size="xlarge" no-description>
                                <input id="optionDescription_SXOPTD" runat="server" />
                            </gal-input>
                            <span>Description</span>
                        </th>
                        <th style="width: 100px">
                            <gal-input input-size="xxsmall" no-description>
                                <input id="autoFilter_SXAUT" runat="server" />
                            </gal-input>
                            <span>Authorization</span>
                        </th>
                        <th style="width: 200px">
                            <span id="titleUserToCheck" runat="server"></span>
                        </th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="option_S" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="optionCode_SLOPT" runat="server"></span></td>
                        <td><span id="optionDescription_SLOPTD" runat="server"></span></td>
                        <td><span id="autorization_SLAUT" runat="server"></span>
                            <action-bar mode="single"></action-bar>

                        </td>
                        <td><span id="userCode_USER" runat="server"></span>
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
