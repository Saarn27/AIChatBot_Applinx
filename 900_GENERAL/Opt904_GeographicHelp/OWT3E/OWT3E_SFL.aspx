<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWT3E_SFL.aspx.cs" Inherits="OWT3E_SFL" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <action-bar mode="multiple">
    </action-bar>
    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]')"></button>
        <h1 class="headline">NAICS HELP</h1>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="table-container">
                <table id="OWT3E_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="STR2_src" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="SEL2_src" runat="server" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="SEL3_src" runat="server" />
                                </gal-input>
                                <span>Industry</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="SEL4_src" runat="server" />
                                </gal-input>
                                <span>System code</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="Code_COD" runat="server"></span></td>
                            <td><span id="Description_DSCL" runat="server"></span></td>
                            <td><span id="Ind_FAT" runat="server"></span></td>
                            <td><span id="Sub_SBB" runat="server"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <%--<div class="message-container message-container-with-btn">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Maintenance</button>
            </div>--%>
        </div>
    </div>
</asp:Content>
