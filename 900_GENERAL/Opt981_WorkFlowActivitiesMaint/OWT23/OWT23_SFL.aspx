<%@ Page MasterPageFile="~/template.master" Inherits="OWT23_SFL" CodeFile="OWT23_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <span style="font-size: 17px; font-weight: 600;" id="titleT23" runat="server"></span>
        <h1 class="headline" style="margin-right: -8px;">(</h1>
        <h1 class="headline" id="type1" runat="server"></h1>
        <h1 class="headline" style="margin-right: -8px; margin-left: -6px;">/</h1>
        <h1 class="headline" id="type2" runat="server"></h1>
        <h1 class="headline" style="margin-left: -6px;">)</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <%--<div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>--%>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="table-container">
                <table id="customerVentorTypeTable_OWT23" runat="server" class="table gal6-table-striped" style="min-height: 280px">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="codeFiter_SEL2" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="descriptionFilter_SEL3" runat="server" />
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
                                <span id="codeSfl_COD" runat="server"></span>
                            </td>
                            <td>
                                <span id="codeDescSfl_DSL" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" /><br />
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');" data-bs-dismiss="modal">Maintenance</button>
        </div>
    </div>
    <div>
        <input id="hiddenField" runat="server" style="display: none" />
    </div>
</asp:Content>
