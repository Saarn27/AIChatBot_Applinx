<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_ADD.aspx.cs" Inherits="TFU01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="TitleTarget" ></h1>

            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-text="File name:" label-size="small" input-size="xlarge2">
                                <input id="fileName_FIL" runat="server">
                                <input id="fildDesc_FILD" runat="server">
                            </gal-input>
                            <gal-input label-text="Key - 1:" label-size="auto" input-size="small" no-description>
                                <input id="key_KEY1" runat="server">
                            </gal-input>
                        </div>
                    </div>
                </div>

                <div class="column-form related-fields-area w-100" style="margin-bottom: 0px">
                    <div class="spaced-column">
                        <gal-input label-text="Field name:" label-size="small2" input-size="large2" no-description>
                            <input id="fieldName_ATXT" runat="server">
                        </gal-input>
                        <gal-input label-text="Field local:" label-size="small2" input-size="large2" no-description>
                            <input id="fieldLocal_ATXTL" runat="server">
                        </gal-input>
                        <gal-input label-text="Data type:" label-size="small2" input-size="small" no-description>
                            <select id="dataType_ATYP" runat="server">
                                <option value=""></option>
                                <option value="N">Numeric</option>
                                <option value="A">Character</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Length:" label-size="small2" input-size="xxsmall" no-description>
                            <input id="length_ALEN" runat="server">
                        </gal-input>
                        <gal-input label-text="Decimal:" label-size="small2" input-size="xxsmall" no-description>
                            <input id="decimal_ADEC" runat="server">
                        </gal-input>
                        <gal-input label-text="Default value:" label-size="small2" input-size="small2" no-description>
                            <input id="defaultVal_ADFT" runat="server">
                        </gal-input>
                        <gal-input label-text="Record type:" label-size="small2" input-size="small" no-description>
                            <select id="recordType_ATYP1" runat="server">
                                <option value=""></option>
                                <option value="T">Table</option>
                                <option value="H">Header</option>
                                <option value="P">Program</option>
                            </select>
                        </gal-input>
                        <gal-input-help label-text="Unit measure:" label-size="small2" input-size="large2">
                            <input id="um_AUM" runat="server">
                            <input id="umDes_AUMD" runat="server">
                        </gal-input-help>
                        <gal-input label-text="Sequence:" label-size="small2" input-size="xsmall" no-description>
                            <input id="sequence_ASEQ" runat="server">
                        </gal-input>
                        <gal-input label-text="Mandatory:" label-size="small2" input-size="small" no-description>
                            <select id="mandatory_AMND" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                                <option value="U">Update</option>
                                <option value="L">Lock</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="System code:" label-size="small2" input-size="medium" no-description>
                            <gx:GXCheckBox ID="systemCode_AIMC" CheckedValue="I" UncheckedValue="" runat="server" />
                        </gal-input>
                        <gal-input label-text="Minimum value:" label-size="small2" input-size="medium" no-description>
                            <input id="minumumVal_AMIN" runat="server">
                        </gal-input>
                        <gal-input label-text="Maximum value:" label-size="small2" input-size="medium" no-description>
                            <input id="maximumVal_AMAX" runat="server">
                        </gal-input>
                        <gal-input label-text="Program:" label-size="small2" input-size="large" no-description>
                            <select id="program_TFDA04" runat="server">
                            </select>
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="medium" input-size="large" no-description dynamic-label>
                            <input id="Desctitle" runat="server">
                            <input id="Desc_ADESC" runat="server">
                        </gal-input>
                        <gal-input label-text="Validity:" label-size="medium" input-size="xsmall" no-description>
                            <input id="validity_AVFILE" runat="server">
                        </gal-input>
                        <gal-input label-text="Key - 1:" label-size="medium" input-size="xsmall" no-description>
                            <input id="key1_AKLVL1" runat="server">
                        </gal-input>
                        <gal-input label-text="Key - 2:" label-size="medium" input-size="xsmall" no-description>
                            <input id="key2_AKLVL2" runat="server">
                        </gal-input>
                        <div class="sub-headline"><span>Select parameters</span></div>
                        <gal-input label-text="Type 1:" label-size="medium" input-size="medium" no-description>
                            <select id="type1_TYP1" runat="server">
                            </select>
                        </gal-input>
                        <gal-input label-text="Type 2:" label-size="medium" input-size="medium" no-description>
                            <select id="type2_TYP2" runat="server">
                            </select>
                        </gal-input>
                        <gal-input label-text="Line:" label-size="medium" input-size="medium" no-description>
                            <select id="line_LINE" runat="server">
                            </select>
                        </gal-input>
                        <div class="sub-headline"><span>Quotation</span></div>
                        <gal-input label-text="Header/Line:" label-size="medium" input-size="xxsmall" no-description>
                            <input id="hdrLine_ATFDA03" runat="server">
                        </gal-input>
                        <gal-input label-text="Field number:" label-size="medium" input-size="small" no-description>
                            <input id="fieldNumber_ATFKEY2" runat="server">
                        </gal-input>
                        <gal-input label-text="Depend by other:" label-size="medium" input-size="xxsmall" no-description>
                            <input id="Depend_ATFUM1" runat="server">
                        </gal-input>
                        <gal-input-help label-text="Depend on RRN:" label-size="medium" input-size="small" no-description>
                            <input id="dependOnRnn_ATFDN02" runat="server">
                        </gal-input-help>
                        <gal-input label-text="Web screen row:" label-size="medium" input-size="xsmall" no-description>
                            <input id="webScreenRow_ATFSEQO" runat="server">
                        </gal-input>
                        <gal-input label-text="Web screen column:" label-size="medium" input-size="xsmall" no-description>
                            <input id="webScreenCol_ATFDN0" runat="server">
                        </gal-input>
                        <gal-input label-text="Print:" label-size="medium" input-size="xsmall" no-description>
                            <select id="print_APRT" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                            </select>
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                    <button id="F10btnBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10btn" runat="server" style="display: none;"></span>
    <span id="title_hdr" runat="server" style="display:none"></span>
    <script>
        var F10btn_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10btn").innerText.trim() == "";
        var F10btn_Btn = document.getElementById("F10btnBtn");
        if (F10btn_isHidden) {
            F10btn_Btn.style.display = "none"
        }

        const TitleText = document.querySelector("#ctl00_GXPagePlaceHolder_title_hdr")
        if (TitleText.innerText.includes("MAINTENANCE")) {
            document.querySelector("#TitleTarget").innerText = "User Defined Fields Maintenance";
        } else if (TitleText.innerText.includes("SPECIFICATION")) {
            document.querySelector("#TitleTarget").innerText = "Specification";
        }

    </script>
</asp:Content>
