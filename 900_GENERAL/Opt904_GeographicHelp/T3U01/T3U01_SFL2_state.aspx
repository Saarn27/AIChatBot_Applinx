<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T3U01_SFL2_state.aspx.cs" Inherits="T3U01_SFL2_state" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
            <input id="actionBar3" runat="server" />
            <input id="actionBar4" runat="server" />
            <input id="actionBar5" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">STATE</h1>
                <span class="sub-headline separating-line">|</span>
                <h1 class="headline blue-headline">S</h1>
            </div>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="T3U01_SFL2_state_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="col1Src_SEL1" runat="server" />
                                    </gal-input>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>
                                        <input id="col2Src_SEL2" runat="server" />
                                    </gal-input>
                                    <span>%Short description</span>
                                </th>
                                <th>
                                    <gal-input input-size="large" no-description>
                                        <input id="col3Src_SEL3" runat="server" />
                                    </gal-input>
                                    <span>%Long description</span>
                                </th>
                                <th>
                                    <span>Country</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="col5Src_SEL4" runat="server" />
                                    </gal-input>
                                    <span>Country description</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="opt_S" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td>
                                    <span id="Code_COD" runat="server"></span>
                                </td>
                                <td>
                                    <span id="ShortDesc_SDS" runat="server"></span>
                                </td>
                                <td>
                                    <span id="LongDescription_DSC" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Cnt_CNT" runat="server"></span>
                                </td>
                                <td>
                                    <span id="CountryDesc_COUNTRYDESC" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg_EARA" style="margin-right: 20px" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <input id="hiddenField" runat="server" style="display: none;" />
        </div>
    </div>
    <script>
</script>
</asp:Content>
