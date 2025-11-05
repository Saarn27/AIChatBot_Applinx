<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWT23_SFL3.aspx.cs" Inherits="OWT23_SFL3" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Select</h1>
        <span class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></span>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal">
            <div class="table-container w-100">
                <table id="OWT23_SFL3_1" runat="server" class="table gal6-table-striped w-100">
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
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" onchange="removeSelectionFromGalScreen(event)" checkedvalue="1" />
                            </td>
                            <td>
                                <span id="code_COD" runat="server"></span>
                            </td>
                            <td>
                                <span id="desc_DSL3" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <div class="modal-bottom">
                <button class="btn big-button btn-primary" onclick="gx_SubmitKey('[enter]');">Confirm</button>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <script>
        var lastDescCell = document.getElementById("ctl00_GXPagePlaceHolder_desc_DSL3_009");
        lastDescCell.innerText = lastDescCell.innerText.replace('+', '');
    </script>
</asp:Content>
