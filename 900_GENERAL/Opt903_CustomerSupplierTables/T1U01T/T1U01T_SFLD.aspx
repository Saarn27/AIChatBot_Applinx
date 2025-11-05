<%@ Page MasterPageFile="~/template.master" Inherits="T1U01T_SFLD" CodeFile="T1U01T_SFLD.aspx.cs" Language="C#" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id ="title" runat="server"></h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="T1U01T_SFLD_1" runat="server" style="width: 100%" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Code</span>
                                </th>
                             
                                <th>
                                    <span>Short description</span>
                                </th>
                                <th>
                                    <span>Long description</span>
                                </th>
                                <th>
                                    <span>System</span>
                                </th>
                                  <th columnType="price">
                                <span id="taxColTitle" runat="server"></span>
                            </th>
                                <th>
                                    <span>User</span>
                                </th>
                                 <th>
                                    <span> Update date</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span id="code_AT1KEY" runat="server"></span></td>
                                <td><span id="shortDescription_AT1DSC" runat="server"></span></td>
                                <td><span id="longDescription_AT1DSCL" runat="server"></span></td>
                                <td><span id="imc_AT1IMC" runat="server"></span></td>
                                <td columntype="price"><span id="tax_AT1TAX" runat="server"></span></td>
                                <td><span id="user_AT1USR" runat="server"></span></td>
                                <td><span id="updateDate_AT1TUPD" runat="server"></span></td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                </div>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_ERRD" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
