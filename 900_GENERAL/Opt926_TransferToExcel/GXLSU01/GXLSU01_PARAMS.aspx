<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXLSU01_PARAMS.aspx.cs" Inherits="GXLSU01_PARAMS" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
  <div class="headline-container modal-header">
      <h1 class="headline" > EXCEL SIMULATION </h1>
      <span class="sub-headline blue-headline" >Enter values</span>
      <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
  </div>
<div id="gx_screenArea">

<div class="main-area-form main-area-form-modal" id="mainContent"> 
    <div class="column-form related-fields-area" style="margin-bottom:10px">
        
      <div class="spaced-column">

      <div class="sub-headline"><span>Parameter</span></div>
          <gal-input    input-size="small2" no-description >
          <input id="PARM1" runat="server" >
        </gal-input>
        <gal-input   input-size="small2" no-description >
          <input id="PARM2" runat="server" >
        </gal-input>
        <gal-input    input-size="small2" no-description >
          <input id="PARM3" runat="server" >
        </gal-input>
        <gal-input    input-size="small2" no-description >
          <input id="PARM4" runat="server" >
        </gal-input>
        <gal-input  input-size="small2" no-description >
          <input id="PARM5" runat="server" >
        </gal-input>
    </div>
      <div class="spaced-column">
      <div class="sub-headline"><span>Operator</span></div>        
          <gal-input input-size="xxsmall" no-description >
          <input id="OPR1" runat="server" >
        </gal-input>
        <gal-input   input-size="xxsmall" no-description >
          <input id="OPR2" runat="server" >
        </gal-input>
        <gal-input  input-size="xxsmall" no-description >
          <input id="OPR3" runat="server" >
        </gal-input>
        <gal-input   input-size="xxsmall" no-description >
          <input id="OPR4" runat="server" >
        </gal-input>
        <gal-input    input-size="xxsmall" no-description >
          <input id="OPR5" runat="server" >
        </gal-input>
    </div>
      <div class="spaced-column">
      <div class="sub-headline"><span>Value</span></div>        
          <gal-input input-size="small2" no-description >
          <input id="VAL1" runat="server" >
        </gal-input>
        <gal-input   input-size="small2" no-description >
          <input id="VAL2" runat="server" >
        </gal-input>
        <gal-input   input-size="small2" no-description >
          <input id="VAL3" runat="server" >
        </gal-input>
        <gal-input   input-size="small2" no-description >
          <input id="VAL4" runat="server" >
        </gal-input>
        <gal-input input-size="small2" no-description >
          <input id="VAL5" runat="server" >
        </gal-input>
    </div>
  </div>
<div class="message-container message-container-with-btn">
  <span class="invalid-feedback" id="MSG_SIM" runat="server"  ></span>
  <button  class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf21]');">Excel</button>
      </div>
<input id="hiddenField" runat="server" style="display: none;"/>
<script>
    

</script>
</asp:Content>