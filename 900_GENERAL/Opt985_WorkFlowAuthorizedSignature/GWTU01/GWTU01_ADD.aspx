<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU01_ADD.aspx.cs" Inherits="GWTU01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">APPROVED SIGNATORY MAINTENANCE </h1>

        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea">

        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input-help label-text="User:" label-size="medium" input-size="xlarge">
                        <input id="USR" runat="server">
                        <input id="USNAM" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Cost center:" label-size="medium" input-size="xlarge">
                        <input id="CSTCNT" runat="server">
                        <input id="CCDSC" runat="server">
                    </gal-input-help>
                    <gal-input-help label-text="Cost element:" label-size="medium" input-size="large">
                        <input id="CSTELM" runat="server">
                        <input id="CEDSC" runat="server">
                    </gal-input-help>
                    <gal-input label-text="Value:" label-size="medium" input-size="medium" no-description>
                        <input id="SUM" runat="server">
                    </gal-input>
                </div>
            </div>
            <div id="last_p">
            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <gal-input label-text="Last user updated:" label-size="medium" input-size="xlarge">
                        <input id="LSUPD" runat="server">
                        <input id="Iscbr" runat="server">
                    </gal-input>
                    <gal-input label-text="Last date updated:" label-size="medium" input-size="small2" no-description>
                        <input id="LSUPT" runat="server" galtype="date" dateformat="dd/mm/y">
                    </gal-input>
                </div>
            </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="MSG1" runat="server"></span>
                <button id="F10_UPDATEBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>


        </div>
    </div>

    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="f10" runat="server" style="display: none;"></span>
    <script>
        let p = document.getElementById("last_p");
        let v1 = document.querySelector("#ctl00_GXPagePlaceHolder_LSUPD");
        let v2 = document.querySelector("#ctl00_GXPagePlaceHolder_Iscbr");
        let v3 = document.querySelector("#ctl00_GXPagePlaceHolder_LSUPT");
        let v4 = document.querySelector("#ctl00_GXPagePlaceHolder_SUM");
        let v5 = document.querySelector("#ctl00_GXPagePlaceHolder_CSTELM");
        let v6 = document.querySelector("#ctl00_GXPagePlaceHolder_CSTCNT");
        let v7 = document.querySelector("#ctl00_GXPagePlaceHolder_USR");

        if (v1.value.trim() !== "" ||
            v2.value.trim() !== "" ||
            v3.value.trim() !== "") {
            p.style.display = "block";
        } else {
            p.style.display = "none";
        }
        //function for dynamic button
       
        let F10_UPDATE_Btn = document.getElementById("F10_UPDATEBtn");
        console.log("the button is " + F10_UPDATE_Btn.innerText);
        
        if (v1.value.trim() !== "" ||
            v2.value.trim() !== "" ||
            v3.value.trim() !== "" ||
            v4.value.trim() !== "" ||
            v5.value.trim() !== "" ||
            v7.value.trim() !== "" ||
            v6.value.trim() !== "") {
            F10_UPDATE_Btn.innerHTML = "Update";

            }


    </script>
</asp:Content>
