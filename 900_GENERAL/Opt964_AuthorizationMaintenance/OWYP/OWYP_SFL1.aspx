<%@ Page MasterPageFile="~/template.master" Inherits="OWYP_SFL1" CodeFile="OWYP_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="H1" runat="server">Employee Help Table </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal">
            <div class="table-container">
                <table id="OWYP_SFL1_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th columntype="qty">
                                <gal-input input-size="small" no-description>
                                    <input id="number_SEL1" runat="server" />
                                </gal-input>
                                <span>Number</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="firstName_SEL2" runat="server" />
                                </gal-input>
                                <span>%First name</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="lastName_SEL3" runat="server" />
                                </gal-input>
                                <span>%Last name</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td columntype="primaryNumber">
                                <span id="number_EMP" runat="server"></span>
                            </td>
                            <td>
                                <span id="firstName_NMEF" runat="server"></span>
                            </td>
                            <td>
                                <span id="lastName_NMEL" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="legend-div">
                    <legend-block text="Close" color="red" text-color></legend-block>
                </div>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf2]');">Show All</button>
        </div>
    </div>
</asp:Content>











