<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GSU05_ADD.aspx.cs" Inherits="GSU05_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">SHIPPING METHOD-COST</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal rela" id="mainContent">
            <div class="related-fields-area">
                <gal-input-help label-size="medium" label-text="Courier code:" input-size="small" help no-description>
                    <input id="courierCode_ACOD" runat="server" /> 
                </gal-input-help>
                <gal-input label-size="medium" label-text="Courier name:" input-size="xlarge" no-description>
                    <input id="courierName_ADSC" runat="server" />
                </gal-input>
                <gal-input label-size="medium" label-text="Weight in Kgs:" input-size="small" no-description>
                    <input id="weightInKgs_KGE" runat="server" />
                </gal-input>
                <gal-input label-size="medium" label-text="Cost value:" input-size="small" no-description>
                    <input id="costValue_VALE" runat="server" />
                </gal-input>
                 <gal-input label-size="medium" label-text="Subsidiary cost:" input-size="small" no-description>
                    <input id="subsidiaryCost_VALES" runat="server" />
                </gal-input>
               
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>
    </div>
</asp:Content>
