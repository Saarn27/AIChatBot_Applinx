<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU03_SFLD.aspx.cs" Inherits="TSU03_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">AUTHORITY MAINTENANCE</h1>
        <span class="separating-line">|</span>
        <span class="sub-headline blue-headline">Delete Confirmation</span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="related-fields-area">
                <gal-input-help label-text="System:" label-size="xsmall2" input-size="large">
                    <input id="system_STR1" runat="server" />
                    <input id="systemDsc_SYSDSC" runat="server" />
                </gal-input-help>
            </div>
            <div class="table-container">
                <table id="TSU03_SFLD_1" runat="server" class="table gal6-table-striped no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Type</span>
                            </th>
                            <th>
                                <span>User / Group</span>
                            </th>
                            <th>
                                <span>Mode</span>
                            </th>
                            <th>
                                <span>Option</span>
                            </th>
                            <th>
                                <span>+Sub</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                            <th>
                                <span>Company</span>
                            </th>
                            <th>
                                <span>Authority</span>
                            </th>
                            <th columntype="date">
                                <span>To date</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="type_TYP" runat="server"></span></td>
                            <td><span id="userGroup_USRGRP" runat="server"></span></td>
                            <td><span id="mode_MODCOD" runat="server"></span></td>
                            <td><span id="opt_OCOD" runat="server"></span></td>
                            <td><span id="sub_BCOD" runat="server"></span></td>
                            <td><span id="dsc_DSC" runat="server"></span></td>
                            <td><span id="cmp_CMP" runat="server"></span></td>
                            <td><span id="A_AUT" runat="server"></span></td>
                            <td columntype="date"><span id="toDate_TODAT" runat="server" galtype="date" dateformat="dd/mm/y"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARD" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
</asp:Content>
