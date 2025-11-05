<%@ Page MasterPageFile="~/template.master" Inherits="GHQ03W_SFL0" CodeFile="GHQ03W_SFL0.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">CUMMULATIVE HOLDS</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">

            <div class="table-container"><table id="GHQ03W_SFL0_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <span>Entity</span>
                        </th>
                        <th style="width: 300px">
                            <span>Entity Description</span></th>
                        <th style="width: 100px">
                            <span>Records</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_SEL" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="enetity_BENT" runat="server"></span></td>
                        <td><span id="entityDescription_BENTN" runat="server"></span></td>
                        <td><span id="records_BNUM" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
