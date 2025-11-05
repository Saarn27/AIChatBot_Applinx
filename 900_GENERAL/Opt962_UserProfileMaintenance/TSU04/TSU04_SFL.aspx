<%@ Page MasterPageFile="~/template.master" Inherits="TSU04_SFL" CodeFile="TSU04_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
            <input id="actionBar3" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">USER DATA MAINTENANCE </h1>
            </div>
            <gal-input label-size="small" label-text="User status:" input-size="medium" no-description>
                <select id="UserStatus_STS" runat="server">
                    <option value=""></option>
                    <option value="C">Closed</option>
                    <option value="D">Disabled</option>
                    <option value="E">Enabled</option>
                </select>
            </gal-input>
            <div style="width: fit-content">
                <div class="table-container">
                    <table id="TSU04_SFL_1" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="small2" no-description>
                                        <input id="col1Src_USR" runat="server" />
                                    </gal-input>
                                    <span>%User</span>
                                </th>
                                <th>
                                    <gal-input input-size="large" no-description>
                                        <input id="col2Src_NME" runat="server" />
                                    </gal-input>
                                    <span>%User name</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="col3Src_CMPD" runat="server" />
                                    </gal-input>
                                    <span>Defualt company</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="col4Src_TYP" runat="server" />
                                    </gal-input>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="col5Src_CLASS" runat="server" />
                                    </gal-input>
                                    <span>Class</span>
                                </th>
                                <th>
                                    <gal-input input-size="small2" no-description>
                                        <input id="col6Src_OUTQ" runat="server" />
                                    </gal-input>
                                    <span>Print outq</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="col7Src_WHS" runat="server" />
                                    </gal-input>
                                    <span>Warehouse</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="col8Src_ACT" runat="server" />
                                    </gal-input>
                                    <span>Action</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="col1_S" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td>
                                    <span id="User_USR" runat="server"></span>
                                </td>
                                <td>
                                    <span id="UserName_NME" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Dftco_CMPD" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Typ_TYP" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Class_CLASS" runat="server"></span>
                                </td>
                                <td>
                                    <span id="PrintOutq_OUTQ" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Whs_WHS" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Act_ACT" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="MSGU" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
            <div class="legend-div">
                <legend-block text="Closed" color="red"></legend-block>
                <legend-block text="Disabled" color="purple"></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
