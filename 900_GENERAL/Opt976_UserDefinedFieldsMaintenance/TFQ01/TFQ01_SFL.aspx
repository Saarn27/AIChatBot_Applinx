<%@ Page MasterPageFile="~/template.master" Inherits="TFQ01_SFL" CodeFile="TFQ01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">DEFINE FIELD TABLE</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
  
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="table-container"  style =" width:100%">
                <table id="TFQ01_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                              <th>
                           <gal-input input-size="small" no-description>
                                    <input id="fielS_SEL2" runat="server">
                                </gal-input>
                                <span>File</span>
                                                                </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="key1S_SEL3" runat="server">
                                </gal-input>
                                <span>%Key1</span>
                            </th>
                            <th>
                               <gal-input input-size="medium" no-description>
                                    <input id="descS_SEL4" runat="server">
                                </gal-input>
                                <span>%Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                     <td>
                                <span  id="file_COD" runat="server"></span>
                            </td>
                            <td>
                                <span id="key1_KEY1" runat="server"></span>
                            </td>
                            <td>
                                <span id="description_DNAM" runat="server"></span>
      
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <grid-scroller></grid-scroller>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
  
    </div>
</asp:Content>
