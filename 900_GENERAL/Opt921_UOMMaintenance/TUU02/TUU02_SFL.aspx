<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TUU02_SFL.aspx.cs" Inherits="TUU02_SFL" %>

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
                <h1 class="headline">UNIT OF MEASURE TABLE MAINTENANCE</h1>

            </div>

            <div class="table-container">
                <table id="TUU02_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <select id="inputaboveT_HTYP" runat="server"></select>
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="inputaboveTD_HTYPD" runat="server" />
                                </gal-input>
                                <span>Type description</span>
                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="inputaboveU_HUOM" runat="server" />
                                </gal-input-help>
                                <span>Unit of measure</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="inputaboveSD_HUOMS" runat="server" />
                                </gal-input>
                                <span>Short description</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="inputaboveLD_HUOML" runat="server" />
                                </gal-input>
                                <span>Long description</span>
                            </th>
                            <th>
                                <span>Exact</span>
                            </th>
                            <th columntype="primaryNumber">
                                <span>Factor</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="Opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="Type_TYP" runat="server"></span>
                            </td>
                            <td>
                                <span id="TypeD_TYPD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Uom_UOM" runat="server"></span>
                            </td>
                            <td>
                                <span id="ShortDesc_UOMS" runat="server"></span>
                            </td>
                            <td>
                                <span id="LongDescription_UOML" runat="server"></span>
                            </td>
                            <td>
                                <span id="Exc_EXC" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Factor_FACT" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <div class="legend-div">
        <legend-block text="Base" color="white"></legend-block>
    </div>

    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
