<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSQ06_SCR01.aspx.cs" Inherits="TSQ06_SCR01" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">USERS AUTHORIZATION</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input input-size="large" label-size="medium2" label-text="System:" no-description>
                    <select id="system_SYS" runat="server" />
                    <%--<input id="systemDescription_SYSD" runat="server" />--%>
                </gal-input>

                <div class="line"></div>

                <gal-input-help input-size="large" label-size="medium2" label-text="Option code:">
                    <input id="optionCode_OPT" runat="server" />
                    <input id="optionDescription_OPTD" runat="server" />
                </gal-input-help>
                <gal-input-help input-size="large" label-size="medium2" label-text="Sub option code:">
                    <input id="subOptionCode_SOPT" runat="server" />
                    <input id="subOptionDescription_SOPTD" runat="server" />
                </gal-input-help>
                <div class="line"></div>
                <gal-input input-size="xxsmall" label-size="medium2" label-text="Authorization:" no-description>
                    <input id="authorization_AUT" runat="server" />
                </gal-input>
                <gal-input input-size="xxsmall" label-size="medium2" label-text="Authorization not equal:" no-description>
                    <select id="AuthorizationNotEqual_N_AUT" runat="server">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="5">5</option>
                    </select>
                </gal-input>

                <div class="line"></div>
                <gal-input-help input-size="large" label-size="medium2" label-text="Employee number:">
                    <input id="employeeNumber_EMP" runat="server" />
                    <input id="employeeNumberDescription_EMPD" runat="server" />
                </gal-input-help>
                <gal-input-help input-size="large" label-size="medium2" label-text="Factory:">
                    <input id="factory_FAC" runat="server" />
                    <input id="factoryDescription_FACD" runat="server" />
                </gal-input-help>
                <gal-input-help input-size="large" label-size="medium2" label-text="Department:">
                    <input id="department_DEP" runat="server" />
                    <input id="departmentDescription_DEPD" runat="server" />
                </gal-input-help>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>

</asp:Content>
