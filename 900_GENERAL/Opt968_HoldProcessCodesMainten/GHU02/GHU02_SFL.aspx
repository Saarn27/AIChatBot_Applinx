<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHU02_SFL.aspx.cs" Inherits="GHU02_SFL" %>

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
                <h1 class="headline">HOLD CODE TABLE</h1>
                <span class="sub-headline blue-headline">Maintenance</span>
            </div>
            <div class="table-container">
                <table id="GHU02_SFL_1" runat="server" class="table gal6-table-striped less2-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <select id="inputaboveEnt_GHTYPES" runat="server"></select>
                                </gal-input>
                                <span>Entity</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="inputaboveEntDes_DSCS" runat="server" />
                                </gal-input>
                                <span>Entity description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="inputaboveHld_GHHLDS" runat="server" />
                                </gal-input>
                                <span>Hold code</span>
                            </th>
                            <th>
                                <span>Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="inputaboveAct_GHEXPS" runat="server" />
                                </gal-input>
                                <span>Action code</span>
                            </th>
                            <th>
                                <span>Sub option authority</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="inputaboveRsn_GHRSNS" runat="server" />
                                </gal-input>
                                <span>Reason code needed</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="inputaboveHldVal_GHFHLDS" runat="server" />
                                </gal-input>
                                <span>Hold code value</span>
                            </th>
                            <th>
                                <span>External system</span>
                            </th>
                            <th>
                                <span>Omit hold</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="inputaboveAe_GHACTES" runat="server" />
                                </gal-input>
                                <span>Action entity</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="Opt_SLT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="Ent_GHTYPE" runat="server"></span>
                            </td>
                            <td>
                                <span id="EntityDesc_DSC" runat="server"></span>
                            </td>
                            <td>
                                <span id="Hld_GHHLD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_GHDSC" runat="server"></span>
                            </td>
                            <td>
                                <span id="Act_GHEXP" runat="server"></span>
                            </td>
                            <td>
                                <span id="Opt_GHSOPT" runat="server"></span>
                            </td>
                            <td>
                                <span id="Rsn_GHRSN" runat="server"></span>
                            </td>
                            <td>
                                <span id="HldVal_GHFHLD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Ext_GHEXT" runat="server"></span>
                            </td>
                            <td>
                                <span id="Omt_GHCODC" runat="server"></span>
                            </td>
                            <td>
                                <span id="AE_GHACTE" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>


</script>
</asp:Content>
