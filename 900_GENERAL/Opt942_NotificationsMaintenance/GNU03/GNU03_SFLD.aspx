<%@ Page MasterPageFile="~/template.master" Inherits="GNU03_SFLD" CodeFile="GNU03_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DELETE CONFIRMATION</h1>
            </div>
            <div class="table-container"><table id="GNU03_SFLD_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <span>Notification Text</span>
                        </th>
                        <th columntype="primaryNumber">
                            <span>Notification Number</span>
                        </th>
                        <th>
                            <span>Entity</span>
                        </th>
                        <th>
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
                        <td><span id="notificationText_DGNTXT1" runat="server"></span></td>
                        <td columntype="primaryNumber"><span id="notificationNumber_DGNNNO" runat="server"></span></td>
                        <td><span id="notificationEntity_DGNTYPE" runat="server"></span></td>
                        <td><span id="notificationEntityDescription_DT23DSC" runat="server"></span></td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <div class="message-container message-container-with-btn">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
            </div>
        </div>
    </div>
</asp:Content>
