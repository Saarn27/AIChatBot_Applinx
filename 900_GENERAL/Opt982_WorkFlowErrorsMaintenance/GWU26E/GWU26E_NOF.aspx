<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWU26E_NOF.aspx.cs" Inherits="GWU26E_NOF" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
  <div class="headline-container modal-header">
      <h1 class="headline" >WORKFLOW ERROR</h1>
      
      <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
  </div>
<div id="gx_screenArea">
  
<div class="main-area-form main-area-form-modal" id="mainContent"> 
    <div class="column-form related-fields-area" style="margin-bottom:10px">
      <div class="spaced-column">
        <gal-input   label-text="Workflow number:"   label-size="medium" input-size="small" no-description >
          <input id="UWFNUM" runat="server" >
        </gal-input>
        <gal-input   label-text="Workflow type:"   label-size="medium" input-size="large2"  >
          <input id="UWFTYP" runat="server" >
          <input id="UWFTYPN" runat="server" >
        </gal-input>
        <gal-input   label-text="Document number:"   label-size="medium" input-size="medium" no-description >
          <input id="UDOCN" runat="server" >
        </gal-input>
        <gal-input   label-text="Description:"   label-size="medium" input-size="xlarge" no-description >
          <input id="UDSC" runat="server" >
        </gal-input>
        <gal-input   label-text="Open user:"   label-size="medium" input-size="xlarge" no-description >
          <input id="UUSRO" runat="server" >
        </gal-input>
        <gal-input   label-text="Owner:"   label-size="medium" input-size="xlarge" no-description >
          <input id="UOWN" runat="server" >
        </gal-input>
        <gal-input   label-text="Open date:"   label-size="medium" input-size="medium" no-description >
          <input id="UDAT" runat="server" galtype="date" dateformat="dd/mm/y"  >
        </gal-input>
      <div class="centered-flex">
        <gal-input   label-text="Value:"   label-size="medium" input-size="medium" no-description >
          <input id="UVAL" runat="server" >
        </gal-input>
        <gal-input   label-text=""   label-size="xxsmall" input-size="xsmall" no-description >
          <input id="UCUR" runat="server" >
        </gal-input>
      </div>
        <gal-input   label-text="Cost center:"   label-size="medium" input-size="xlarge"  >
          <input id="UCST" runat="server" >
          <input id="UCSTN" runat="server" >
        </gal-input>
        <gal-input   label-text=""   label-size="medium" input-size="xxxxlarge" no-description >
          <input id="RMK" runat="server" >
        </gal-input>
    </div>
  </div>
<div class="message-container message-container-with-btn">
  <span class="invalid-feedback" id="MSG1" runat="server"  ></span>
  <button  class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Approval maintenance</button>
      </div>
    </div>
  </div>
<input id="hiddenField" runat="server" style="display: none;"/>
<script>
   
</script>
</asp:Content>