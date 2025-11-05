<%@ Page MasterPageFile="~/template.master" Inherits="TSLQ02_SLT" CodeFile="TSLQ02_SLT.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">User Tracking</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <gal-input label-text="From date:" label-size="small" input-size="medium" no-description>
                <input id="fromDate_B_TSLTTRNF" galtype="date" dateformat="ddmmyy" runat="server" />
            </gal-input>
            <gal-input label-text="To date:" label-size="small" input-size="medium" no-description>
                <input id="toDate_B_TSLTTRNT" galtype="date" dateformat="ddmmyy" runat="server" />
            </gal-input>
             <gal-input label-text="Option:" label-size="small" input-size="large" no-description>
                <select id="option_BOPT" runat="server" >
                    <option value="1">1=Not at work but active</option>
                    <option value="2">2=Using other locations</option>
                </select>
            </gal-input>
        </div>
               <div class="modal-bottom">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
    </div>
</asp:Content>
