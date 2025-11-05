<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRU05_BADD.aspx.cs" Inherits="GHRU05_BADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Title_des" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>

    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input input-size="small2" label-size="small" label-text="Zip code:" no-description>
                    <input id="ZipCode_B_GHRZIP" runat="server" />
                </gal-input>
                <div class="line"></div>
                <gal-input input-size="xxlarge" label-size="small" label-text="Salesman:" no-description>
                    <select id="Salesman_B_GHRGRV" runat="server" ></select>
                </gal-input>
                <gal-input input-size="small2" label-size="small" label-text="Partner:" no-description>
                    <input id="Partner_B_GHRES4" runat="server" />
                </gal-input>
                <div class="line"></div>

                <gal-input input-size="small2" label-size="small" label-text="Update date:" no-description>
                    <input id="UpdateDate_B_GHRTOP" runat="server" galtype="date" dateformat="dd/mm/yy" />
                </gal-input>
                <gal-input input-size="large" label-size="small" label-text="Update user:">
                    <input id="UpdateUser_B_USER" runat="server" />
                    <input id="Isadma_B_USER" runat="server" />
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="B_MSG" runat="server"></span>
                <button type="button" id="btnf10" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"></button>
            </div>
            <span id="f10btntext" runat="server" style="display: none"></span>
        </div>
    </div>
    <script>
        var btn10T = document.getElementById("ctl00_GXPagePlaceHolder_f10btntext");
        if (btn10T.innerText == "") {
            document.getElementById("btnf10").style.display = "none";
        } else {
            if (btn10T.innerText == "U") {
                document.getElementById("btnf10").innerText = "Update";
            } else {
                document.getElementById("btnf10").innerText = "Add";
            }
        }

    </script>
</asp:Content>
