<%@ Page MasterPageFile="~/template.master" Inherits="TCU01_REC22" CodeFile="TCU01_REC22.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <gal-input input-size="small" no-description>
                    <span class="headline" id="Headline">Company Fields And Values </span>
                </gal-input>
            </div>
            <gal-input-help input-size="small" label-size="xsmall" label-text="System:" no-description>
                <input id="SYS" runat="server" />
            </gal-input-help>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link" href="#1" role="tab" data-toggle="tab" onclick="event.preventDefault();gx_SubmitKey('[pageup]')">General data</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#2" role="tab" data-toggle="tab">Fields and values</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#3" role="tab" data-toggle="tab" onclick="event.preventDefault();gx_SubmitKey('[pagedn][pagedn]')">Additional library</a>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" role="tabpanel" id="2" style="width: fit-content">
                    <div class="related-fields-area" style="width:500px; margin-top: 10px">

                        <div class="column-form">
                            <div class="spaced-column">
                                <div class="sub-headline">
                                    <span>Field name</span>
                                </div>
                            </div>
                            <div class="spaced-column">
                                <div class="sub-headline">
                                    <span style="margin-left: 70px;">value</span>
                                </div>
                            </div>
                            <div class="spaced-column">
                                <div class="sub-headline">
                                    <span style="margin-left: 3px;">lenght</span>
                                </div>
                            </div>
                        </div>
                        <div class="spaced-column">

                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME33" runat="server" />
                                <input id="VAL33" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_1" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME34" runat="server" />
                                <input id="VAL34" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_2" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME35" runat="server" />
                                <input id="VAL35" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_3" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME36" runat="server" />
                                <input id="VAL36" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_4" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME37" runat="server" />
                                <input id="VAL37" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_5" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME39" runat="server" />
                                <input id="VAL39" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_6" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME40" runat="server" />
                                <input id="VAL40" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_7" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME41" runat="server" />
                                <input id="VAL41" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_8" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME42" runat="server" />
                                <input id="VAL42" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_9" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME43" runat="server" />
                                <input id="VAL43" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_10" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME44" runat="server" />
                                <input id="VAL44" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_11" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME45" runat="server" />
                                <input id="VAL45" runat="server" style="margin-left: -40px;" />
                                <input id="LEN_12" runat="server" />
                            </gal-input>
                        </div>
                    </div>
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg" runat="server"></span>
                        <button class="btn btn-primary big-button btn-galweb" onclick="event.preventDefault();gx_SubmitKey('[pf6]');">Add Field</button>
                        <button class="btn btn-primary big-button btn-galweb" style="margin-left: 10px" onclick="event.preventDefault();gx_SubmitKey('[pf10]');">Update</button>
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
