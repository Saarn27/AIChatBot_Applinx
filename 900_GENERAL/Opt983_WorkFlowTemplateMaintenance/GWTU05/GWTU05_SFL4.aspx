<%@ Page MasterPageFile="~/template.master" Inherits="GWTU05_SFL4" CodeFile="GWTU05_SFL4.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">CONNECTION TO TEMPLATES MAINTENANCE </h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="GWTU05_SFL4_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="typeFilter_SLK0" runat="server" />
                                    </gal-input>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="key1Filter_SLK1" runat="server" />
                                    </gal-input>
                                    <span>Key 1</span>
                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="key2Filter_SLK2" runat="server" />
                                    </gal-input>
                                    <span>Key 2</span>
                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="key3Filter_SLK3" runat="server" />
                                    </gal-input>
                                    <span>Key 3</span>
                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="descriptionFilter_SLDSC" runat="server" />
                                    </gal-input>
                                    <span>Description</span>
                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="templateFilter_SLVAL1" runat="server" />
                                    </gal-input>
                                    <span>Template</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="opt_S" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td>
                                    <span id="type_K0" runat="server"></span>
                                </td>
                                <td>
                                    <span id="key1_K1" runat="server"></span>
                                </td>
                                <td>
                                    <span id="key2_K2" runat="server"></span>
                                </td>
                                <td>
                                    <span id="key3_K3" runat="server"></span>
                                </td>
                                <td>
                                    <span id="description_DESCL" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="template_VAL1L" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller more-columns></grid-scroller>
                    <div style="display:flex; justify-content:flex-end">
                        <button class="btn btn-primary big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />

        </div>
        <div class="message-container">
            <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
        </div>
    </div>
</asp:Content>
