<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU07_DTL.aspx.cs" Inherits="GWTU07_DTL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">WORKFLOW PROFESSIONALS LIST</h1>
                <span class="sub-headline blue-headline">Maintenance</span>
                <span class="sub-headline separating-line">|</span>
                <span class="sub-headline blue-headline" id="mode_MODE" runat="server"></span>
            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input label-text="Numerator:" label-size="medium" input-size="small" no-description>
                            <input id="number_DNUM" runat="server">
                        </gal-input>
                        <gal-input-help label-text="Users:" label-size="medium" input-size="large">
                            <input id="user_DUSR" runat="server">
                            <input id="userDescription_DUSRD" runat="server">
                        </gal-input-help>
                        <gal-input label-text="Priority:" label-size="medium" input-size="xxsmall" no-description>
                            <select id="priority_DPRI" runat="server">
                                <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Financial approval:" label-size="medium" input-size="xsmall" no-description>
                            <select id="financialApprover_DFIN" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Destination type:" label-size="medium" input-size="xxsmall" no-description>
                            <select id="desinationType_DWDP" runat="server">
                                <option value=""></option>
                                <option value="W">W</option>
                                <option value="D">D</option>
                                <option value="F">F</option>
                                <option value="P">P</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Workflow type:" label-size="medium" input-size="xsmall" no-description>
                            <select id="WorkflowType_D_WFT" runat="server">
                                <option value=""></option>
                                <option value="RQS">RQS</option>
                                <option value="PRJ">PRJ</option>
                                <option value="PR1">PR1</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Over amount:" label-size="medium" input-size="small2" no-description>
                            <input id="amount_DVAL" runat="server"/>
                        </gal-input>
                        <gal-input label-text="Vendor class:" label-size="medium" input-size="medium" no-description>
                            <select id="supplierClass_DVNDC" runat="server"></select>
                        </gal-input>
                    </div>
                </div>

                <div class="column-form related-fields-area w-100">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <div class="sub-headline" style="margin-left: 42px">
                                <span>Type</span>
                            </div>
                            <div class="sub-headline" style="margin-left: 430px">
                                <span>Selection</span>
                            </div>
                        </div>

                        <div class="centered-flex">
                            <gal-input label-text="" label-size="xxsmall" input-size="large" no-description>
                                <select id="type1_DT1" runat="server" onchange="gx_SubmitKeyInPos(type1_DT1,'[enter]');"></select>
                            </gal-input>
                            <gal-input label-text="" label-size="xxsmall" input-size="small" no-description>
                                <select id="type1YesNo_DT1YN" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Y = or</option>
                                    <option value="N">N = and</option>
                                </select>
                            </gal-input>
                            <div id="CF1" class="centered-flex">
                                <div class="input-container">
                                    <input id="SelectionInput1" row="0" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput2" row="0" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput3" row="0" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput4" row="0" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput5" row="0" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="" label-size="xxsmall" input-size="large" no-description>
                                <select id="type2_DT2" runat="server" onchange="gx_SubmitKeyInPos(type2_DT2,'[enter]');"></select>
                            </gal-input>
                            <gal-input label-text="" label-size="xxsmall" input-size="small" no-description>
                                <select id="type2YesNo_DT2YN" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Y = or</option>
                                    <option value="N">N = and</option>
                                </select>
                            </gal-input>
                            <div id="CF2" class="centered-flex">
                                <div class="input-container">
                                    <input id="SelectionInput6" row="1" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput7" row="1" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput8" row="1" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput9" row="1" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput10" row="1" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="" label-size="xxsmall" input-size="large" no-description>
                                <select id="type3_DT3" runat="server" onchange="gx_SubmitKeyInPos(type3_DT3,'[enter]');"></select>
                            </gal-input>
                            <gal-input label-text="" label-size="xxsmall" input-size="small" no-description>
                                <select id="type3YesNo_DT3YN" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Y = or</option>
                                    <option value="N">N = and</option>
                                </select>
                            </gal-input>
                            <div id="CF3" class="centered-flex">
                                <div class="input-container">
                                    <input id="SelectionInput11" row="2" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput12" row="2" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput13" row="2" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput14" row="2" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput15" row="2" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="" label-size="xxsmall" input-size="large" no-description>
                                <select id="type4_DT4" runat="server" onchange="gx_SubmitKeyInPos(type4_DT4,'[enter]');"></select>
                            </gal-input>
                            <gal-input label-text="" label-size="xxsmall" input-size="small" no-description>
                                <select id="type4YesNo_DT4YN" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Y = or</option>
                                    <option value="N">N = and</option>
                                </select>
                            </gal-input>
                            <div id="CF4" class="centered-flex">
                                <div class="input-container">
                                    <input id="SelectionInput16" row="3" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput17" row="3" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput18" row="3" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput19" row="3" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput20" row="3" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="" label-size="xxsmall" input-size="large" no-description>
                                <select id="type5_DT5" runat="server" onchange="gx_SubmitKeyInPos(type5_DT5,'[enter]');"></select>
                            </gal-input>
                            <gal-input label-text="" label-size="xxsmall" input-size="small" no-description>
                                <select id="type5YesNo_DT5YN" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Y = or</option>
                                    <option value="N">N = and</option>
                                </select>
                            </gal-input>
                            <div id="CF5" class="centered-flex">
                                <div class="input-container">
                                    <input id="SelectionInput21" row="4" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput22" row="4" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput23" row="4" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput24" row="4" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput25" row="4" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="" label-size="xxsmall" input-size="large" no-description>
                                <select id="type6_DT6" runat="server" onchange="gx_SubmitKeyInPos(type6_DT6,'[enter]');"></select>
                            </gal-input>
                            <gal-input label-text="" label-size="xxsmall" input-size="small" no-description>
                                <select id="type6YesNo_DT6YN" runat="server">
                                    <option value=""></option>
                                    <option value="Y">Y = or</option>
                                    <option value="N">N = and</option>
                                </select>
                            </gal-input>
                            <div id="CF6" class="centered-flex">
                                <div class="input-container">
                                    <input id="SelectionInput26" row="5" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput27" row="5" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput28" row="5" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput29" row="5" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                                <div class="input-container">
                                    <input id="SelectionInput30" row="5" runat="server" class="no-color input-small" fake-field>
                                    <a class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                    <button type="button" id="F10B" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <input id="offsetToPress" runat="server" fake-field style="display: none;" />
    <input id="RowNum" runat="server" fake-field style="display: none;" />
    <script>
        if (document.querySelector("#ctl00_GXPagePlaceHolder_mode_MODE").innerText === "UPDATE") {
            document.querySelector("#F10B").innerText = "Update"
        }
        else if (document.querySelector("#ctl00_GXPagePlaceHolder_mode_MODE").innerText === "ADD") {
            document.querySelector("#F10B").innerText = "Add"
        }
        else if (document.querySelector("#ctl00_GXPagePlaceHolder_mode_MODE").innerText === "COPY") {
            document.querySelector("#F10B").innerText = "Copy"
        }
        else if (document.querySelector("#ctl00_GXPagePlaceHolder_mode_MODE").innerText === "DISPLAY") {
            document.querySelector("#F10B").style.display = "none"
        }

        function goToFakeHelp(offset, row) {
            const offsetToPress = document.querySelector("#ctl00_GXPagePlaceHolder_offsetToPress");
            offsetToPress.value = offset;
            const element = document.querySelector("#ctl00_GXPagePlaceHolder_RowNum");
            element.value = row
            gx_SubmitKey("[pf1]");
        }

        if (document.querySelector("#ctl00_GXPagePlaceHolder_type1_DT1").value === "") {
            document.querySelector("#CF1").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type1_DT1").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput5").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type2_DT2").value === "") {
            document.querySelector("#CF2").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type2_DT2").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput10").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type3_DT3").value === "") {
            document.querySelector("#CF3").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type3_DT3").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput15").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type4_DT4").value === "") {
            document.querySelector("#CF4").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type3_DT3").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput20").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type5_DT5").value === "") {
            document.querySelector("#CF5").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type5_DT5").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput25").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type6_DT6").value === "") {
            document.querySelector("#CF6").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type6_DT6").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput30").parentElement.style.display = "none";
        }


    </script>
</asp:Content>
