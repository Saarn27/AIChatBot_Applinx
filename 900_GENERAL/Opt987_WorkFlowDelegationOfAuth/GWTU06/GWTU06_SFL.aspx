<%@ Page MasterPageFile="~/template.master" Inherits="GWTU06_SFL" CodeFile="GWTU06_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DELEGATION OF AUTHORITY</h1>
            </div>


            <div class="table-container"><table id="GWTU06_SFL_1" runat="server" class="table gal6-table-striped" style="width:70%">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input-help input-size="small" no-description>
                                <input  id="SEL1" runat="server" />
                            </gal-input-help>
                            <span>From user</span>

                        </th>
                        <th>
                            <gal-input-help input-size="small" no-description>
                                <input  id="SEL2" runat="server" />
                            </gal-input-help>
                            <span>To user</span>

                        </th>
                        <th>
                            <gal-input-help input-size="small" no-description>
                                <input  id="SEL3" runat="server" />
                            </gal-input-help>
                            <span>Cost center</span>

                        </th>
                        <th>
                            <gal-input input-size="medium"  no-description>
                                <select id="SEL4" runat="server" ></select>
                            </gal-input>
                            <span>Cost element</span>

                        </th>
                        <th>
                            <gal-input input-size="medium"  no-description>
                                <select id="SEL5" runat="server" ></select>
                            </gal-input>
                            <span>Workflow type</span>

                        </th>
                        <th>
                            <gal-input-help input-size="medium" no-description>
                                <input  id="SEL6" runat="server" />
                            </gal-input-help>
                            <span>%Supplier name</span>

                        </th>
                        <th>
                            <div class="centered-flex">
                                <gal-input input-size="xsmall" no-description>
                                    <span  class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title=">,<,=" style="margin-right:10px;"></span>
                                    <select id="SEL7" type="text" runat="server">
                                        <option value=""></option>
                                        <option value=">">></option>
                                        <option value="<"><</option>
                                        <option value="=">=</option>
                                    </select>
                                </gal-input>
                                
                                <gal-input input-size="medium" no-description>
                                    <input id="SEL8" runat="server" />                      
                                </gal-input>
                            </div>
                            <span>Value</span>

                        </th>
                        <th columntype="date">
                            <gal-input  input-size="medium" no-description>
                                <input id="SEL9" runat="server" galtype="date" dateformat="ddmmy" />
                             </gal-input>
                            <span>Actual date</span>

                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
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
                            <span id="actDate_SLADAT" runat="server" galtype="date" dateformat="ddmmy"></span>
                            <action-bar mode="single">
                            </action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg" runat="server"></span>
            </div>
        </div>
    </div>

    
</asp:Content>
