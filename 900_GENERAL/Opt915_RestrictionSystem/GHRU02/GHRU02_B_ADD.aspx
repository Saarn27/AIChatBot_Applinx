<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRU02_B_ADD.aspx.cs" Inherits="GHRU02_B_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="dynamicTitle_B_HEADER" runat="server"></h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="large" label-size="large" label-text="Order Warehouse:" no-description>
                        <select id="orderWhs_B_WHS" runat="server"></select>
                    </gal-input>
                    <gal-input input-size="large" label-size="large" label-text="Alternative Warehouse:" no-description>
                        <select id="altWhs_B_AWHS" runat="server"></select>
                    </gal-input>
                    <gal-input input-size="xsmall" label-size="large" label-text="Priority:" no-description>
                        <input id="priority_B_PRI" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="small" label-size="large" label-text="Action Code:" no-description>
                        <input id="actCode_B_ACOD" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="medium" label-size="small" label-text="Update Date:" no-description>
                        <input id="updateDate_B_GHRTOP" runat="server" />
                    </gal-input>
                    <gal-input input-size="large" label-size="small" label-text="Update User:">
                        <input id="updateUser_B_USER" runat="server" />
                        <input id="userDescription_B_USERD" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_B_MSG" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" id="F10Button" runat="server" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
        </div>
        <div style="display:none" id="DynamicF10" runat="server"></div>
    </div>
</asp:Content>
