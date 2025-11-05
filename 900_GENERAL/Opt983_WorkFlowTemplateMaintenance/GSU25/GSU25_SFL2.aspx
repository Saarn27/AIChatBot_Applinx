<%@ Page MasterPageFile="~/template.master" Inherits="GSU25_SFL2" CodeFile="GSU25_SFL2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />

        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">User Limitation - Product Group</h1>
            </div>


            <div class="table-container">
                <table id="GSU25_SFL2_1" runat="server" class="table gal6-table-striped" style="min-height: 0px">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>

                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="userFilter_SUSR" runat="server" />
                                </gal-input>
                                <span>%User</span></th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="userNameFilter_SUSRNME" runat="server" />
                                </gal-input>
                                <span>%User Name</span></th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="typeFilter_STYP" runat="server" />
                                </gal-input>
                                <span>Type</span></th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <select id="productGroupFilter_SPRGRP" runat="server"></select>
                                </gal-input>
                                <span>Product Group</span></th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <select id="lineFilter_SPRGRPL" runat="server"></select>
                                </gal-input>
                                <span>Line</span></th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <select id="itemTypeFilter_SITMTYP" runat="server"></select>
                                </gal-input>
                                <span>Item Type</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="user_USR" runat="server"></span></td>
                            <td>
                                <span id="userName_USRNME" runat="server"></span></td>
                            <td>
                                <span id="type_TYP" runat="server"></span></td>
                            <td>
                                <span id="productGroup_PRGRP" runat="server"></span></td>
                            <td>
                                <span id="line_PRGRPL" runat="server"></span></td>
                            <td>
                                <span id="itemType_ITMPTYP" runat="server"></span>
                                     <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG2" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
