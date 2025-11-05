<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWT0_SFL2.aspx.cs" Inherits="OWT0_SFL2" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="title_KOT2" runat="server"></h1>
        <span class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></span>
    </div>
    <div id="gx_screenArea">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal">
            <gal-input label-text="search:" label-size="auto" input-size="large" no-description>
                <input id="filter_SEL8" runat="server" placeholder="%search"/>
            </gal-input>
            <div class="table-container w-100">
                <table id="OWT0_SFL2_1" runat="server" class="table gal6-table-striped w-100">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>Code</span>
                            </th>
                            <th style="width: 200px">
                                <span>Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_SEL" runat="server" />
                                <input type="checkbox" galtype="checkbox" onchange="removeSelectionFromGalScreen(event)" checkedvalue="1" />
                            </td>
                            <td>
                                <span id="code_COD" runat="server"></span>
                            </td>
                            <td>
                                <span id="desc_SDS2" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_ERR" runat="server"></span>
                <button class="btn big-button btn-primary" onclick="gx_SubmitKey('[enter]');">Confirm</button>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" /><br />
        </div>
    </div>
</asp:Content>
