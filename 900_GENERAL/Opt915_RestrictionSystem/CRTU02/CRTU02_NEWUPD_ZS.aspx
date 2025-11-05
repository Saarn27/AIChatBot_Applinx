<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="CRTU02_NEWUPD_ZS.aspx.cs" Inherits="CRTU02_NEWUPD_ZS" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline no-title-case" id="title_ADD_TITLE" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-text="Zip Code:" label-size="small" input-size="small" no-description>
                        <input id="zip_ZIPU" runat="server" />
                    </gal-input>
                    <gal-input-help label-text="Salesman:" label-size="small" input-size="large" no-description>
                        <select id="salesman_SLSMNU" runat="server"></select>
                    </gal-input-help>
                    <gal-input-help label-text="State:" label-size="small" input-size="medium" no-description>
                        <select id="state_STATU" runat="server"></select>
                    </gal-input-help>
                    <gal-input-help label-text="Region:" label-size="small" input-size="medium" no-description>
                        <select id="region_RGNU" runat="server"></select>
                    </gal-input-help>
                    <gal-input label-text="City:" label-size="small" input-size="large" no-description>
                        <input id="city_CITYU" runat="server" />
                    </gal-input>
                    <gal-input label-text="County:" label-size="small" input-size="large" no-description>
                        <input id="county_NME1U" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="centered-flex">
                <gal-input label-text="Last Update:" label-size="small" input-size="small" no-description>
                    <input galtype="date" dateformat="ddmmyy" id="lastUpdateDate_TUPDU" runat="server" />
                </gal-input>
                <gal-input input-size="small" no-description>
                    <input id="lastUpdateTime_TIMEU" runat="server" />
                </gal-input>
                <gal-input input-size="large">
                    <input id="lastUpdateUser_USRUBU" runat="server" />
                    <input id="lastUpdateUser_USRUBNMEU" runat="server" />
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errMsg_MSG_ADDUPD" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
         <script>
             var titleNew = document.getElementById("ctl00_GXPagePlaceHolder_title_ADD_TITLE").innerText.toString();
            var stringArr = titleNew.replace(/\u00a0/g, " ").split(" ");
            titleNew = "";
            console.log(stringArr);
            var i = 0;
            for (i = 0; i < stringArr.length; i++) {
                if (i == 1) {
                    titleNew += stringArr[i].toUpperCase() + " ";
                } else {
                    titleNew += stringArr[i].charAt(0).toUpperCase() + stringArr[i].substring(1).toLowerCase() + " ";
                }
                console.log(titleNew);
            }
             document.getElementById("ctl00_GXPagePlaceHolder_title_ADD_TITLE").innerText = titleNew;
             console.log(document.getElementById("ctl00_GXPagePlaceHolder_title_ADD_TITLE").innerText);
         </script>
    </div>
</asp:Content>
