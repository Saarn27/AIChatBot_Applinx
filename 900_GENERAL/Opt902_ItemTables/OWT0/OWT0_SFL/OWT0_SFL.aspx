<%@ Page MasterPageFile="~/template.master" Inherits="OWT0_SFL" CodeFile="OWT0_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="application_KOT" runat="server"></h1>
            </div>
           <div class="table-container"><table id="OWT0_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="small" no-description>
                                <input id="typ_SEL1" runat="server" />
                            </gal-input>
                            <span>Type</span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="large" no-description>
                                <input id="description_SEL2" runat="server" />
                            </gal-input>
                            <span>%Description</span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="xsmall" no-description>
                                <input id="gr_SEL3" runat="server" />
                            </gal-input>
                            <span id="gr_KOT1" runat="server"></span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="xsmall" no-description>
                                <input id="ln_SEL4" runat="server" />
                            </gal-input>
                            <span id="ln" runat="server"></span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="xsmall" no-description>
                                <input id="fa_SEL5" runat="server" />
                            </gal-input>
                            <span id="fa" runat="server"></span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="xsmall" no-description>
                                <input id="tp_SEL6" runat="server" />
                            </gal-input>
                            <span id="tp" runat="server"></span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="xsmall" no-description>
                                <input id="dsp_SEL7" runat="server" />
                            </gal-input>
                            <span id="dsp" runat="server"></span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td>
                            <span id="typ_COD" runat="server"></span>
                        </td>
                        <td>
                            <span id="description_SDS" runat="server"></span>
                        </td>
                        <td>
                            <span id="gr_GRP" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                        <td>
                            <span id="ln_LIN" runat="server"></span>
                        </td>
                        <td>
                            <span id="fa_FAC" runat="server"></span>
                        </td>
                        <td>
                            <span id="tp_TYP1" runat="server"></span>
                        </td>
                        <td>
                            <span id="dsp_DSP" runat="server"></span>
                            
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />

            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        var thText5 = document.getElementById("ctl00_GXPagePlaceHolder_application_KOT");
        thText5.innerText = thText5.innerText.trim().replace("=", " = ");


        var thText1 = document.getElementById("ctl00_GXPagePlaceHolder_application_KOT");
        if (thText1) {
            if (thText1.innerText.toUpperCase().includes("GRP")) {
                thText1.innerText = "N = Project Group";
            }
        }

        var thText = document.getElementById("ctl00_GXPagePlaceHolder_gr_KOT1");
        if (thText) {
            switch (thText.innerText) {
                case "GR":
                    thText.innerText = "Group";
                    break;

                case "AP":
                    thText.innerText = "Application";
                    break;

                default:
                    break;
            }
        }


        var thText1 = document.getElementById("ctl00_GXPagePlaceHolder_ln");
        if (thText1) {
            switch (thText1.innerText) {
                case "Ln":
                    thText1.innerText = "Line";
                    break;
                default:
                    break;
            }
        }

        var thText2 = document.getElementById("ctl00_GXPagePlaceHolder_fa");
        if (thText2) {
            switch (thText2.innerText) {
                case "Fa":
                    thText2.innerText = "Factory";
                    break;
                default:
                    break;
            }
        }

        var thText3 = document.getElementById("ctl00_GXPagePlaceHolder_tp");
        if (thText3) {
            switch (thText3.innerText) {
                case "Tp":
                    thText3.innerText = "Type";
                    break;
                case "":
                    thText3.innerText = "";
                    break;
                default:
                    break;
            }
        }

        var thText4 = document.getElementById("ctl00_GXPagePlaceHolder_dsp");
        if (thText4) {
            switch (thText4.innerText) {
                case "Dsp":
                    thText4.innerText = "Display";
                    break;
                case "":
                    thText4.innerText = "";
                    break;
                default:
                    break;
            }
        }

    </script>
</asp:Content>
