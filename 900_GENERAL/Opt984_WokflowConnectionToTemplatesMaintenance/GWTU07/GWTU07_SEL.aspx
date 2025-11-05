<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU07_SEL.aspx.cs" Inherits="GWTU07_SEL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">WORKFLOW PROFESSIONALS LIST</h1>
        <span class="sub-headline blue-headline">Search</span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <div class="sub-headline" style="margin-left: 38px">
                            <span>Type</span>
                        </div>
                        <div class="sub-headline" style="margin-left:264px">
                            <span>Selection</span>
                        </div>
                    </div>
                    <div class="centered-flex">
                        <gal-input label-text="" label-size="xxsmall" input-size="large" no-description>
                            <select id="type1_ST1" runat="server" onchange="gx_SubmitKeyInPos(type1_ST1,'[enter]');"></select>
                        </gal-input>
                        <div id="CF1" class="centered-flex">
                            <div class="input-container">
                                <input id="SelectionInput1" row="0" runat="server" class="no-color input-small" fake-field>
                                <a id="targetA" class="go-to-help-window-icon" onclick="goToFakeHelp(event.srcElement.previousElementSibling.attributes.offset.value,event.srcElement.previousElementSibling.attributes.row.value)"></a>
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
                            <select id="type2_ST2" runat="server" onchange="gx_SubmitKeyInPos(type2_ST2,'[enter]');"></select>
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
                            <select id="type3_ST3" runat="server" onchange="gx_SubmitKeyInPos(type3_ST3,'[enter]');"></select>
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
                            <select id="type4_ST4" runat="server" onchange="gx_SubmitKeyInPos(type4_ST4,'[enter]');"></select>
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
                            <select id="type5_ST5" runat="server" onchange="gx_SubmitKeyInPos(type5_ST5,'[enter]');"></select>
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
                            <select id="type6_ST6" runat="server" onchange="gx_SubmitKeyInPos(type6_ST6,'[enter]');"></select>
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
            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_SMSG" runat="server"></span>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <input id="offsetToPress1" runat="server" fake-field style="display: none;" />
    <input id="RowNum" runat="server" fake-field style="display: none;" />
    <script>
        function goToFakeHelp(offset, row) {
            const offsetToPress = document.querySelector("#ctl00_GXPagePlaceHolder_offsetToPress1");
            offsetToPress.value = offset;
            const element = document.querySelector("#ctl00_GXPagePlaceHolder_RowNum");
            element.value = row
            gx_SubmitKey("[pf1]");
        }

        if (document.querySelector("#ctl00_GXPagePlaceHolder_type1_ST1").value === "") {
            document.querySelector("#CF1").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type1_ST1").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput5").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type2_ST2").value === "") {
            document.querySelector("#CF2").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type2_ST2").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput10").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type3_ST3").value === "") {
            document.querySelector("#CF3").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type3_ST3").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput15").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type4_ST4").value === "") {
            document.querySelector("#CF4").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type4_ST4").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput20").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type5_ST5").value === "") {
            document.querySelector("#CF5").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type5_ST5").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput25").parentElement.style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type6_ST6").value === "") {
            document.querySelector("#CF6").style.display = "none";
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_type6_ST6").value === "U01") {
            document.querySelector("#ctl00_GXPagePlaceHolder_SelectionInput30").parentElement.style.display = "none";
        }

    </script>
</asp:Content>
