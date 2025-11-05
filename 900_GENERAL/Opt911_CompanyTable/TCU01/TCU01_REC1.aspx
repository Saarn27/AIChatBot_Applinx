<%@ Page MasterPageFile="~/template.master" Inherits="TCU01_REC1" CodeFile="TCU01_REC1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">COMPANY GENERAL DATA</h1>
            </div>

            <ul class="nav nav-tabs">
                <li class="nav-item active">
                    <a class="nav-link" href="#1" role="tab" data-toggle="tab">General data</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#2" role="tab" data-toggle="tab" onclick="event.preventDefault();gx_SubmitKey('[pagedn]')">Fields and values</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#3" role="tab" data-toggle="tab" onclick="event.preventDefault();gx_SubmitKey('[pagedn][pagedn]')">Additional library</a>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" role="tabpanel" id="1" style="width: fit-content; margin-top: 10px">
                    <div class="column-form">
                        <div class="spaced-column related-fields-area" style="height: 100%">
                            <gal-input input-size="small" label-size="medium" label-text="Command status:" no-description>
                                <input id="CommandStatus_STS" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="medium" label-text="System:">
                                <input id="System_SYS" runat="server" />
                                <input id="system_SYSD" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="medium" label-text="Type:">
                                <input id="Type_TYP" runat="server" />
                                <input id="type_TYPD" runat="server" />
                            </gal-input>
                            <gal-input input-size="small" label-size="medium" label-text="Company status:" no-description>
                                <select id="TestCode_CODCMP" runat="server">
                                    <option value=""></option>
                                    <option value="T">Test</option>
                                    <option value="R">Remote</option>
                                    <option value="L">Lock</option>
                                </select>
                            </gal-input>
                            <gal-input input-size="xlarge" label-size="medium" dynamic-label>
                                <input id="fromCode" runat="server" />
                                <input id="fromCode_FCMP" runat="server" />
                                <input id="fromCode_NME" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall" label-size="medium" label-text="Company code:" no-description>
                                <input id="CompanyCode_CMP" runat="server" />
                            </gal-input>
                            <gal-input input-size="xlarge" label-size="medium" label-text="Company name:" no-description>
                                <input id="CompanyName_NME1" runat="server" />
                            </gal-input>
                            <gal-input input-size="large" label-size="medium" dynamic-label>
                                <input id="divisionRegion" runat="server" />
                                <input id="divisionRegion_RGN" runat="server" />
                                <input id="divisionRegion_RGND" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column related-fields-area" style="margin-right:0px">
                            <gal-input input-size="xlarge" label-size="medium" label-text="Name:" no-description>
                                <input id="Name_NAME" runat="server" />
                            </gal-input>
                            <gal-input input-size="xlarge" label-size="medium" label-text="Address-1:" no-description>
                                <input id="Address1_AD1" runat="server" />
                            </gal-input>
                            <gal-input input-size="xlarge" label-size="medium" label-text="Address-2:" no-description>
                                <input id="Address2_AD2" runat="server" />
                            </gal-input>
                            <gal-input input-size="large" label-size="medium" label-text="City:" no-description>
                                <input id="City_CITY" runat="server" />
                            </gal-input>
                            <gal-input input-size="small" label-size="medium" label-text="Zip code:" no-description>
                                <input id="ZipCode_ZIP" runat="server" />
                            </gal-input>
                            <gal-input input-size="large" label-size="medium" label-text="Country code:" no-description>
                                <select id="CountryCode_CTR" runat="server" />
                            </gal-input>
                            <gal-input input-size="large" label-size="medium" label-text="State code:" no-description>
                                <select id="StateCode_STAT" runat="server" />
                            </gal-input>
                            <gal-input input-size="large" label-size="medium" label-text="Contact person:" no-description>
                                <input id="ContactPerson_USR" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium,medium" label-size="medium" label-text="Phone / Fax number:" no-description>
                                <input id="PhoneFaxNumber_PHN" runat="server" />
                                <input id="PhoneFaxNumber_FAX" runat="server" />
                            </gal-input>
                            <gal-input input-size="xlarge" label-size="medium" label-text="Email:" no-description>
                                <input id="EMail_MAIL" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                        <button class="btn btn-primary big-button btn-galweb" onclick="gx_SubmitKey('[pf10]');">Update</button>
                    </div>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        var navLinks = document.querySelectorAll("a.nav-link");

        for (var navLinksIndex = 0; navLinksIndex < navLinks.length; navLinksIndex++) {
            navLinks[navLinksIndex].addEventListener("click", (event) => {
                event.preventDefault();
                var currentHref = event.srcElement.attributes.href;
                var navLinks = document.querySelectorAll("a.nav-link");
                var tabPanes = document.querySelectorAll("div.tab-pane");

                for (var index = 0; index < navLinks.length; index++) {
                    if (navLinks[index].attributes.href == currentHref) {
                        navLinks[index].parentElement.classList.add("active");
                        tabPanes[index].classList.add("active");
                    } else {
                        navLinks[index].parentElement.classList.remove("active");
                        tabPanes[index].classList.remove("active");
                    }
                }
            }, false)
        }
    </script>
</asp:Content>
