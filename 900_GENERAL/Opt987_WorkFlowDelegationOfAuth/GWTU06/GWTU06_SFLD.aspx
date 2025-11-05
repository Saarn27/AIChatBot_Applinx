<%@ Page MasterPageFile="~/template.master" Inherits="GWTU06_SFLD" CodeFile="GWTU06_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DELEGATION OF AUTHORITY - DELETION CONFIRMATION</h1>
            </div>


            <div class="table-container"><table id="GWTU06_SFLD_1" runat="server" class="table gal6-table-striped" style="width:70%">
                <thead>
                    <tr class="grid-header">
                        <th><span>User from</span></th>
                        <th><span>User to</span></th>
                        <th><span>Cost center</span></th>
                        <th><span>Cost element</span></th>
                        <th><span>Workflow type</span></th>
                        <th><span>Supplier name</span></th>
                        <th><span>Value</span></th>
                        <th columntype="date"><span>Actual date</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <span id="userFrom_SLUSRF" runat="server"></span>
                        </td>
                        <td>
                            <span id="userTo_SLUSRT" runat="server"></span>
                        </td>
                        <td>
                            <span id="costCenter_SLCSTC" runat="server"></span>
                        </td>
                        <td>
                            <span id="costELEM_SLCSTE" runat="server"></span>
                        </td>
                        <td>
                            <span id="wfTyp_SLWFT" runat="server"></span>
                        </td>
                        <td>
                            <span id="supplierName_SLSUPN" runat="server"></span>
                        </td>
                        <td>
                            <span id="value_SLSUM" runat="server"></span>
                        </td>
                        <td columntype="date">
                            <span id="actDate_SLADAT" runat="server"></span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
            </div>
        </div>
    </div>

    
</asp:Content>
