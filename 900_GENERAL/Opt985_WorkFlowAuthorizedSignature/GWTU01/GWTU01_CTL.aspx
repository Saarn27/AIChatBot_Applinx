<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GWTU01_CTL.aspx.cs" Inherits="GWTU01_CTL" %>

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
                <h1 class="headline">Approved Signatory Maintenance</h1>

            </div>

            <div class="table-container">
                <table id="GWTU01_CTL_1" runat="server" class="table gal6-table-striped less-padding-table  ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input-help input-size="medium" no-description>
                                    <input id="SEL2" runat="server" />

                                </gal-input-help>
                                <span>User</span>

                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="SEL3" runat="server" />
                                </gal-input>
                                <span>%Name</span>

                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="SEL5" runat="server" />
                                </gal-input-help>
                                <span>Cost center</span>

                            </th>
                            <th columntype="primaryNumber">
                                <gal-input-help input-size="small" no-description>
                                    <input id="SEL4" runat="server" />
                                </gal-input-help>
                                <span>Cost element</span>

                            </th>
                           
                            <th  columntype="primaryNumber">
                                 <div style="display: flex; gap: 10px;">
                                <gal-input input-size="xxsmall" no-description>
                                    <select id="SEL6" runat="server">
                                    <option value=""> </option>
                                    <option value=">">></option>
                                    <option value="<"><</option>
                                    <option value="=">=</option>
                                    </select>
                                </gal-input>
                                <gal-input input-size="medium" no-description>
                                    <input id="SEL7" runat="server" />
                                </gal-input>
                                </div>
                                <span>Value</span>

                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="optBar" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="USR" runat="server"></span>
                            </td>
                            <td>
                                <span id="USRNM" runat="server"></span>
                            </td>
                            <td>
                                <span id="CSTCNT" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="CSTELM" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="SUM" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
        <div class="legend-div">
            <legend-block text="Closed" color="red"></legend-block>
        </div>
    </div>
    <input style="display: none;" id="pageIndex" runat="server" />
    <div class="message-container ">
        <span class="invalid-feedback"></span>
    </div>
    </div>
  </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>


    </script>
</asp:Content>
