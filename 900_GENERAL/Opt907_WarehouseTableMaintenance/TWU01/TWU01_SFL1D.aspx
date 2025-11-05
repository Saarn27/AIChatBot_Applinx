<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_SFL1D" CodeFile="TWU01_SFL1D.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Warehouse Table Delete Confirmation</h1>
            </div>
            
            <%--Subfile table--%>
            <gal-table-header text="CODES" start-column="3" end-column="9" ></gal-table-header>
           <div class="table-container"><table id="warehouseTable_SFL1D" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <%--Table headers and selections--%>
                        <th><span>Warehouse</span></th>
                        <th><span>%Description</span></th>
                        <th><span>Part of stock</span></th>
                        <th><span>Display</span></th>
                        <th><span>Type</span></th>
                        <th><span>Sys</span></th>
                        <th><span>Receipt</span></th>
                        <th><span>Planning</span></th>
                        <th><span>ATP</span></th>
                        <th><span>Sort</span></th>
                        <th columnType="primaryNumber"><span>Customer number</span></th>
                        <th columnType="date"><span>Update date</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%--Table column data--%>
                        <td><span id="cod_COD" runat="server"></span></td>
                        <td><span id="whsDes_SDS" runat="server"></span></td>
                        <td><span id="partOfStk_PART" runat="server"></span></td>
                        <td><span id="disp_DISP" runat="server"></span></td>
                        <td><span id="type_TYPE" runat="server"></span></td>
                        <td><span id="imc_CONTRO" runat="server"></span></td>
                        <td><span id="rcv_IMC" runat="server"></span></td>
                        <td><span id="plan_RECEIP" runat="server"></span></td>
                        <td><span id="atp_PLAN" runat="server"></span></td>
                        <td><span id="sort_SORT" runat="server"></span></td>
                        <td columnType="primaryNumber"><span id="custNo_CUST" runat="server"></span></td>
                        <td columnType="date"><span id="update_UPDDAT" runat="server"></span></td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
            <%--Error message at the bottom of the screen--%>
            <div class="message-container message-container-with-btn" style="padding-bottom: 15px;">
                <span class="invalid-feedback" id="msg_EARAD" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');" style="margin-right: 15px; margin-bottom: 15px;" data-bs-dismiss="modal">Delete</button>
            </div>
            
        </div>
    </div>
</asp:Content>