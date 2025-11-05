<%@ Page MasterPageFile="~/template.master" Inherits="T0U01HO_SFL" CodeFile="T0U01HO_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="action" runat="server" />          
        </action-bar>
        <div class="main-content" id="mainContent">
             <div class="headline-container">
                <h1 class="headline"> COUNTRY OF EXPORT - % OF CUSTOM </h1>      
            </div>
            <div class="table-container">
                <table id="T0U01HO_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="coo_SEL1" runat="server" />
                                </gal-input>
                                <span>Country Of Origin</span>
                            </th>
                            <th style="width:250px;">                                
                                <span>Country Of Origin description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="harm_SEL2" runat="server" />
                                </gal-input>
                                <span>Harmonize code</span>
                            </th>
                            <th>
                               <gal-input input-size="medium" no-description>
                                    <input id="harmonize_SEL3" runat="server" />
                                </gal-input>
                                <span>Harmonize</span>
                            </th>
                            <th>
                                <span>Harmonize description</span>
                            </th>
                            <th>
                                <span>%Custom</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="coo_COOC" runat="server"></span></td>
                            <td><span id="cooName_COOCD" runat="server"></span></td>            
                            <td><span id="harm_HARMC" runat="server"></span></td>                  
                            <td><span id="harmonize_HARMN" runat="server"></span></td>
                            <td><span id="desc_HARMD" runat="server"></span></td> 
                            <td><span id="custm_CSCS" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>                
                 <div class=" message-container message-container-with-btn">               
                <button type="button" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
            </div>
                </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
