<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U01_ADD1.aspx.cs" Inherits="T2U01_ADD1" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">PARAMETER TYPES DEFINTION</h1>
                <span class="sub-headline blue-headline" id="type" runat="server"></span>
            </div>
            <div class="wrapper-container">
                <div class="column-form">
                    <div class="spaced-column related-fields-area w-100" style="margin-right: 0px;">
                        <gal-input-help input-size="large" label-size="small" label-text="System:">
                            <input id="systemCode_ASYS" runat="server" />
                            <input id="systemDesc_AS_DSC" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="small" input-size="large" label-text="Param code:" no-description>
                            <input id="ParamCode_ACOD" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" input-size="large" label-text="Description:" no-description>
                            <input id="description_ADSC" runat="server" />
                        </gal-input>
                        <gal-input-help input-size="large" label-size="small" label-text="Company:">
                            <input id="companyCode_ACMP" runat="server" />
                            <input id="companyDesc_AC_DSC" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="small" input-size="small" label-text="IMC:" no-description>
                            <select id="imcSysCode_AIMC" runat="server">
                                <option value=""></option>
                                <option value="I">system</option>
                            </select>
                        </gal-input>
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
                                        <th></th>
                                        <th>Code</th>
                                        <th class="input-xlarge">Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span>1</span></td>
                                        <td>
                                            <gal-input input-size="xsmall" no-description>
                                                <input id="code_COD1" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="desc_DSC1" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>2</span></td>
                                        <td>
                                            <gal-input input-size="xsmall" no-description>
                                                <input id="code_COD2" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="desc_DSC2" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>3</span></td>
                                        <td>
                                            <gal-input input-size="xsmall" no-description>
                                                <input id="code_COD3" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="desc_DSC3" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>4</span></td>
                                        <td>
                                            <gal-input input-size="xsmall" no-description>
                                                <input id="code_COD4" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="desc_DSC4" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>5</span></td>
                                        <td>
                                            <gal-input input-size="xsmall" no-description>
                                                <input id="code_COD5" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="desc_DSC5" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>6</span></td>
                                        <td>
                                            <gal-input input-size="xsmall" no-description>
                                                <input id="code_COD6" runat="server" />
                                            </gal-input>
                                        </td>
                                        <td>
                                            <span id="desc_DSC6" runat="server"></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="spaced-column" style="margin-right: 0px;margin-bottom:-20px">
                        <div class="sub-headline" style="margin-top: 30px">
                            <span>Data</span>
                        </div>
                        <div class="table-container">
                            <table id="FakeTable2" runat="server" fake-field class="table gal6-table-striped less-padding-table no-selection-table">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Description</th>
                                        <th>Type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span>1</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA1" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD01" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>2</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA2" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD02" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>3</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA3" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD03" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>4</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA4" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD04" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>5</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA5" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD05" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>6</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA6" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD06" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>7</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA7" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD07" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>8</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA8" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD08" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>9</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA9" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD09" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>10</span></td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <input id="descriptionTable2_DATA10" runat="server" />
                                            </gal-input>

                                        </td>
                                        <td>
                                            <gal-input input-size="medium" no-description>
                                                <select id="typeCodeTable2_TYPD010" runat="server">
                                                    <option value=""></option>
                                                    <option value="1">Alpha</option>
                                                    <option value="2">Numeric</option>
                                                    <option value="3">Numeric with decimal</option>
                                                </select>
                                            </gal-input>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg" runat="server"></span>
                    <button id="f10Btn" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
                </div>
            </div>
            <input id="hiddenField" runat="server" style="display: none;" />
        </div>
        <script>
            var btn = document.getElementById("f10Btn")
            var mode = document.getElementById("ctl00_GXPagePlaceHolder_type")
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
