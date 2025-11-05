<%@ Page MasterPageFile="~/template.master" Inherits="GNU02_SFL" CodeFile="GNU02_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Send Notification</h1>
            </div>
            <div style="width: fit-content">
                <table no-grid-scroller="true" runat="server" id="GNU02_SFL_1" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>To User</span>
                            </th>
                            <th>
                                <span>Name</span>
                            </th>
                            <th>
                                <span>Reply</span>
                            </th>
                            <th>
                                <span>Option</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <gal-input-help input-size="medium" no-description>
                                    <input id="user_USR" runat="server"  maxlength="10"/>
                                </gal-input-help>
                            </td>
                            <td style="width: 200px">
                                <span id="userName_NAM" runat="server"></span>
                            </td>
                            <td>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="reply_RPY" runat="server"  maxlength="1"/>
                                </gal-input>
                            </td>
                            <td>
                                <gal-input input-size="medium" no-description>
                                    <select id="task_TASK" runat="server">
                                        <option value=""></option>
                                        <option value="A">All</option>
                                        <option value="T">Task</option>
                                        <option value="E">Email</option>
                                    </select>
                                </gal-input>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table no-grid-scroller="true" runat="server" id="GNU02_SFL_2" class="table gal6-table-striped" style="margin-top: -10px">
                    <thead>
                        <tr class="grid-header">
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OP2" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <gal-input-help input-size="medium" no-description>
                                    <input id="user_USR2" runat="server"  maxlength="10"/>
                                </gal-input-help>
                            </td>
                            <td style="width: 200px">
                                <span id="userName_NAM2" runat="server"></span>
                            </td>
                            <td>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="reply_RPY2" runat="server" maxlength="1"/>
                                </gal-input>
                            </td>
                            <td>
                                <gal-input input-size="medium" no-description>
                                    <select id="task_TASK2" runat="server">
                                        <option value=""></option>
                                        <option value="A">All</option>
                                        <option value="T">Task</option>
                                        <option value="E">Email</option>
                                    </select>
                                </gal-input>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="column-form related-fields-area" >
                    <div class="spaced-column">
                        <gal-input-help input-size="xxlarge" label-size="small" label-text="Notifications:" no-description>
                            <input id="notificationTxt0_TXT0" runat="server" />
                        </gal-input-help>
                        <gal-input-help input-size="xxlarge" label-size="small" no-description>
                            <input id="notificationTxt1_TXT1" runat="server" />
                        </gal-input-help>
                        <gal-input-help input-size="xxlarge" label-size="small" no-description>
                            <input id="notificationTxt2_TXT2" runat="server" />
                        </gal-input-help>
                        <gal-input-help input-size="xxlarge" label-size="small" no-description>
                            <input id="notificationTxt3_TXT3" runat="server" />
                        </gal-input-help>
                        <gal-input-help input-size="xxlarge" label-size="small" no-description>
                            <input id="notificationTxt4_TXT4" runat="server" />
                        </gal-input-help>
                    </div>

                    <div class="spaced-column">
                        <gal-input input-size="large" label-size="xsmall" label-text="Entity:" no-description>
                            <select id="entity_AGNTYPE" runat="server"></select>
                        </gal-input>
                        <gal-input input-size="large" label-size="xsmall" label-text="Priority:" no-description>
                            <select id="priority_AGNPTY" runat="server">
                                <option value=" "></option>
                                <option value="H">High</option>
                                <option value="M">Medium</option>
                                <option value="L">Low</option>
                            </select>
                        </gal-input>
                        <div class="centered-flex">
                            <label>To User Option:  </label>
                            <label style="margin-left: 15px">ALLCMP=All company users,</label>
                            <label style="margin-left: 15px">ALLACT=All computer user</label>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Send</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
