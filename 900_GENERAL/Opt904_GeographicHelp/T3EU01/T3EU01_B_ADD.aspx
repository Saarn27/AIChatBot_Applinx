<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T3EU01_B_ADD.aspx.cs" Inherits="T3EU01_B_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">NAICS</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input input-size="xxsmall" label-size="medium" label-text="Type - Subject:" no-description>
                    <input id="TypeSubject_TYPE_N" runat="server" />
                </gal-input>
                <gal-input input-size="small" label-size="medium" label-text="Subject code:" no-description>
                    <input id="SubjectCode_SUB_CODE" runat="server" />
                </gal-input>

                <gal-input input-size="large" label-size="medium" label-text="Descriptions:" no-description>
                    <input id="Description_DES_FLD" runat="server" />
                </gal-input>
                <gal-input input-size="xlarge2" label-size="medium" no-description>
                    <input id="DESS_FLD" runat="server" />
                </gal-input>

                <gal-input input-size="large" label-size="medium" label-text="Local descriptions:" no-description>
                    <input id="LocalDescription_LDES_FLD" runat="server" />
                </gal-input>
                <gal-input input-size="xlarge2" label-size="medium" no-description>
                    <input id="SDESL_FLD" runat="server" />
                </gal-input>

                <gal-input input-size="small" label-size="medium" label-text="System code:" no-description>
                    <select id="SystemCode_SYSCOD_FLD" runat="server">
                        <option value=""></option>
                        <option value="I">System</option>
                    </select>
                </gal-input>
                <gal-input input-size="large" label-size="medium" label-text="Industry:" no-description>
                    <select id="Industry_IND_FLD" runat="server" ></select>
                </gal-input>
            </div>
            <span id="F10Btn_lbl" runat="server" style="display:none"></span>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="B_MSG" runat="server"></span>
                <button id="Bt" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"></button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        //console.log(document.querySelector("#ctl00_GXPagePlaceHolder_Descriptions_ASDS2"))
        //if (document.querySelector("#ctl00_GXPagePlaceHolder_Descriptions_ASDS2").hasAttribute("readonly")) {
        //    document.querySelector("#Bt").style.display = "none"
        //}
        if (document.getElementById("ctl00_GXPagePlaceHolder_F10Btn_lbl").innerText.toLowerCase().includes("add")) {
            document.getElementById("Bt").innerText = "Add";
        }
        else if (document.getElementById("ctl00_GXPagePlaceHolder_F10Btn_lbl").innerText.toLowerCase().includes("update")) {
            document.getElementById("Bt").innerText = "Update";
        } else {
            document.getElementById("Bt").style.display = "none";
        }
    </script>
</asp:Content>
