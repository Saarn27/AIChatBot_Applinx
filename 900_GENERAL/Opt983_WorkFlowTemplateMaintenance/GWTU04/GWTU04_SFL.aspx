<%@ Page MasterPageFile="~/template.master" Inherits="GWTU04_SFL" CodeFile="GWTU04_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Workflow Types</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">

            <div class="table-container">
                <table id="GWTU04_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="typeFilter" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="descFilter" runat="server" />
                                </gal-input>
                                <span>%Description</span>
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
                                <span id="typ_WFTYPE" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_WFDSC" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
        </div>
        <input style="display: none;" id="pageIndex" runat="server" />
    </div>
</asp:Content>
