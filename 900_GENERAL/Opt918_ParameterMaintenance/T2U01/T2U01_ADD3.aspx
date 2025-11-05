<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U01_ADD3.aspx.cs" Inherits="T2U01_ADD3" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">PARAMETER MAINTENANCE</h1>
                <span class="sub-headline blue-headline" id="type_MODE_3" runat="server"></span>
            </div>
            <div class="wrapper-container">
                <div class="column-form">
                    <div class="spaced-column related-fields-area w-100" style="margin-right: 0px;">
                        <div class="centered-flex">
                            <gal-input-help input-size="large" label-size="small" label-text="System:">
                                <input id="systemCode_ASYS" runat="server" />
                                <input id="systemDesc_AS_DSC" runat="server" />
                            </gal-input-help>
                            <gal-input label-size="auto" input-size="small" label-text="IMC:" no-description>
                                <select id="sys_AIMC" runat="server">
                                    <option value=""></option>
                                    <option value="I">System</option>
                                </select>
                            </gal-input>
                        </div>                      
                        <gal-input-help input-size="xlarge2" label-size="small" label-text="Parameter:">
                            <input id="parameter_ACOD" runat="server" />
                            <input id="parameterDesc_ADSC" runat="server" />
                        </gal-input-help>
                        <div class="centered-flex">
                            <gal-input label-size="small" input-size="small2" label-text="Update user:" no-description>
                                <input id="updUser_AUSRU" runat="server" />
                            </gal-input>
                            <gal-input label-size="auto" input-size="small2" label-text="Update date:" no-description>
                                <input id="updDate_ATUPD" runat="server" galtype="date" dateformat="ddmmyy" />
                            </gal-input>
                        </div>
                    </div>
                </div>
                <div class="column-form">
                    <div class="spaced-column">
                        <div class="sub-headline" style="margin-top: 30px">
                            <span>Keys</span>
                        </div>
                        <div class="table-container">
                            <table id="FakeTable1" runat="server" fake-field class="table gal6-table-striped no-selection-table less-padding-table">
                                <thead>
                                    <tr>
                                        <th class="input-xlarge">Type</th>
                                        <th>Code</th>
                                        <th class="input-xlarge">Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <gal-input input-size="large" no-description>
                                                <input id="keysType1_DSC1" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="code_C1" runat="server" maxlength="15" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="description_D1" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <gal-input input-size="large" no-description>
                                                <input id="keysType2_DSC2" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="code_C2" runat="server" maxlength="15" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="description_D2" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <gal-input input-size="large" no-description>
                                                <input id="keysType3_DSC3" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="code_C3" runat="server" maxlength="15" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="description_D3" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <gal-input input-size="large" no-description>
                                                <input id="keysType4_DSC4" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="code_C4" runat="server" maxlength="15" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="description_D4" runat="server"></span>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <gal-input input-size="large" no-description>
                                                <input id="keysType5_DSC5" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="code_C5" runat="server" maxlength="15" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="description_D5" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <gal-input input-size="large" no-description>
                                                <input id="keysType6_DSC6" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="code_C6" runat="server" maxlength="15" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="description_D6" runat="server"></span>
                                        </td>
                                    </tr>
                                 
                                </tbody>
                            </table>
                             <gal-input label-size="small" input-size="xlarge" label-text="Description:" no-description>
                                    <input id="descriptionLine_DSCL" runat="server" />
                             </gal-input>   
                        </div>
                    </div>
                    <div class="spaced-column" style="margin-right: 0px;">
                        <div class="sub-headline" style="margin-top: 30px">
                            <span>Data</span>
                        </div>
                        <div class="table-container">
                            <table id="FakeTable2" runat="server" fake-field class="table gal6-table-striped less-padding-table no-selection-table">
                                <thead>
                                    <tr>
                                        <th>Description</th>
                                        <th>Value</th>
                                        <th>Type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA1" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL1" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD1" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA2" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL2" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD2" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA3" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL3" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD3" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA4" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL4" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD4" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA5" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL5" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD5" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA6" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL6" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD6" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA7" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL7" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD7" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA8" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL8" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD8" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA9" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL9" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD9" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <gal-input input-size="medium" no-description>
                                                <input id="description_DATA10" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="value_VAL10" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                             <gal-input input-size="medium" no-description>
                                                <input id="typeData_TDD10" runat="server" />
                                             </gal-input>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                    <button id="f10Btn" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
                </div>
            </div>
            <input id="hiddenField" runat="server" style="display: none;" />
        </div>
        <script>
            var btn = document.getElementById("f10Btn")
            var mode = document.getElementById("ctl00_GXPagePlaceHolder_type_MODE_3")
            if (mode.innerText.trim().toLocaleLowerCase() == "display") {
                btn.style.display = "none";
            }
            else if (mode.innerText.trim().toLocaleLowerCase() == "update") {
                btn.innerText = "Update";
            }
            else if (mode.innerText.trim().toLocaleLowerCase() == "copy") {
                btn.innerText = "Copy";
            }
            else if (mode.innerText.trim().toLocaleLowerCase() == "add") {
                btn.innerText = "Add";
            }
        </script>
</asp:Content>
