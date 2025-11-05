<%@ Page MasterPageFile="~/template.master" Inherits="GSU25_ADD" CodeFile="GSU25_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">USER LIMITATION</h1>
        <span id="mode" class="sub-headline no-color blue-headline" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal">
            <div style="width: fit-content">
                <div class="column-form">
                    <div class="spaced-column related-fields-area" style="margin-right: 0">
                        <gal-input input-size="small" label-size="medium" label-text="User type:" no-description>
                            <select id="userType_AUSRTYP" runat="server">
                                <option value=""></option>
                                <option value="U">User</option>
                                <option value="R">Role</option>
                                <option value="G">Group</option>
                            </select>
                        </gal-input>
                        <gal-input-help input-size="xlarge" label-size="medium" label-text="User:">
                            <input id="user_AUSR" runat="server" />
                            <input id="userName_AUSRD" runat="server" />
                        </gal-input-help>
                        <gal-input input-size="large" label-size="medium" label-text="Product group:" no-description>
                            <select id="productGroup_APRGRP" runat="server"></select>
                        </gal-input>
                        <gal-input input-size="large" label-size="medium" label-text="Line:" no-description>
                            <select id="line_APRGRPL" runat="server"></select>
                        </gal-input>
                        <gal-input input-size="large" label-size="medium" label-text="Item type:" no-description>
                            <select id="itemType_AITMTYP" runat="server"></select>
                        </gal-input>
                        <gal-input input-size="small" label-size="medium" label-text="Update date:" no-description>
                            <input id="lastUpdate_ATUPD" runat="server" galtype="date" dateformat="ddmmyy"/>
                        </gal-input>
                        <gal-input input-size="xlarge" label-size="medium" label-text="Update user:">
                            <input id="updateUser_AUSRU" runat="server" />
                            <input id="updateUserName_AUSRUD" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errorMessage_MSGA" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');" id="F10Button"><span id="F10" runat="server" class="no-color"></span></button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />

    </div>
    <script>
        mode = document.getElementById("ctl00_GXPagePlaceHolder_mode");
        f10Button = document.getElementById("F10Button");
        if (mode.innerText.trim() == "DISPLAY") {
            f10Button.style.display = "none";
        }
        if (mode.innerText.trim() == "COPY" || mode.innerText.trim() == "ADD") {
            f10Button.innerText = "Add";
        }
        if (mode.innerText.trim() == "UPDATE") {
            f10Button.innerText = "Update";
        }

    </script>

</asp:Content>
