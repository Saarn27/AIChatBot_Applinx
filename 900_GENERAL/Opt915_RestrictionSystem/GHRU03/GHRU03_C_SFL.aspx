<%@ Page MasterPageFile="~/template.master" Inherits="GHRU03_C_SFL" CodeFile="GHRU03_C_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" >Delete Confirmation</h1>       
            </div>
            <div class="table-container"><table id="GHRU03_C_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th>
                            <span>Zip Code</span>
                        </th>
                        <th>
                            <span>State</span>
                        </th>
                        <th>
                            <span>State Description</span>
                        </th>
                        <th>
                            <span >Warehouse</span>
                        </th>
                        <th>
                            <span>Warehouse Description</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span id="zipCode_A_ZIP" runat="server"></span></td>
                        <td><span id="state_A_STATE" runat="server"></span></td>
                        <td><span id="stateDescription_A_STATED" runat="server"></span></td>
                        <td><span id="warehouse_A_WHS" runat="server"></span></td>
                        <td><span id="warehouseDescription_A_WHSD" runat="server"></span>
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
