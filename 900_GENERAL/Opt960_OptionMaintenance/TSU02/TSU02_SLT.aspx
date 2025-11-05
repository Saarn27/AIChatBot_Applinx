<%@ Page MasterPageFile="~/template.master" Inherits="TSU02_SLT" CodeFile="TSU02_SLT.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">Personal Menu Program Maintenance</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input-help label-size="auto" input-size="large" label-text="User:" no-description>
                            <input id="user_USR" runat="server"/>
                        </gal-input-help>
                        <gal-input label-size="auto" input-size="medium" label-text="Or:" no-description>
                            <select id="DWM" onchange="putValueInInput(event)">
                                <option value=""> </option>
                                <option value="D">D=Daily process</option>
                                <option value="W">W=Weekly process</option>
                                <option value="M">M=Monthly Process</option>
                            </select>
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf5]');">Copy</button>
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf23]');">Delete</button>
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>

    </div>
    <script>
        function putValueInInput(event) {
            if (event.target.value != "") {
                document.querySelector("#ctl00_GXPagePlaceHolder_user_USR").value = event.target.value;
                gx_SubmitKey("[enter]");
            }
        }
    </script>
</asp:Content>
