<%@ Page MasterPageFile="~/template.master" Inherits="TCU01_REC3" CodeFile="TCU01_REC3.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <gal-input input-size="small" no-description>
                    <h1 class="headline" id="Headline" runat="server">ADDTIONAL LIBRARY TO LIBRARY LIST</h1>
                </gal-input>
            </div>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link" href="#1" role="tab" data-toggle="tab" onclick="event.preventDefault();gx_SubmitKey('[pageup][pageup]')">General data</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#2" role="tab" data-toggle="tab" onclick="event.preventDefault();gx_SubmitKey('[pageup]')">Fields and values</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#3" role="tab" data-toggle="tab">Additional library</a>
                </li>
            </ul>
            <div class="tab-content" style="overflow-y: auto;">
                <div class="tab-pane active" role="tabpanel" id="3" style="width: fit-content">
                    <div class="column-form" style="margin-bottom: 10px">
                        <div class="spaced-column related-fields-area">
                            <gal-input input-size="medium" label-size="small" label-text="Library - 1:" no-description>
                                <input id="Library1_LIBL1" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 2:" no-description>
                                <input id="Library2_LIBL2" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 3:" no-description>
                                <input id="Library3_LIBL3" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 4:" no-description>
                                <input id="Library4_LIBL4" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 5:" no-description>
                                <input id="Library5_LIBL5" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 6:" no-description>
                                <input id="Library6_LIBL6" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 7:" no-description>
                                <input id="Library7_LIBL7" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 8:" no-description>
                                <input id="Library8_LIBL8" runat="server" />
                            </gal-input>
                        </div>
                        <div class="spaced-column related-fields-area" style="height: 100%; margin-right: 0px">

                            <gal-input input-size="medium" label-size="small" label-text="Library - 9:" no-description>
                                <input id="Library9_LIBL9" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 10:" no-description>
                                <input id="Library10_LIBL10" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 11:" no-description>
                                <input id="Library11_LIBL11" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 12:" no-description>
                                <input id="Library12_LIBL12" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 13:" no-description>
                                <input id="Library13_LIBL13" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 14:" no-description>
                                <input id="Library14_LIBL14" runat="server" />
                            </gal-input>
                            <gal-input input-size="medium" label-size="small" label-text="Library - 15:" no-description>
                                <input id="Library15_LIBL15" runat="server" />
                            </gal-input>
                            <br>
                        </div>
                    </div>
                    <div class="related-fields-area" style="width: 100%">
                        <gal-input input-size="medium" label-size="small" label-text="Current library:" no-description>
                            <input id="CurrentLibrary_CURLIB" runat="server" />
                        </gal-input>
                    </div>


                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg" runat="server"></span>
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
