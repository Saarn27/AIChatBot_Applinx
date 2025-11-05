<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWU26E_2.aspx.cs" Inherits="GWU26E_2" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
  <div class="headline-container modal-header">
      <h1 class="headline" > WORKFLOW ERROR </h1>
      
      <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
  </div>
<div id="gx_screenArea">
    
<div class="main-area-form main-area-form-modal" id="mainContent"> 
    <div class="column-form related-fields-area" style="margin-bottom:10px">
      <div class="spaced-column">
        <gal-input   label-text="Workflow number:"   label-size="medium" input-size="small2" no-description >
          <input id="UWFNUM" runat="server" >
       
        </gal-input>
        <gal-input   label-text="Workflow type:"   label-size="medium" input-size="xlarge"  >
          <input id="UWFTYP" runat="server" >
          <input id="UWFTYPN" runat="server" >
        </gal-input>
        <gal-input   label-text="Document number:"   label-size="medium" input-size="medium" no-description >
          <input id="UDOCN" runat="server" >
        </gal-input>
        <gal-input   label-text="Description:"   label-size="medium" input-size="medium" no-description >
          <input id="UDSC" runat="server" >
        </gal-input>
        <gal-input   label-text="Open user:"   label-size="medium" input-size="medium" no-description >
          <input id="DSCRO" runat="server" >
        </gal-input>
        <gal-input   label-text="Owner:"   label-size="medium" input-size="medium" no-description >
          <input id="UOWN" runat="server" >
        </gal-input>
        <gal-input   label-text="Open Date:"   label-size="medium" input-size="medium" no-description >
          <input id="UDAT" runat="server" galtype="date" dateformat="dd/mm/y"  >
        </gal-input>
        <gal-input   label-text="Value:"   label-size="medium" input-size="medium"  >
          <input id="UVAL" runat="server" >
          <input id="UCUR" runat="server" >
        </gal-input>
        <gal-input   label-text="Cost center:"   label-size="medium" input-size="xxlarge"  >
          <input id="UCST" runat="server" >
          <input id="UCSTD" runat="server" >
        </gal-input>
      <div class="sub-headline"><span>ERRORS</span></div>      <div class="centered-flex">
        <gal-input   label-text=""   label-size="xxsmall" input-size="xxsmall" no-description >
          <input id="OPT2_1" runat="server" >
        </gal-input>
        <gal-input   label-text=""   label-size="xxsmall" input-size="xxlarge" no-description >
          <input id="URMK_1" runat="server" >
        </gal-input>
      </div>
      <div class="centered-flex">
        <gal-input   label-text=""   label-size="xxsmall" input-size="xxsmall" no-description >
          <input id="OPT2_2" runat="server" >
        </gal-input>
        <gal-input   label-text=""   label-size="xxsmall" input-size="xxlarge" no-description >
          <input id="URMK_2" runat="server" >
        </gal-input>
      </div>
      <div class="centered-flex">
        <gal-input   label-text=""   label-size="xxsmall" input-size="xxsmall" no-description >
          <input id="OPT2_3" runat="server" >
        </gal-input>
        <gal-input   label-text=""   label-size="xxsmall" input-size="xxlarge" no-description >
          <input id="URMK_3" runat="server" >
        </gal-input>
      </div>
        <gal-input   label-text=""   label-size="xxsmall" input-size="xxlarge" no-description >
          <input id="RMK" runat="server" >
        </gal-input>
    </div>
  </div>
<div class="message-container ">
  <span class="invalid-feedback"   ></span>
      </div>
    </div>
  </div>
<input id="hiddenField" runat="server" style="display: none;"/>
<script>
   
</script>
</asp:Content>