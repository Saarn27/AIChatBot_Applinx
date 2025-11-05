<%@ Page MasterPageFile="~/template.master" Inherits="T0U01_SFL2D" CodeFile="T0U01_SFL2D.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
                <span class="blue-headline sub-headline" id="type_TYP" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="sub-headline blue-headline">** Delete Confirmation **</span>
            </div>
            <div class="table-container">
                <table id="T0U01_SFL2D_1" runat="server" class="table gal6-table-striped no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Code</span>
                            </th>
                            <th style="width: 270px">
                                <span>Short description</span>
                            </th>
                            <th style="width: 590px">
                                <span>Long description</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="tableCode_COD" runat="server"></span></td>
                            <td><span id="shortDesc_SDS" runat="server"></span></td>
                            <td><span id="longDescription_DSC" runat="server"></span></td>
                            <td><span id="imc_IMC" runat="server"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="errorMessege_EARA1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <script>
        var title = document.getElementById('ctl00_GXPagePlaceHolder_title_TITLE');
        console.log(title);
        title.innerText = title.innerText.replace("GRP", "Group");
    </script>
</asp:Content>
