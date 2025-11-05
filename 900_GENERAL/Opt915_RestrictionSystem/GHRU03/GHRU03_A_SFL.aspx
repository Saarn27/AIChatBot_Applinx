<%@ Page MasterPageFile="~/template.master" Inherits="GHRU03_A_SFL" CodeFile="GHRU03_A_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" >Zip Code/State - Warehouse</h1>       
            </div>
            <div class="table-container"><table id="GHRU03_A_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="zipCode_S_ZIP" runat="server"/>
                            </gal-input>
                            <span>%Zip Code</span>
                        </th>
                        <th>
                            <gal-input input-size="xsmall" no-description>
                                <select id="state_S_STATE" runat="server"></select>
                            </gal-input>
                            <span>%State</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <input id="stateDescription_S_STATED" runat="server"/>
                            </gal-input>
                            <span>%State Description</span>
                        </th>
                        <th>
                            <gal-input  input-size="xsmall" no-description>
                                <select id="warehouse_S_WHS" runat="server"></select>
                            </gal-input>
                            <span >Warehouse</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <input id="warehouseDescription_S_WHSD" runat="server"/>                              
                            </gal-input>
                            <span>%Warehouse Description</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_A_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="zipCode_A_ZIP" runat="server"></span></td>
                        <td><span id="state_A_STATE" runat="server"></span></td>
                        <td><span id="stateDescription_A_STATED" runat="server"></span></td>
                        <td><span id="whs_A_WHS" runat="server"></span></td>
                        <td><span id="whsDescription_A_WHSD" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>                  
                </tbody>
            </table> 
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_A_MSG" runat="server"></span>
            </div>                 
        </div>
        <input id="hiddenField" runat="server" style="display:none;" />
    </div>
</asp:Content>
