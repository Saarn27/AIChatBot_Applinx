<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T23U01_ADD.aspx.cs" Inherits="T23U01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="title" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <div class="centered-flex">
                    <gal-input input-size="xsmall" label-size="medium2" label-text="Main subject:" no-description>
                        <input id="mainSubject_ASUB" runat="server" />
                    </gal-input>
                    <gal-input input-size="small" label-size="small" label-text="System code:" no-description>
                        <select id="systemCode_AIMC" runat="server">
                            <option value=""></option>
                            <option value="I">System</option>
                        </select>
                    </gal-input>
                </div>
                <div class="centered-flex">
                    <gal-input input-size="xsmall" label-size="medium2" label-text="Secondary subject:" no-description>
                        <input id="secondarySubject_ASB1" runat="server" />
                    </gal-input>
                    <gal-input-help input-size="xsmall" label-size="small" no-description dynamic-label>
                        <input id="subOptionAuttitle" runat="server" />
                        <input id="subOptionAut_ADA4" runat="server" />
                    </gal-input-help>
                </div>
                <div class="centered-flex">
                    <gal-input input-size="xsmall" label-size="medium2" label-text="Subject code:" no-description>
                        <input id="subjectCode_ACOD" runat="server" />
                    </gal-input>
                    <gal-input input-size="xxsmall" label-size="small" no-description dynamic-label>
                        <input id="codeLentitle" runat="server" />
                        <input id="codeLen_ACODL" runat="server" />
                    </gal-input>
                </div>
                <gal-input input-size="large" label-size="medium2" label-text="Short description:" no-description>
                    <input id="shortDescription_ADSC" runat="server" />
                </gal-input>
                <gal-input input-size="large" label-size="medium2" label-text="Long description:" no-description>
                    <input id="longDescription_ADSL" runat="server" />
                </gal-input>
                <gal-input input-size="large" label-size="medium2" label-text="Local description:" no-description>
                    <input id="localDescription_ADSLC" runat="server" />
                </gal-input>
                <div class="centered-flex">
                    <gal-input input-size="medium" label-size="medium2" no-description dynamic-label>
                        <input id="p1_A1DSC" runat="server" />
                        <input id="p1_APR1" runat="server" />
                    </gal-input>
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="XXXXXXXX.XXX"></span>
                </div>
                <div class="centered-flex">
                    <gal-input input-size="medium" label-size="medium2" no-description dynamic-label>
                        <input id="p2_A2DSC" runat="server" />
                        <input id="p2_APR2" runat="server" />
                    </gal-input>
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="XXXXXXXXXX.X"></span>
                </div>
                <gal-input input-size="medium" label-size="medium2" no-description dynamic-label>
                    <input id="p3_A3DSC" runat="server" />
                    <input id="p3_APR3" runat="server" />
                </gal-input>
                <gal-input input-size="xxsmall" label-size="medium2" no-description dynamic-label>
                    <input id="p4_A4DSC" runat="server" />
                    <input id="p4_APR4" runat="server" />
                </gal-input>
                <div class="centered-flex">
                    <gal-input input-size="medium" label-size="medium2" no-description dynamic-label>
                        <input id="p5_A5DSC" runat="server" />
                        <input id="p5_APR5" runat="server" />
                    </gal-input>
                    <gal-input input-size="medium" no-description>
                        <input id="p5d_S_T23DA7" runat="server" />
                    </gal-input>
                </div>
                <gal-input input-size="medium" label-size="medium2" no-description dynamic-label>
                    <input id="p6_A6DSC" runat="server" />
                    <input id="p6_APR6" runat="server" />
                </gal-input>
                <div class="centered-flex">
                    <gal-input input-size="medium" label-size="medium2" no-description dynamic-label>
                        <input id="p7_A7DSC" runat="server" />
                        <input id="p7_APR7" runat="server" />
                    </gal-input>
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="XXXXXXX.XX"></span>
                </div>
                <div class="centered-flex">
                    <gal-input input-size="medium" label-size="medium2" no-description dynamic-label>
                        <input id="p8_A8DSC" runat="server" />
                        <input id="p8_APR8" runat="server" />
                    </gal-input>
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="XXXXXXX"></span>
                </div>
                <gal-input input-size="small" label-size="medium2" label-text="Display on help:" no-description>
                    <select id="displayOnHelp_ADSP" runat="server">
                        <option value=""></option>
                        <option value="N">Not display</option>
                    </select>
                </gal-input>
                <gal-input input-size="xxsmall" label-size="medium2" label-text="Module:" no-description>
                    <input id="module_ASBS" runat="server" />
                </gal-input>
                <div class="centered-flex">
                    <gal-input input-size="small" label-size="medium2" label-text="Last date:" no-description>
                        <input id="lastDateUserUpd_AUPD" runat="server" galtype="date" dateformat="ddmmy" />
                    </gal-input>
                    <gal-input label-text="User update:" label-size="auto" input-size="small" no-description>
                        <input id="lastDateUserUpdUsr_AUSR" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf13]');">Remarks</button>
                <button type="button" id="f10DynamicBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
        <input id="f10btn" runat="server" style="display: none;" />
    </div>
    <script>
        var hdrtitle = document.getElementById('ctl00_GXPagePlaceHolder_title')

        if (hdrtitle.innerText.trim() == 'UPD GENERAL TYPE SUBJECT') {

            hdrtitle.innerText = 'Update General Type Subject';
        }
        var subOptionAuttitle = document.getElementById('ctl00_GXPagePlaceHolder_subOptionAuttitle');
        if (subOptionAuttitle.value == '*Sub option aut:') {
            subOptionAuttitle.value = '*Sub option authority:'
        }

        var F10_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_f10btn").value.trim();
        var F10_Btn = document.getElementById("f10DynamicBtn")
        if (F10_isHidden == "") {
            F10_Btn.remove();
        }
        else if (F10_isHidden.includes("Update")) {
            F10_Btn.innerText = "Update"
        }
    </script>
</asp:Content>
