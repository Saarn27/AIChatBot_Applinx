<%@ Page MasterPageFile="~/template.master" Inherits="T0U01_SFL" CodeFile="T0U01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">GENERAL TABLES FOR ITEMS</h1>
                <span class="blue-headline sub-headline" id="tableType_TYP" runat="server"></span>
            </div>
            <div class="table-container">
                <table id="T0U01_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>Code</span>
                            </th>
                            <th style="width: 200px">
                                <span>Short description</span>
                            </th>
                            <th style="width: 500px">
                                <span>Long description</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="selectOption_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="tableCode_COD" runat="server"></span></td>
                            <td><span id="shortDesc_SDS" runat="server"></span></td>
                            <td><span id="longDescription_DSC" runat="server"></span></td>
                            <td><span id="imc_IMC" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="errorMessege_EARA1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <%--<script> // temporary
        function pageOnLoad(gx_event) {
            var checkBoxInput = document.querySelectorAll("td[class='option-column'] input[type='text']");
   
            if (checkBoxInput) {
                for (var i = 0; i < checkBoxInput.length; i++) {
                    checkBoxInput[i].value = "";
                }
            }
        }
    </script>--%>
</asp:Content>
