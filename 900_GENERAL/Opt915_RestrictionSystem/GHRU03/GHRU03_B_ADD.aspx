<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRU03_B_ADD.aspx.cs" Inherits="GHRU03_B_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="dynamicTitle_B_HEADER" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input input-size="small" label-size="small" label-text="Zip Code:" no-description>
                            <input id="zipCode_B_ZIP" runat="server" />
                            <span style="margin-left: 10px">OR </span>
                        </gal-input>
                        <gal-input input-size="large" label-size="auto" label-text="State:" no-description>
                            <select id="state_B_STATE" runat="server"></select>
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input input-size="large" label-size="small" label-text="Warehouse:" no-description>
                        <select id="warehouse_B_WHS" runat="server"></select>
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
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
        </div>
    </div>
</asp:Content>
