<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU02_CTL.aspx.cs" Inherits="GWTU02_CTL" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

   <div id="gx_screenArea" >
   <div class="command-toolbar" id="hostKeysToolbar" runat="server">
 
   </div>
     <action-bar mode="multiple">
       <input id="actionBar" runat="server" />
    </action-bar>
     <div class="main-content" id="mainContent">
    <div class="headline-container">
      <h1 class="headline" > MAINTENANCE WORKFLOW TYPES </h1>
      <span class="sub-headline blue-headline" >Programs</span>
   </div>
     <div class="table-container">
          <gal-table-header text="Workflow" start-column="2" end-column="3" ></gal-table-header>
         <gal-table-header text="Programs" start-column="4" end-column="10" unite></gal-table-header>
        
      <table id="GWTU02_CTL_1" runat="server" class="table gal6-table-striped ">
        <thead>
          <tr class="grid-header">
           <th class="option-column">
              <input type="checkbox" id="masterCheckBox" />
          </th>
           <th>
               <gal-input-help   label-size="auto" input-size="xsmall" no-description >
                  <input id="SLWF" runat="server" >
               </gal-input-help>
               <span>Type</span>
           </th>
           <th>
             <span>Description</span>

           </th>
           <th>
             <span>Build</span>

           </th>
           <th>
             <span>End</span>

           </th>
           <th>
             <span>Maintenance</span>

           </th>
           <th>
             <span>Inquiry</span>

           </th>
           <th>
             <span>Responsetive user</span>

           </th>
           <th>
               <gal-input  label-size="auto" input-size="xxsmall" no-description >
  <input id="SLTYP" runat="server" >
</gal-input>
             <span>Action type</span>

           </th>
           <th>
             <span>Action type description</span>

           </th>
          </tr>
        </thead>
      <tbody>
        <tr>
         <td class="option-column">
          <input class="row-selector-cell" id="Opt_S" runat="server" />
          <input type="checkbox" galtype="checkbox" />
         </td>
         <td >
          <span id="WFTYP" runat="server"  > </span>
         </td>
         <td >
          <span id="WFDSC" runat="server"  > </span>
         </td>
         <td >
          <span id="BLDPG" runat="server"  > </span>
         </td>
         <td >
          <span id="ENDPG" runat="server"  > </span>
         </td>
         <td >
          <span id="MNTPG" runat="server"  > </span>
         </td>
         <td >
          <span id="INQPG" runat="server"  > </span>
         </td>
         <td >
          <span id="RESU" runat="server"  > </span>
         </td>
         <td >
          <span id="ACTTP" runat="server"  > </span>
         </td>
         <td >
          <span id="ACTTPD" runat="server"  > </span>
          <action-bar mode="single"></action-bar>
         </td>
        </tr>
      </tbody>
    </table>
    <grid-scroller ></grid-scroller>
        <div class="message-container message-container-with-btn">
         <button id="F6_AddBtn" " class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
         <span class="invalid-feedback" id="msg_EARA" runat="server"  ></span>
        </div>
    </div>
            <input style="display: none;" id="pageIndex" runat="server" />
    </div>
  </div>
     <div class="legend-div">
       <legend-block text="Active" color="white" ></legend-block>
      </div>
<input id="hiddenField" runat="server" style="display: none;"/>
<span id="F6_Add" runat="server"  style="display: none;"></span>
<script>
    var F6_Add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F6_Add").innerText.trim() == "";
    var F6_Add_Btn = document.getElementById("F6_AddBtn");
    if (F6_Add_isHidden) {
        F6_Add_Btn.style.display = "none"
    }

</script>
</asp:Content>