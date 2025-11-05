<%@ Page MasterPageFile="~/template.master" Inherits="OWTSP_SFL" CodeFile="OWTSP_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <%--Define headline--%>      
    <div class="headline-container modal-header">
       <h1 class="headline" id="headline_TITLE" runat="server"></h1>
       <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
   </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <%-- <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div> --%>

        <div class="main-area-form main-area-form-modal" id="mainContent">
           
            <%--screen system filter--%>
            <gal-input-help label-text="System:" label-size="xsmall" input-size="large">
                <input id="system_STR1" runat="server" />
                <input id="systemDesc_SYSDSC" runat="server" />
            </gal-input-help>
           

            <%--Subfile table--%>
           <div class="table-container"><table id="OWTSP_sflTable" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <%--Table headers and selections--%>
                        <th>
                            <gal-input input-size="small" no-description>
                                <input  id="selectMod_STR2" runat="server" />
                            </gal-input>
                            <span>Module code</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="selectDesc_SEL1" runat="server" />
                            </gal-input>
                            <span>Module description</span>
                        </th>
                        <th columnType="qty">
                            <gal-input input-size="small" no-description>
                                <input id="selectOption_STR3" runat="server" />
                            </gal-input>        
                            <span>Option number</span>
                            
                        </th>
                        <th columnType="qty">
                            <gal-input input-size="xsmall" no-description>
                                <input id="selectSubOption_STR4" runat="server" />
                            </gal-input>
                            <span>Sub-Option</span>
                        </th>
                       <th>
                            <gal-input input-size="xlarge" no-description>
                                <input id="selectLongDesc_SEL2" runat="server" />
                            </gal-input>
                            <span>%Description</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%--Table column data--%>
                        <td><span id="ModCol_MODCOD" runat="server"></span></td>
                        <td><span id="ModDescCol_MODDSC" runat="server"></span></td>
                        <td columnType="qty"><span id="optionCol_OCOD" runat="server"></span></td>
                        <td columnType="qty"><span id="SubOptionCol_BCOD" runat="server"></span></td>
                        <td><span id="longDescriptionCol_DSCL" runat="server"></span></td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
            <%-- Subfile Colors --%>
            <div class="legend-div">
                <legend-block text="Not Active" color="white"></legend-block>
            </div>
            <%--Buttons--%>
            <div class="modal-bottom">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Maintenance</button>
            </div>
        </div>
    </div>

</asp:Content>
