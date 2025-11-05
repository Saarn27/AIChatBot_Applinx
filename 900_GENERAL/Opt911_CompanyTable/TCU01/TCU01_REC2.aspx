<%@ Page MasterPageFile="~/template.master" Inherits="TCU01_REC2" CodeFile="TCU01_REC2.aspx.cs" Language="C#" %>

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
            <gal-input input-size="large" label-size="xsmall" label-text="System:" no-description>
                <select id="SYS" runat="server" onchange="gx_SubmitKey('[enter]');"></select>
            </gal-input>
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
                <div class="tab-pane active" role="tabpanel" id="2">
                    <div class="column-form">
                        <div class="spaced-column related-fields-area">
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
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME20" runat="server" />
                                <input id="VAL20" runat="server" style="margin-left: -40px;" />
                                <input id="len1_1" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME21" runat="server" />
                                <input id="VAL21" runat="server" style="margin-left: -40px;" />
                                <input id="len1_2" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME22" runat="server" />
                                <input id="VAL22" runat="server" style="margin-left: -40px;" />
                                <input id="len1_3" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME11" runat="server" />
                                <input id="VAL11" runat="server" style="margin-left: -40px;" />
                                <input id="len1_4" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME12" runat="server" />
                                <input id="VAL12" runat="server" style="margin-left: -40px;" />
                                <input id="len1_5" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME13" runat="server" />
                                <input id="VAL13" runat="server" style="margin-left: -40px;" />
                                <input id="len1_6" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME29" runat="server" />
                                <input id="VAL29" runat="server" style="margin-left: -40px;" />
                                <input id="len1_7" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME32" runat="server" />
                                <input id="VAL32" runat="server" style="margin-left: -40px;" />
                                <input id="len1_8" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME17" runat="server" />
                                <input id="VAL17" runat="server" style="margin-left: -40px;" />
                                <input id="len1_9" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME18" runat="server" />
                                <input id="VAL18" runat="server" style="margin-left: -40px;" />
                                <input id="len1_10" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME19" runat="server" />
                                <input id="VAL19" runat="server" style="margin-left: -40px;" />
                                <input id="len1_11" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME23" runat="server" />
                                <input id="VAL23" runat="server" style="margin-left: -40px;" />
                                <input id="len1_12" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME24" runat="server" />
                                <input id="VAL24" runat="server" style="margin-left: -40px;" />
                                <input id="len1_13" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME25" runat="server" />
                                <input id="VAL25" runat="server" style="margin-left: -40px;" />
                                <input id="len1_14" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall,xsmall" label-size="large" dynamic-label no-description>
                                <input style="background-color: white;" id="NAME1" runat="server" />
                                <input id="VAL1" runat="server" style="margin-left: -40px;" />
                                <input id="len1_15" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column">
                            <div class="related-fields-area" style="margin-bottom: 10px">
                                <div class="column-form">
                                    <div class="spaced-column">
                                        <div class="sub-headline">
                                            <span>Field name</span>
                                        </div>
                                    </div>
                                    <div class="spaced-column">
                                        <div class="sub-headline">
                                            <span style="margin-left: 55px;">value</span>
                                        </div>
                                    </div>
                                    <div class="spaced-column">
                                        <div class="sub-headline">
                                            <span style="margin-left: 50px;">lenght</span>
                                        </div>
                                    </div>
                                </div>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME2" runat="server" />
                                    <input id="VAL2" runat="server" />
                                    <input id="len2_1" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME3" runat="server" />
                                    <input id="VAL3" runat="server" />
                                    <input id="len2_2" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME4" runat="server" />
                                    <input id="VAL4" runat="server" />
                                    <input id="len2_3" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME5" runat="server" />
                                    <input id="VAL5" runat="server" />
                                    <input id="len2_4" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME14" runat="server" />
                                    <input id="VAL14" runat="server" />
                                    <input id="len2_5" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME15" runat="server" />
                                    <input id="VAL15" runat="server" />
                                    <input id="len2_6" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME16" runat="server" />
                                    <input id="VAL16" runat="server" />
                                    <input id="len2_7" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME6" runat="server" />
                                    <input id="VAL6" runat="server" />
                                    <input id="len2_8" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME7" runat="server" />
                                    <input id="VAL7" runat="server" />
                                    <input id="len2_9" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME8" runat="server" />
                                    <input id="VAL8" runat="server" />
                                    <input id="len2_10" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME9" runat="server" />
                                    <input id="VAL9" runat="server" />
                                    <input id="len2_11" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME10" runat="server" />
                                    <input id="val10" runat="server" />
                                    <input id="len2_12" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME26" runat="server" />
                                    <input id="VAL26" runat="server" />
                                    <input id="len2_13" runat="server" />

                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME27" runat="server" />
                                    <input id="VAL27" runat="server" />
                                    <input id="len2_14" runat="server" />
                                </gal-input>
                                <gal-input input-size="small,xsmall" label-size="medium" dynamic-label no-description>
                                    <input style="background-color: white;" id="NAME28" runat="server" />
                                    <input id="val28" runat="server" />
                                    <input id="len2_15" runat="server" />
                                </gal-input>
                            </div>
                            <div class="related-fields-area">
                                <gal-input label-size="large" input-size="medium,xsmall" dynamic-label no-description>
                                    <input id="NAME30" runat="server" />
                                    <input id="val30" runat="server" style="margin-left: -40px;" />
                                    <input id="len30" runat="server" />
                                </gal-input>
                                <gal-input label-size="large" input-size="medium,xsmall" dynamic-label no-description>
                                    <input id="NAME31" runat="server" />
                                    <input id="val31" runat="server" style="margin-left: -40px;" />
                                    <input id="len31" runat="server" />
                                </gal-input>
                            </div>
                            <div style="display: flex; justify-content: flex-end;margin-top:10px">
                                <button class="btn btn-primary big-button btn-galweb" onclick="gx_SubmitKey('[pf6]');">Add Field</button>
                                <button class="btn btn-primary big-button btn-galweb" style="margin-left:10px"  onclick="gx_SubmitKey('[pf10]');">Update</button>
                            </div>
                        </div>
                    </div>
                    <div class="message-container ">
                        <span class="invalid-feedback" id="msg" runat="server"></span>
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
