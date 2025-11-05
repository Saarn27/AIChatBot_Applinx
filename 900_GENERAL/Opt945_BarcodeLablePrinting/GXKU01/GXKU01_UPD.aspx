<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXKU01_UPD.aspx.cs" Inherits="GXKU01_UPD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">LABEL MAINTENANCE</h1>
                <span class="sub-headline blue-headline" id="subheadline1_LBLUPD" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="sub-headline blue-headline" id="subheadline2_LBLDSC20" runat="server"></span>
            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input label-text="Line type:" label-size="medium" input-size="small" no-description>
                            <select id="LineType_TYPUPD" runat="server">
                                <option value=""></option>
                                <option value="D">Detail</option>
                                <option value="T">Top</option>
                                <option value="B">Bottom</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Line number:" label-size="medium" input-size="small" no-description>
                            <input id="LineNumber_LINEUPDS" runat="server">
                        </gal-input>
                        <gal-input-help label-text="Data source:" label-size="medium" input-size="xlarge">
                            <input id="DataSource_SRCUPD" runat="server">
                            <input id="DataSourcedes_SRCDUPD" runat="server">
                        </gal-input-help>
                        <gal-input label-text="Data:" label-size="medium" input-size="xlarge" no-description>
                            <input id="Data_DATAUPD" runat="server">
                        </gal-input>
                        <gal-input label-text="Format:" label-size="medium" input-size="xxlarge" no-description>
                            <input id="Format1_FORMUPD" runat="server">
                        </gal-input>
                        <gal-input label-text="" label-size="medium" input-size="xxlarge" no-description>
                            <input id="Format2_FORMUPD1" runat="server">
                        </gal-input>
                        <gal-input label-text="Constant description:" label-size="medium" input-size="xlarge" no-description>
                            <input id="ConstantDsc_TEXTUPD" runat="server">
                        </gal-input>
                        <gal-input label-text="Constant:" label-size="medium" input-size="xlarge" no-description>
                            <input id="Constant_CNSTUPD" runat="server">
                        </gal-input>
                    </div>
                </div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-text="Start format:" label-size="medium" input-size="large" no-description>
                                <input id="StartFormat_STRUPDF" runat="server">
                            </gal-input>
                            <gal-input label-text="Start data:" label-size="xsmall2" input-size="large" no-description>
                                <input id="StartData_STRUPD" runat="server">
                            </gal-input>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="End format:" label-size="medium" input-size="large" no-description>
                                <input id="EndFormat_ENDUPDF" runat="server">
                            </gal-input>
                            <gal-input label-text="End data:" label-size="xsmall2" input-size="large" no-description>
                                <input id="EndData_ENDUPD" runat="server">
                            </gal-input>
                        </div>
                    </div>
                </div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 5px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-text="Data Length:" label-size="medium" input-size="xxsmall" no-description>
                                <input id="DataLenght_DLENUPD" runat="server">
                            </gal-input>
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="1 - 40"></span>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="Center field:" label-size="medium" input-size="medium" no-description>
                                <gx:GXCheckBox ID="CenterField_CNTUPD" CheckedValue="Y" UncheckedValue="" runat="server" />
                            </gal-input>
                            <div class="centered-flex">
                                <gal-input label-text="Screen protect:" label-size="small2" input-size="medium" no-description>
                                    <gx:GXCheckBox ID="ScreenProtect_PROTUPD" CheckedValue="N" UncheckedValue="" runat="server" />
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Check = No"></span>
                            </div>
                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="Suppress blanks:" label-size="medium" input-size="medium" no-description>
                                <gx:GXCheckBox ID="SupressBlanks_SPRSUPD" CheckedValue="Y" UncheckedValue="" runat="server" />
                            </gal-input>
                            <div class="centered-flex">
                                <gal-input label-text="Print:" label-size="small2" input-size="medium" no-description>
                                    <gx:GXCheckBox ID="Print_PRTUPD" CheckedValue="N" UncheckedValue="" runat="server" />
                                </gal-input>
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Check = No to print"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSGUPD" runat="server"></span>
                    <button id="F10_ADDUPDBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10_ADDUPD" runat="server" style="display: none;"></span>
    <script>
        var F10_ADDUPD_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10_ADDUPD").innerText.trim() == "";
        var F10_ADDUPD_Btn = document.getElementById("F10_ADDUPDBtn");
        if (F10_ADDUPD_isHidden) {
            F10_ADDUPD_Btn.style.display = "none"
        }
        if (document.querySelector("#ctl00_GXPagePlaceHolder_F10_ADDUPD").innerText === "F10=Update") {
            F10_ADDUPD_Btn.innerText = "Update"
        }



    </script>
</asp:Content>
