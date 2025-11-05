<%@ Page MasterPageFile="~/template.master" Inherits="TSU05_ADD" CodeFile="TSU05_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline" id="title_ATITLE" runat="server"></h1>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">

        <div class="main-area-form main-area-form-modal" style="width: 100%">

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input-help label-text="Company:" label-size="medium2" input-size="large2">
                        <input id="company_ACMPG" runat="server" />
                        <input id="compdesc_ACMPD" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input-help label-size="medium2" input-size="large2" dynamic-label>
                        <input id="DynamicLabel1_AGRPT" runat="server" />
                        <input id="group_ACMP" runat="server" />
                        <input id="grpdesc_AGRPD" runat="server" />
                    </gal-input-help>
                </div>
                <div class="column-form">
                    <gal-input-help label-size="medium2" input-size="large2" dynamic-label>
                        <input id="DynamicLabel2_USROL" runat="server" />
                        <input id="user_AUSR" runat="server" />
                        <input id="usr_AUSRD" runat="server" />
                    </gal-input-help>
                </div>
            </div>

            <div id="menuDiv" runat="server" style="width: auto">

                <div class="sub-headline"></div>
                <div id="Card1" class="related-fields-area">
                    <div class="column-form">
                        <gal-input-help label-size="medium2" input-size="large2" dynamic-label>
                            <input id="defaultLabel" runat="server" />
                            <input id="defaultmenu_A_TSGSYS" runat="server" />
                            <input id="defaultdes_DTSGSYS" runat="server" />
                        </gal-input-help>
                    </div>
                    <div class="column-form">
                        <gal-input label-size="medium2" input-size="large2" dynamic-label no-description>
                            <input id="groupMenuName" runat="server" />
                            <input id="gmn_ATSGGMNU" runat="server" />
                        </gal-input>
                    </div>
                    <div class="column-form">
                        <gal-input label-size="medium2" input-size="xsmall" no-description dynamic-label>
                            <input id="menuLang" runat="server" />
                            <select id="menl_ATSGLNG" runat="server">
                                <option value=""></option>
                                <option value="L">Local</option>
                            </select>
                        </gal-input>
                    </div>
                    <div class="column-form">
                        <gal-input label-size="medium2" input-size="xxsmall" no-description dynamic-label>
                            <input id="allowSysSel" runat="server" />
                            <gx:GXCheckBox ID="allowSysSEL_ATSGCOD5" CheckedValue="" UncheckedValue="N" runat="server" />
                        </gal-input>
                    </div>
                </div>

                <div class="sub-headline"></div>

                <div id="Card2" class="related-fields-area">
                    <div class="column-form">
                        <gal-input label-size="medium2" input-size="xxsmall" no-description dynamic-label>
                            <input id="usrLimit" runat="server" />
                            <gx:GXCheckBox ID="userLim_ADA1" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                    <div class="column-form">
                        <gal-input label-size="medium2" input-size="xxsmall" no-description dynamic-label>
                            <input id="remoteUser" runat="server" />
                            <gx:GXCheckBox ID="remote_ATYP1" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                    <div class="column-form">
                        <gal-input label-size="medium2" input-size="xxsmall" no-description dynamic-label>
                            <input id="allowPurchaseData" runat="server" />
                            <gx:GXCheckBox ID="allowp_STSGTYP1" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="sub-headline"></div>

            </div>

            <div class="related-fields-area">
                <div class="column-form">
                    <gal-input label-text="Active dates from:" label-size="medium2" input-size="small2" no-description>
                        <input id="activeDatesFrom_AFDAT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                    <gal-input label-text="To:" label-size="auto" input-size="small2" no-description>
                        <input id="activeDatesTo_ATDAT" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form">
                    <gal-input label-text="Search sequence:" label-size="medium2" input-size="small2" no-description>
                        <input id="searchSequence_ASEQ" runat="server" />
                    </gal-input>
                </div>
                <div class="column-form" id="lastDiv" runat="server">
                    <gal-input label-size="medium2" input-size="small2" dynamic-label no-description>
                        <input id="lastUpdate" runat="server" />
                        <input id="updateuser_AUPDUSR" runat="server" />
                    </gal-input>
                    <gal-input label-text="Last updated date:" label-size="auto" input-size="small2" no-description>
                        <input id="date_AUPDUSR" galtype="date" dateformat="ddmmy" runat="server" />
                    </gal-input>
                </div>
            </div>

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button id="updbtn" runat="server" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[PF10]');">Update</button>
            </div>
        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>

    <script>
        var title = document.querySelector("#ctl00_GXPagePlaceHolder_title_ATITLE");

        if (title) {
            var parts = title.textContent.trim().split("==>");

            if (parts.length === 2) {
                title.innerHTML = parts[0].trim();
                const subTitle = document.createElement("span");
                subTitle.innerText = parts[1].trim();
                subTitle.classList.add("blue-headline", "sub-headline");
                title.parentElement.appendChild(subTitle);
            }
        }
        //console.log(document.querySelector("#ctl00_GXPagePlaceHolder_allowSysSel"))
        function RemoveCard(IdsList, CardToRemove) {
            let CardEmpty = 0;
            for (let i = 0; i < IdsList.length; i++) {
                let TargetElement = document.querySelector(`#ctl00_GXPagePlaceHolder_${IdsList[i]}`)
                if (TargetElement.hasAttribute("hidden")) {
                    CardEmpty++;
                }
            }
            if (CardEmpty === IdsList.length) {
                document.querySelector(`#${CardToRemove}`).remove();
            }
        }

        RemoveCard(["defaultmenu_A_TSGSYS", "gmn_ATSGGMNU", "menuLang", "allowSysSel",], "Card1")
        RemoveCard(["usrLimit", "remoteUser", "allowPurchaseData"], "Card2")

    </script>

</asp:Content>
