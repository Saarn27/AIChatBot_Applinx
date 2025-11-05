<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSQ01_OPN.aspx.cs" Inherits="TSQ01_OPN" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Title_TITLEO" runat="server"></h1>

            </div>
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Company:" label-size="medium2" input-size="large">
                        <input id="Company_CMPO" runat="server">
                        <input id="Companydes_CMPDESO" runat="server">
                    </gal-input>
                    <gal-input label-text="System:" label-size="medium2" input-size="medium" no-description>
                        <select id="System_SYSO" runat="server"></select>
                    </gal-input>
                    <gal-input-help label-text="Module:" label-size="medium2" input-size="large2">
                        <input id="Module_MODO" runat="server">
                        <input id="Moduledes_MODDESO" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="User:" label-size="medium2" input-size="large2">
                        <input id="User_USRCODEO" runat="server">
                        <input id="Userdes_USERDESO" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Employee number:" label-size="medium2" input-size="xlarge">
                        <input id="EmployeeNo_EMPO" runat="server">
                        <input id="EmployeeNodes_EMPNAMEO" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Factory:" label-size="medium2" input-size="large2">
                        <input id="Factory_FACO" runat="server">
                        <input id="Factorydes_FACDO" runat="server">
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input-help label-text="Factory not equal :" label-size="medium2" input-size="xsmall" no-description>
                            <input id="FactNotEqual_FAC_N1O" runat="server">
                        </gal-input-help>
                        <div class="grp1-cont" style="display: none">
                            <gal-input-help input-size="xsmall" no-description>
                                <input id="FactNotEqual_FAC_N2O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp1-cont" style="display: none">
                            <gal-input-help input-size="xsmall" no-description>
                                <input id="FactNotEqual_FAC_N3O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp1-cont" style="display: none">
                            <gal-input-help input-size="xsmall" no-description>
                                <input id="FactNotEqual_FAC_N4O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp1-cont" style="display: none">
                            <gal-input-help input-size="xsmall" no-description>
                                <input id="FactNotEqual_FAC_N5O" runat="server">
                            </gal-input-help>
                        </div>
                        <button style="margin-top:-6px" class="active add-select" onclick="openNewSelect('grp1-cont',event)"></button>
                    </div>
                    <gal-input-help label-text="Department:" label-size="medium2" input-size="xlarge">
                        <input id="Department_DEPO" runat="server">
                        <input id="Departmentdes_DEPDO" runat="server">
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input-help label-text="Department not equal :" label-size="medium2" input-size="small" no-description>
                            <input id="DeptNotEqual_DEP_N1O" runat="server">
                        </gal-input-help>
                        <div class="grp2-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="DeptNotEqual_DEP_N2O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp2-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="DeptNotEqual_DEP_N3O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp2-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="DeptNotEqual_DEP_N4O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp2-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="DeptNotEqual_DEP_N5O" runat="server">
                            </gal-input-help>
                        </div>
                        <button style="margin-top:-6px" class="active add-select" onclick="openNewSelect('grp2-cont',event)"></button>
                    </div>
                    <div class="centered-flex flex-wrap" style="max-width:900px">
                        <gal-input-help label-text="Options:" label-size="medium2" input-size="small" no-description>
                            <input id="Options_OPT1O" runat="server">
                        </gal-input-help>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT2O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT3O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT4O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT5O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none;margin-left:193px">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT6O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT7O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT8O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT9O" runat="server">
                            </gal-input-help>
                        </div>
                        <div class="grp3-cont" style="display: none">
                            <gal-input-help input-size="small" no-description>
                                <input id="Options_OPT10O" runat="server">
                            </gal-input-help>
                        </div>
                        <button style="margin-top:-6px" class="active add-select" onclick="openNewSelect('grp3-cont',event)"></button>
                    </div>
                    <div class="centered-flex">
                        <gal-input label-text="Authorities:" label-size="medium2" input-size="xxsmall" no-description>
                            <select id="Authorities_AUT1O" runat="server">
                                <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="" label-size="auto" input-size="xxsmall" no-description>
                            <select id="Authorities_AUT2O" runat="server">
                                <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="" label-size="auto" input-size="xxsmall" no-description>
                            <select id="Authorities_AUT3O" runat="server">
                                <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </gal-input>
                    </div>
                    <gal-input label-text="Sub options:" label-size="medium2" input-size="medium" no-description>
                        <gx:GXCheckBox ID="SubOptions_INCLD_SBO" CheckedValue="Y" UncheckedValue="" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSGO" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

        checkSelectValue('grp3-cont', 'input');
        checkSelectValue('grp2-cont', 'input');
        checkSelectValue('grp1-cont', 'input');

</script>
</asp:Content>
