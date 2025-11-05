<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU02_ADD.aspx.cs" Inherits="GWTU02_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">MAINTENANCE WORKFLOW TYPES </h1>
                <span class="sub-headline blue-headline"></span>
            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input label-text="Workflow type:" label-size="medium2" input-size="xlarge">
                            <input id="WFTYP" runat="server">
                            <input id="WFDSC" runat="server">
                        </gal-input>
                        <div class="centered-flex">

                            <gal-input label-text="Build program:" label-size="medium2" input-size="small2" no-description>
                                <input id="BLDPG" runat="server">
                            </gal-input>
                            <gal-input label-text="Maintenance program:" label-size="medium2" input-size="small2" no-description>
                                <input id="MNTPG" runat="server">
                            </gal-input>

                        </div>
                        <div class="centered-flex">
                            <gal-input label-text="End program:" label-size="medium2" input-size="small2" no-description>
                                <input id="ENDPG" runat="server">
                            </gal-input>
                            <gal-input label-text="Inquiry program:" label-size="medium2" input-size="small2" no-description>
                                <input id="INQPG" runat="server">
                            </gal-input>


                        </div>
                    </div>
                </div>
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">

                        <gal-input-help label-text="Path for document:" label-size="medium2" input-size="large2">
                            <select id="PATH" runat="server"></select>
                            <input id="PATHN" runat="server">
                        </gal-input-help>
                        <gal-input-help label-text="Type of action:" label-size="medium2" input-size="medium">
                            <select id="ACTTP" runat="server"></select>
                            <input id="ACTTPD" runat="server">
                        </gal-input-help>
                        <gal-input label-text="Allow F4=Decline:" label-size="medium2" input-size="small" no-description>
                            <select id="S_GFHAPR" runat="server">
                                <option value=" "></option>
                                <option value="N">Not Allowed</option>
                            </select>
                        </gal-input>

                        <gal-input label-text="Allow F9=Return:" label-size="medium2" input-size="small" no-description>
                            <select id="S_GFHAD" runat="server">
                                <option value=" "></option>
                                <option value="N">Not Allowed</option>
                            </select>

                        </gal-input>

                        <gal-input label-text="For template *MANA:" label-size="medium2" input-size="xlarge" no-description>
                            <select id="S_GFHA04" runat="server">
                                <option value=" "></option>
                                <option value="YP">YP = only from employee/FAC=Table 906</option>
                                <option value="MAN">MAN = from employee/Blanks only by deparment</option>
                            </select>
                        </gal-input>

                        <gal-input id="allow_approve_owner_title_html" label-text="Allow approve owner:" label-size="medium2" input-size="small" no-description hidden>
                            <select id="S_GFHA02" runat="server">
                                <option value=" "></option>
                                <option value="N">Not allowed</option>
                            </select>
                        </gal-input>
                        <gal-input id="allow_to_close_title_html" label-text="Allow to close:" label-size="medium2" input-size="xsmall" hidden no-description>
                            <select id="S_GFHA05" runat="server">
                                <option value=" "></option>
                                <option value="Y">Yes</option>
                            </select>
                        </gal-input>

                        <gal-input-help label-text="Responsible user:" label-size="medium2" input-size="xlarge">
                            <input id="RESUSR" runat="server">
                            <input id="RESUSRN" runat="server">
                        </gal-input-help>

                        <gal-input label-text="Active:" label-size="medium2" input-size="xsmall" no-description>
                            <select id="ACT" runat="server">
                                <option value=" "></option>
                                <option value="Y">Yes</option>
                            </select>
                        </gal-input>
                    </div>
                </div>
                <div id="p_update" class="column-form related-fields-area w-100" style="margin-bottom: 10px;">
                    <div class="spaced-column">
                        <gal-input id="last_update_html" label-text="Last update:" label-size="medium2" input-size="small2" no-description>
                            <input id="LSUPT" runat="server" galtype="date" dateformat="dd/mm/y">
                        </gal-input>
                        <gal-input label-text="Last update user:" label-size="medium2" input-size="xlarge">
                            <input id="LSUPD" runat="server">
                            <input id="LSUPDNM" runat="server">
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="MSG1" runat="server"></span>
                    <button id="btnf10" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <input id="last_update_title" runat="server" style="display: none;" />
    <span id="allow_approve_owner_title" runat="server" style="display: none;"></span>
    <span id="allow_to_close_title" runat="server" style="display: none;"></span>
    <input id="F10" runat="server" style="display: none;" />
    <script>
        let p = document.getElementById("p_update");
        let b = document.getElementById("btnf10");
        let t1 = document.getElementById("allow_approve_owner_title_html");
        let t2 = document.getElementById("allow_to_close_title_html");
        let v4 = document.querySelector("#ctl00_GXPagePlaceHolder_F10");
        let v1 = document.querySelector("#ctl00_GXPagePlaceHolder_LSUPT");
        let v2 = document.querySelector("#ctl00_GXPagePlaceHolder_LSUPD");
        let v3 = document.querySelector("#ctl00_GXPagePlaceHolder_LSUPDNM");
        let v6 = document.querySelector("#ctl00_GXPagePlaceHolder_allow_approve_owner_title");
        let v7 = document.querySelector("#ctl00_GXPagePlaceHolder_allow_to_close_title");
        console.log("the title is " + v7.innerText + "and the title 2 is " + v6.innerText);
        if (v6.innerText != "") {
            t1.removeAttribute("hidden");
        }
        if (v7.innerText != "") {
            t2.removeAttribute("hidden");
        }


        if (v1.value.trim() !== "" ||
            v2.value.trim() !== "" ||

            v3.value.trim() !== "") {
            p.style.display = "block";
        } else {
            p.style.display = "none";
        }
        if (v4.value.includes("UPDATE")) {
            b.innerText = "Update";
        }



    </script>
</asp:Content>
