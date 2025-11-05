<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWT3_SFL.aspx.cs" Inherits="OWT3_SFL" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <action-bar mode="multiple">
        <input id="actionBar" runat="server" />
    </action-bar>
    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]')"></button>
        <h1 class="headline" id="titleDyn_SUB" runat="server"></h1>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="table-container">
                <table id="OWT3_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="ShipTo_STR2" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="DesSrc_SEL2" runat="server" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="col3Src_SEL3" runat="server" />
                                </gal-input>
                                <span id="col3Label_KOT1" runat="server"></span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="col4Src_SEL4" runat="server" />
                                </gal-input>
                                <span id="col4Label_KOT1" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_A_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="Code_COD" runat="server"></span></td>
                            <td><span id="Description_DSCL" runat="server"></span></td>
                            <td><span id="col3_FAT" runat="server"></span></td>
                            <td>
                                <span id="col4_SBB" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMessage_EARA" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Maintenance</button>
            </div>
        </div>
    </div>
</asp:Content>
