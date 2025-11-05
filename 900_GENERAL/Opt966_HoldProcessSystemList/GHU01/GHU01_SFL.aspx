<%@ Page MasterPageFile="~/template.master" Inherits="GHU01_SFL" CodeFile="GHU01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input value="5=display" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">HOLD PROCESS ACTION </h1>
                <span id="HoldProcessAction_P_TYPE" class="sub-headline blue-headline" runat="server"></span>
                <span class="separating-line">|</span>
                <span id="Acs_DSCL" class="sub-headline blue-headline" runat="server"></span>
            </div>

            <gal-input id="accessories_DSC" label-text="Accessories/die:" label-size="medium" input-size="large">
                <input id="AccessoriesDie_KEY" runat="server" />
                <input id="AccessoriesDie_DESC" runat="server" />
            </gal-input>

            <%-- table that represents the sub file, the name of the table in designer is the id in here --%>
            <div class="table-container">
                <table id="GHU01_SFL_table" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="hold_GHTHLD" runat="server" />
                                </gal-input>
                                <span>Hold</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="holdDescription_GHDSC" runat="server" />
                                </gal-input>
                                <span>%Hold description</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="s_GHTSTS" runat="server" />
                                </gal-input>
                                <span>Status</span>
                            </th>
                            <th columntype="date">
                                <gal-input input-size="small" no-description>
                                    <input id="opn_GHTTOPN" runat="server" galtype="date" dateformat="ddmmy" />
                                </gal-input>
                                <span>Open date</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="open_GHTUSRO" runat="server" />
                                </gal-input>
                                <span>Open user</span>
                            </th>
                            <th columntype="date">
                                <gal-input input-size="small" no-description>
                                    <input id="rls_GHTTRLS" runat="server" galtype="date" dateformat="ddmmy" />
                                </gal-input>
                                <span>Release date</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="releaseuser_GHTUSRR" runat="server" />
                                </gal-input>
                                <span>Release User</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="itemNo_GHTCAT" runat="server" />
                                </gal-input>
                                <span>Item number</span>
                            </th>
                            <th columntype="qty">
                                <span>Line</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="option" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="hld_GHTHLD1" runat="server"></span></td>
                            <td><span id="GHDSC" runat="server"></span></td>
                            <td><span id="NewSet_GHTSTS" runat="server"></span></td>
                            <td columntype="date">
                                <span id="H_1_GHTTOPN" runat="server" galtype="date" dateformat="ddmmy"></span>
                            </td>
                            <td><span id="H_GHTUSRO" runat="server"></span></td>
                            <td columntype="date">
                                <span id="Isiam_GHTTRLS" runat="server" galtype="date" dateformat="ddmmy"></span>
                            </td>
                            <td><span id="Isiam_GHTUSRR" runat="server"></span></td>
                            <td columntype="primaryNumber"><span id="Isiam_GHTCAT" runat="server"></span></td>
                            <td columntype="qty">
                                <span id="Isiam_GHTLINE" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="screenMessage_MSG" runat="server"></span>
                    <button id="f6button" type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Apply hold</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <span id="F6" runat="server" style="display: none;" />

            <div class="legend-div">
                <legend-block text="Hold" color="red"></legend-block>
            </div>
        </div>
    </div>
    <script>
        var headline = document.getElementById("ctl00_GXPagePlaceHolder_Acs_DSCL");
        headline.innerText = headline.innerText.replace("/dies", " / Dies");

        let f6Button = document.getElementById("ctl00_GXPagePlaceHolder_F6")
        if (!f6Button.innerText.toLocaleLowerCase().includes("f6"))
        {
            document.getElementById("f6button").style.display = "none";
        }

    </script>
</asp:Content>
