<%@ Page MasterPageFile="~/template.master" Inherits="TSQ06_SFL1" CodeFile="TSQ06_SFL1.aspx.cs" Language="C#" %>

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

                <div class="related-fields-area w-100">
                    <gal-input label-text="System:" label-size="auto" input-size="large">
                        <input id="system_SYS" runat="server" />
                        <input id="systemDescription_SYSD" runat="server" />
                    </gal-input>
                </div>
                <table id="authorityMainDepartment_TSQ06_SFL1" runat="server" class="table gal6-table-striped less-padding-table">
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
                            <th><span>Module</span></th>
                            <th><span>Option</span></th>
                            <th><span>Sub option</span></th>
                            <th>
                                <div class="column-form">
                                    <div class="spaced-column">
                                        <gal-input input-size="small,small" no-description>
                                            <input id="authorizationFilter_AUTSEL" runat="server" placeholder="Equal" />
                                            <input id="authorizationNotEqualFilter_N_AUTSEL" runat="server" placeholder="Not Equal" />
                                        </gal-input>
                                    </div>
                                </div>
                                <span>Authorization</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="departmentFilrer_S_YDEP" runat="server" />
                                </gal-input>
                                <span>%Department</span>
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
                            <td><span id="module_MOD" runat="server"></span></td>
                            <td><span id="option_OPT" runat="server"></span></td>
                            <td><span id="subOption_SOPT" runat="server"></span></td>
                            <td>
                                <gal-input label-size="" input-size="xsmall" no-description>
                                    <input id="authorization_USRAUT" runat="server" maxlength="1" />
                                </gal-input>

                            </td>
                            <td>
                                <span id="department_YDEP" runat="server"></span>
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
