<%@ Page MasterPageFile="~/template.master" Inherits="T0U01H1_SFL2" CodeFile="T0U01H1_SFL2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
                <span class="blue-headline sub-headline" id="type_TYPE" runat="server"></span>
            </div>
            <div class="table-container">
                <table id="T0U01H1_SFL2_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="codeFilter_SEL1" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="small2" no-description>
                                    <input id="shortDescFilter_SEL2" runat="server" />
                                </gal-input>
                                <span>%Short description</span>
                            </th>
                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="longDescFilter_SEL3" runat="server" />
                                </gal-input>
                                <span>%Long description</span>
                            </th>
                            <th>
                                <span>%Landing cost</span>
                            </th>
                            <th>
                                <span>Custom</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="Code_COD" runat="server"></span></td>
                            <td><span id="Short_SDS" runat="server" class="double-span"></span>
                                <span id="Short2_CODU" runat="server"></span>
                            </td>
                            <td><span id="LongDescription_DSC" runat="server" class="double-span"></span>
                                <span id="long2_DSCU" runat="server"></span>
                            </td>
                            <td><span id="LC_LCLC" runat="server"></span>
                            </td>
                            <td><span id="Custom_CSCS" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
