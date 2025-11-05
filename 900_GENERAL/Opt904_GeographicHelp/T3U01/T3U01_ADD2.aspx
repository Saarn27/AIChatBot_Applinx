<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T3U01_ADD2.aspx.cs" Inherits="T3U01_ADD2" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="TITLE2_title" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input input-size="xxsmall" label-size="medium" label-text="Type - General:" no-description>
                    <input id="TypeGeneral_ATYP2" runat="server" />
                </gal-input>
                <gal-input input-size="xsmall" label-size="medium" label-text="Subject code:" no-description>
                    <input id="SubjectCode_ACOD2" runat="server" />
                </gal-input>

                <gal-input input-size="large" label-size="medium" label-text="Descriptions:" no-description>
                    <input id="Descriptions_ASDS2" runat="server" />
                </gal-input>
                <gal-input input-size="xlarge2" label-size="medium" no-description>
                    <input id="des2_ADSC2" runat="server" />
                </gal-input>

                <gal-input input-size="large" label-size="medium" label-text="Local descriptions:" no-description>
                    <input id="LocalDescription_LASDS2" runat="server" />
                </gal-input>
                <gal-input input-size="xlarge2" label-size="medium" no-description>
                    <input id="locDes2_LADSC2" runat="server" />
                </gal-input>

                <gal-input input-size="small" label-size="medium" label-text="System code:" no-description>
                    <select id="SystemCode_IMC" runat="server">
                        <option value=""></option>
                        <option value="I">System</option>
                    </select>
                </gal-input>
                <gal-input-help input-size="large" label-size="medium" dynamic-label>
                    <input id="Master_Division_label" runat="server" />
                    <input id="devition_DIVISION" runat="server" />
                    <input id="des_M_DIVDSC" runat="server" />
                </gal-input-help>
                <div class="centered-flex">
                    <gal-input-help input-size="small" label-size="medium" dynamic-label no-description>
                        <input id="Vat_type_Address_number_label" runat="server" />
                        <input id="vatType_VAT" runat="server" />
                    </gal-input-help>
                    <gal-input-help input-size="small" label-size="auto" no-description>
                        <input id="vat2_ADRESNO1" runat="server" />
                    </gal-input-help>
                </div>
                <gal-input-help input-size="large" label-size="medium" dynamic-label>
                    <input id="Local_use_label" runat="server" />
                    <input id="locUs_GLOBUS" runat="server" />
                    <input id="locDes_TEAMD" runat="server" />
                </gal-input-help>
                <gal-input input-size="large" label-size="medium" dynamic-label no-description>
                    <input id="Iso_ctry_label" runat="server" />
                    <input id="cntr_ISOCTR" runat="server" />
                </gal-input>
                <gal-input input-size="large" label-size="medium" dynamic-label no-description>
                    <input id="Sys_Country_code_label" runat="server" />
                    <select id="sys_IMCNTR" runat="server"></select>
                </gal-input>
                <gal-input-help input-size="large" label-size="medium" dynamic-label>
                    <input id="Country_label" runat="server" />
                    <input id="cnt_GLOBTR" runat="server" />
                    <input id="cntDes_STATECD" runat="server" />
                </gal-input-help>
                <gal-input input-size="xsmall" label-size="medium" dynamic-label no-description>
                    <input id="Sort_statistic_label" runat="server" />
                    <select id="srtstat_SORTS" runat="server">
                        <option value=""></option>
                        <option value="N">No</option>
                        <option value="Y">Yes</option>
                    </select>
                </gal-input>
                <gal-input input-size="xsmall" label-size="medium" dynamic-label no-description>
                    <input id="Freight_label" runat="server" />
                    <select id="fre_FRET" runat="server">
                        <option value=""></option>
                        <option value="N">No</option>
                        <option value="Y">Yes</option>
                    </select>
                </gal-input>
                <gal-input input-size="medium" label-size="medium" dynamic-label no-description>
                    <input id="Customer_type_label" runat="server" />
                    <select id="cst_CSTTYP" runat="server">
                        <option value=""></option>
                        <option value="I">System customer</option>
                    </select>
                </gal-input>
                <gal-input input-size="medium" label-size="medium" dynamic-label no-description>
                    <input id="Print_COO_label" runat="server" />
                    <select id="print_COO" runat="server">
                        <option value=""></option>
                        <option value="N">No print C.O.O in label</option>
                    </select>
                </gal-input>
                <gal-input input-size="small" label-size="medium" dynamic-label no-description>
                    <input id="Last_updated_user_label" runat="server" />
                    <input id="LastUpdatedUser_UPDUSR" runat="server" />
                </gal-input>
                <gal-input input-size="small" label-size="medium" dynamic-label no-description>
                    <input id="Update_date_label" runat="server" />
                    <input id="UpdateDate_UPDDATE" runat="server" />
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA2" runat="server"></span>
                <button id="Bt" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/add</button>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        //console.log(document.querySelector("#ctl00_GXPagePlaceHolder_Descriptions_ASDS2"))
        if (document.querySelector("#ctl00_GXPagePlaceHolder_Descriptions_ASDS2").hasAttribute("readonly")) {
            document.querySelector("#Bt").style.display = "none"
        }

    </script>
</asp:Content>
