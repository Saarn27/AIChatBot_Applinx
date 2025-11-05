<%@ Page MasterPageFile="~/template.master" Inherits="XT0HU01_SFL1" CodeFile="XT0HU01_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server"> HARMONIZE CODE PER COUNTRY / REGION APPLICation / SON</h1>
            </div>

            <div class="table-container">
                <div class="column-form related-fields-area" style="width: auto;">

                    <gal-input input-size="xlarge" label-size="small" dynamic-label>
                        <input id="ctrRegHeader_KOT" runat="server" />
                        <%--<input id="cRCode_CNTRSK" runat="server" />--%>
                        <input id="ctrReg_CNTRS" runat="server" />
                        <input id="topDescription_CNTRSD" runat="server" />
                    </gal-input>

                </div>
                <table id="XT0HU01_SFL1_1" runat="server" class="table gal6-table-striped less-padding-table"   >
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="asiSel_SEL1" input-size="small" runat="server" />
                                </gal-input>
                                <span>ASI</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="codeSel_SEL2" input-size="small" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="descSel_SEL3" input-size="small" runat="server" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="harmSel_SEL4" input-size="small" runat="server" />
                                </gal-input>
                                <span>Harmonize Code</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="amountSel_SEL5" input-size="small" runat="server" />
                                </gal-input>
                                <span>Harmonize</span>

                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="sonDescSel_SEL6" input-size="small" runat="server" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_SEL" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>

                            <td>
                                <span id="asi_CODEAS" runat="server"></span></td>
                            <td><span id="code_KEY" runat="server"></span></td>
                            <td><span id="description_KEYD" runat="server"></span></td>
                            <td><span id="harm_HARMC" runat="server" class="no-color"></span></td>
                            <td><span id="harmonize_HARMN" runat="server"></span></td>
                            <td><span id="sonDescription_HARMD" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>

                <input style="display: none;" id="pageIndex" runat="server" />

                <div class="message-container message-container-with-btn">
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add </button>
                </div>
            </div>

            <input id="hiddenField" runat="server" style="display: none;" />

        </div>
    </div>
    <%-- <script>
        var header = document.getElementById('ctl00_GXPagePlaceHolder_userGroupHeader')
        if (header.innerText.trim() == 'Group') {
            header.innerText = 'Group/Delegated'

        }
        else {
            header.innerText = 'User'
        }
    </script>--%>
</asp:Content>
