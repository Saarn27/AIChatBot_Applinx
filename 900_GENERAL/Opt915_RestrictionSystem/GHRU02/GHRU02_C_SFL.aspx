<%@ Page MasterPageFile="~/template.master" Inherits="GHRU02_C_SFL" CodeFile="GHRU02_C_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" >Delete Confirmation</h1>       
            </div>
            <div class="table-container"><table id="GHRU02_C_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th style="width:300px">
                            <span>Order Warehouse</span>
                        </th>
                        <th style="width:500px">
                            <span>Description</span>
                        </th>
                        <th style="width:300px">
                            <span>Priority</span>
                        </th>
                        <th style="width:300px">
                            <span >Alternative Warehouse</span>
                        </th>
                        <th style="width:500px">
                            <span>Description</span>
                        </th>
                        <th style="width:300px">
                            <span>Action Code</span>
                        </th>
                        <th style="width:500px">
                            <span>User</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span id="ordWhs_A_WHS" runat="server"></span></td>
                        <td><span id="description_A_WHSD" runat="server"></span></td>
                        <td><span id="priority_A_PRI" runat="server"></span></td>
                        <td><span id="altWhs_A_AWHS" runat="server"></span></td>
                        <td><span id="description_A_AWHSD" runat="server"></span></td>
                        <td><span id="actCode_A_ACOD" runat="server"></span></td>
                        <td><span id="user_A_USER" runat="server"></span>
                        </td>
                    </tr>                  
                </tbody>
            </table> 
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
            </div>
        </div>
    </div>
</asp:Content>
