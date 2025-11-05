<%@ Page MasterPageFile="~/template.master" Inherits="GNU03_SFL" CodeFile="GNU03_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
            <input id="actionBar3" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">NOTIFICATION MASTER LIST</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" input-size="small" label-text="Open/Close:" no-description>
                        <select id="openCloseFilter_OCA" runat="server" onchange="gx_SubmitKey('[enter]');">
                            <option value=""></option>
                            <option value="O">Open</option>
                            <option value="C">Close</option>
                        </select>
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="xsmall" input-size="xsmall" label-text="Active:" no-description>
                        <select id="activeFilter_LGNCOD1" onchange="gx_SubmitKey('[enter]');" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                        </select>
                    </gal-input>

                </div>
            </div>
            <div class="table-container"><table id="GNU03_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input input-size="xxlarge" no-description>
                                <input id="notificationTextFilter_LGNTXT1" runat="server" />
                            </gal-input>
                            <span>Notification Text</span>
                        </th>
                        <th columntype="primaryNumber">
                            <gal-input input-size="small" no-description>
                                <input id="notificationNumberFilter_LGNNNO" runat="server" />
                            </gal-input>
                            <span>Notification Number</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="notificationEntityFilter_LGNTYPE" runat="server" />
                            </gal-input>
                            <span>Entity</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="notificationEntityDescriptionFilter_LT23DSC" runat="server" />
                            </gal-input>
                            <span>Entity Description</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_SOPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="notificationText_SGNTXT1" runat="server"></span></td>
                        <td columntype="primaryNumber"><span id="notificationNumber_SGNNNO" runat="server"></span></td>
                        <td><span id="notificationEntity_SGNTYPE" runat="server"></span></td>
                        <td><span id="notificationEntityDescription_ST23DSC" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
        <div class="message-container">
            <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
        </div>
    </div>

</asp:Content>
