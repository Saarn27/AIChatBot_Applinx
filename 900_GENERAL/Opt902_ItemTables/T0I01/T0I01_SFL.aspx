<%@ Page MasterPageFile="~/template.master" Inherits="T0I01_SFL" CodeFile="T0I01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">

            <div class="headline-container">
                <h1 class="headline">HARMOMIZE TARIF CODES</h1>
            </div>
            <div style="width: fit-content">
                <%--<div class="centered-flex">--%>
                    <div class="table-container" style="margin-bottom: 5px; width: max-content"">
                        <table id="T0I01_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                            <thead>
                                <tr class="grid-header">
                                    <th>
                                        <gal-input input-size="xxsmall" no-description>
                                            <input id="applicationSelDsc_S_APP_D" runat="server" />
                                        </gal-input>
                                        <span>%App Code</span>
                                    </th>
                                    <th>
                                        <gal-input input-size="medium" no-description>
                                            <input id="applicationSel_S_APP" runat="server" />
                                        </gal-input>
                                        <span>%App Description</span>
                                    </th>
                                    <th>
                                        <span>Code</span>
                                    </th>
                                    <th class="label-medium">
                                        <span>Harmonize</span>
                                    </th>
                                    <th class="label-medium" style="border: 20px solid black;">
                                        <span>Description</span>
                                    </th>
                                    <th>
                                        <span>%App Code</span>
                                    </th>
                                    <th>
                                        <span>%App Description</span>
                                    </th>
                                    <th>
                                        <span>Code</span>
                                    </th>
                                    <th class="label-medium">
                                        <span>Harmonize</span>
                                    </th>
                                    <th class="label-medium">
                                        <span>Description</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><span id="app_LIN" runat="server"></span></td>
                                    <td><span id="appDsc_Dsc" runat="server"></span></td>
                                    <td>
                                        <gal-input input-size="xxsmall" no-description>
                                            <input id="code_SERIAL" runat="server" />
                                        </gal-input>
                                    </td>
                                    <td><span id="harmonize_COD_H" runat="server"></span></td>
                                    <td style="border: 20px solid black;"><span id="description_TERHAR" runat="server"></span></td>

                                    <td><span id="app_LIN2" runat="server"></span></td>
                                    <td><span id="appDsc_Dsc2" runat="server"></span></td>
                                    <td>
                                        <gal-input input-size="xxsmall" no-description>
                                            <input id="code_SERIAL2" runat="server" />
                                        </gal-input>
                                    </td>
                                    <td><span id="harmonize_COD_H2" runat="server"></span></td>
                                    <td><span id="description_TERHAR2" runat="server"></span></td>
                                </tr>
                            </tbody>
                        </table>
                        <grid-scroller></grid-scroller>
                    </div>
                <%--</div>--%>

                <div class="centered-flex">
                    <div class="table-container" style="margin-bottom: 5px">
                        <table no-grid-scroller="true" id="T0I01_SFL_2" runat="server" class="table gal6-table-striped less-padding-table">
                            <thead>
                                <tr class="grid-header">
                                    <th ><span>Code</span></th>
                                    <th><span>Harmonize</span></th>
                                    <th><span>Description</span></th>
                                    <th><span>Code</span></th>
                                    <th><span>Harmonize</span></th>
                                    <th><span>Description</span></th>
                                    <th><span>Code</span></th>
                                    <th><span>Harmonize</span></th>
                                    <th><span>Description</span></th>
                                    <th><span>Code</span></th>
                                    <th><span>Harmonize</span></th>
                                    <th><span>Description</span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><span class="no-color" id="code_N" runat="server"></span></td>
                                    <td><span id="harmonize_A" runat="server"></span></td>
                                    <td><span id="description_D" runat="server"></span></td>
                                    <td><span class="no-color" id="code_N2" runat="server"></span></td>
                                    <td><span id="harmonize_A2" runat="server"></span></td>
                                    <td><span id="description_D2" runat="server"></span></td>
                                    <td><span class="no-color" id="code_N3" runat="server"></span></td>
                                    <td><span id="harmonize_A3" runat="server"></span></td>
                                    <td><span id="description_D3" runat="server"></span></td>
                                    <td><span class="no-color" id="code_N4" runat="server"></span></td>
                                    <td><span id="harmonize_A4" runat="server"></span></td>
                                    <td><span id="description_D4" runat="server"></span></td>
                                </tr>
                            </tbody>
                        </table>
                        <grid-scroller more-columns></grid-scroller>
                    </div>

                    <div style="align-self: flex-end; margin-bottom: 50px; margin-left: 50px;" class="message-container-with-btn">
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
                    </div>
                </div>
            </div>
    </div>
    <input style="display: none;" id="pageIndex" runat="server" />
    <input style="display: none;" id="hiddenField" runat="server" />
    </div>

    <script>
        function pageOnLoad(gx_event) {
            const grids = Array.from(document.querySelectorAll(".grid-scroller")).slice(1, 6);

            grids.forEach(grid => {
                grid.style.setProperty("display", "none");
            });
        }
    </script>

</asp:Content>
