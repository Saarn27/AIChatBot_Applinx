<%@ Page MasterPageFile="~/template.master" Inherits="TSU01_CNF" CodeFile="TSU01_CNF.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">Massive Multy Company Update</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input no-description>
                        <span>This action will massively update the file TSP.</span>
                        <br />
                        <span>Are you sure?</span>
                    </gal-input>
                </div>
            </div>
        </div>
               <div class="modal-bottom">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
    </div>
</asp:Content>
