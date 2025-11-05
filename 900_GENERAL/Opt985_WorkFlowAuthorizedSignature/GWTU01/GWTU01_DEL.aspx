<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU01_DEL.aspx.cs" Inherits="GWTU01_DEL" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

   <div id="gx_screenArea" >
   <div class="command-toolbar" id="hostKeysToolbar" runat="server">
 
   </div>
     <div class="main-content" id="mainContent">
    <div class="headline-container">
      <h1 class="headline" > APPROVED SIGNATORY MAINTENANCE</h1>
      <span class="sub-headline blue-headline" >Delete Confirmation</span>
   </div>

     <div class="table-container">
      <table id="GWTU01_DEL_1" runat="server" class="table gal6-table-striped less-padding-table  no-selection-table">
        <thead>
          <tr class="grid-header">
           <th>
             <span>User</span>

           </th>
           <th>
             <span>Name</span>

           </th>
           <th>
             <span>Cost center</span>

           </th>
           <th columntype="primaryNumber">
             <span>Cost element</span>

           </th>
           <th columntype="primaryNumber">
             <span>Value</span>

           </th>
          </tr>
        </thead>
      <tbody>
        <tr>
         <td >
          <span id="USR" runat="server"  > </span>
         </td>
         <td >
          <span id="USRNM" runat="server"  > </span>
         </td>
         <td >
          <span id="CSTCNT" runat="server"  > </span>
         </td>
         <td columntype="primaryNumber">
          <span id="CSTELM" runat="server"  > </span>
         </td>
         <td columntype="primaryNumber">
          <span id="SUM" runat="server"  > </span>
         </td>
        </tr>
      </tbody>
    </table>
    <grid-scroller ></grid-scroller>
         <div class="message-container message-container-with-btn">
  <span class="invalid-feedback"   ></span>
  <button  class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
      </div>
</div>
<input style="display: none;" id="pageIndex" runat="server" />

    </div>
  </div>
<input id="hiddenField" runat="server" style="display: none;"/>
<script>
    checkSelectValue('grp20-cont', 'input');

</script>
</asp:Content>