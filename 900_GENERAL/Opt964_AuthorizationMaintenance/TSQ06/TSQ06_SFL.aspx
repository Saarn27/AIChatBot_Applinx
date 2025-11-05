<%@ Page MasterPageFile="~/template.master" Inherits="TSQ06_SFL" CodeFile="TSQ06_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">AUTHORITY MAINTENANCE</h1>
            </div>
            <div class="table-container">
                <div class="column-form related-fields-area w-100">
                    <div class="spaced-column">
                        <gal-input label-text="System:" label-size="xsmall" input-size="medium">
                            <input id="system_SYS" runat="server" />
                            <input id="systemDescription_SYSD" runat="server" />
                        </gal-input>
                        <gal-input label-text="Module:" label-size="xsmall" input-size="medium">
                            <input id="module_S_TSPMOD" runat="server" />
                            <input id="moduleDescription_S_TSPMODN" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-text="Option:" label-size="small" input-size="large">
                            <input id="option_OPT" runat="server" />
                            <input id="optionDescription_OPTD" runat="server" />
                        </gal-input>
                        <gal-input label-text="Sub option:" label-size="small" input-size="large">
                            <input id="subOption_SOPT" runat="server" />
                            <input id="subOptionDescription_SOPTD" runat="server" />
                        </gal-input>
                    </div>
                </div>

                <table id="athorityMaintenance_TSQ06_SFL" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="userFilter_CODESEL" runat="server" />
                                </gal-input>
                                <span>%User</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="large" no-description>
                                    <input id="userNameFilter_NAMESEL" runat="server" />
                                </gal-input>
                                <span>%User name</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall,small" no-description>
                                    <input id="authorizationFilter_AUTSEL" runat="server" placeholder="Equal" />
                                    <input id="authorizationNotEqualFilter_N_AUTSEL" runat="server" placeholder="Not Equal" />
                                </gal-input>
                                <span>Authorization</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="departmentFilrer_S_YDEP" runat="server" />
                                </gal-input>
                                <span>%Department</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="medium" no-description>
                                    <input id="departmentDescriptionFilter_S_FCTDSCS" runat="server" />
                                </gal-input>
                                <span>%Department name</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="medium" no-description>
                                    <input id="srcFilter__S_ADAT" runat="server" />
                                </gal-input>
                                <span>%Source</span>
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_S_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="user_USRCODE" runat="server"></span></td>
                            <td><span id="userName_USRNAME" runat="server"></span></td>
                            <td>
                                <gal-input label-size="" input-size="xxsmall" no-description>
                                    <input id="authorization_USRAUT" runat="server" maxlength="1" />
                                </gal-input>
                            </td>
                            <td><span id="department_YDEP" runat="server"></span></td>

                            <td>
                                <span id="departmentDescription_FCTDSCS" runat="server"></span>
                            </td>
                            <td>
                                <span id="Source_S_ADAT" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <grid-scroller></grid-scroller>
            </div>
            <input id="pageIndex" runat="server" style="display: none;" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
            </div>

            <div class="legend-div">
                <legend-block text="Group authority" color="white" text-color></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
