<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWU26E_CTL.aspx.cs" Inherits="GWU26E_CTL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">WORK FLOW ERRORS </h1>
                <span class="sub-headline blue-headline">MAINTENANCE </span>
            </div>
            <div class="wrapper-container">
            <div class="column-form related-fields-area w-100" style="margin-bottom: 10px;">
                <div class="spaced-column">
                    <div class="repo_user">
                        <gal-input-help label-text="Responsible user:" label-size="large" input-size="xlarge" ne-description>
                            <input id="SLUSR" runat="server">
                            <input id="SLUSRN" runat="server">
                        </gal-input-help>
                    </div>
                </div>
            </div>

            <div class="table-container">
                <table id="GWU26E_CTL_1" runat="server" class="table gal6-table-striped less-padding-table ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="SLTYP" runat="server" />
                                </gal-input-help>
                                <span>Type</span>

                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="medium" no-description>
                                    <input id="SLDOC" runat="server" />
                                </gal-input>
                                <span>Document number</span>

                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="SLDSC" runat="server" />
                                </gal-input>
                                <span>%Description</span>

                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="SLERR" runat="server" />
                                </gal-input>
                                <span>%Error</span>

                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="SLTYP1" runat="server" />
                                </gal-input>
                                <span>Type</span>

                            </th>
                            <th columntype="primaryNumber">
                                <span>Work flow number</span>

                            </th>
                            <th>
                                <span>Reponsible user</span>

                            </th>
                            <th columntype="date">
                                <span>Date</span>

                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="WFTYP" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="DOCN" runat="server"></span>
                            </td>
                            <td>
                                <span id="WFDSC" runat="server"></span>
                            </td>
                            <td>
                                <span id="ERR" runat="server"></span>
                            </td>
                            <td>
                                <span id="TYP" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="WFNUM" runat="server"></span>
                            </td>
                            <td>
                                <span id="USRN" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="DAT" galtype="date" dateformat="ddmmy" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
                </div>
            <div class="legend-div">
                <legend-block text="Locked" color="yellow" text-color></legend-block>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container ">
                <span class="invalid-feedback" id="MSG" runat="server"></span>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
