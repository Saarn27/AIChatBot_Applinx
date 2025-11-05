<%@ Page MasterPageFile="~/template.master" Inherits="T0U01S_SFL1" CodeFile="T0U01S_SFL1.aspx.cs" Language="C#" %>

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
                <h1 class="headline">Manufacture Group</h1>
                <span class="sub-headline blue-headline">S</span>
                <span class="sub-headline" id="status_STAT" runat="server"></span>
            </div>
            <div class="table-container">
                <table id="T0U01S_SFL1_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="companyFilter_AGRPM" runat="server" />
                                </gal-input>
                                <span>Company</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="shortDescFilter_ASDS" runat="server" />
                                </gal-input>
                                <span>%Short Description</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="longDescFilter_ADSC" runat="server" />
                                </gal-input>
                                <span>%Long Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="factoryFilter_AFAC" runat="server" />
                                </gal-input>
                                <span>Factory</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="productLineFilter_ALIN" runat="server" />
                                </gal-input>
                                <span>Product Line</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="typeFilter_ATYP" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="groupFilter_ADISGRP" runat="server" />
                                </gal-input>
                                <span>Group</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="option_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="company_GRPM" runat="server"></span></td>
                            <td><span id="shortDesc_SDS" runat="server"></span></td>
                            <td><span id="longDesc_DSC" runat="server"></span></td>
                            <td><span id="factory_FAC" runat="server"></span></td>
                            <td>
                                <span id="productLine_LIN" runat="server"></span>
                                <span id="productLineDesc_LINDS" runat="server"></span>
                            </td>
                            <td><span id="type_TYPE" runat="server"></span></td>
                            <td><span id="group_T0CODG" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>

                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <input style="display: none;" id="hiddenField" runat="server" />
        </div>
    </div>
</asp:Content>
