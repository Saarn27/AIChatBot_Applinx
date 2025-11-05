<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWCCB_SFL.aspx.cs" Inherits="OWCCB_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Brand Code</h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="table-container">
                <table id="OWCCB_SFL_1" runat="server" class="table gal6-table-striped  ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="brandFilt_STR2" runat="server" />
                                </gal-input>
                                <span>Brand</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="branNameFilt_SEL3" runat="server" />
                                </gal-input>
                                <span>%Brand Name</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="longBranNameFilt_SEL2" runat="server" />
                                </gal-input>
                                <span>%Long Brand Name</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_SLT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="brand_SFLCBBRD" runat="server"></span>
                            </td>
                            <td>
                                <span id="brandName_SFLCBNME" runat="server"></span>
                            </td>
                            <td>
                                <span id="longBranName_SFLCBNMEL" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />

        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />

</asp:Content>
