<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSU04_SFLC.aspx.cs" Inherits="TSU04_SFLC" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">USER DATA MAINTENANCE </h1>
                <h1 class="headline">|</h1>
                <span class="sub-headline blue-headline" id="titleStatus" runat="server"></span>
            </div>
            <div class="column-form related-fields-area" style="width:fit-content">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-size="xsmall2" input-size="medium" label-text="User type:">
                            <input id="UserType_TYP" runat="server" />
                            <input id="U_TYPD" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" input-size="medium" label-text="User:" no-description>
                            <input id="User_USR" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" input-size="large" label-text="User name:" no-description>
                            <input id="UserName_NME" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>
            <div>
                <tabs-list>
                    <div id="tab_S1" text="General"></div>
                    <div id="tab_S2" text="Attributes"></div>
                    <div id="tab_S3" text="E-mail/Path"></div>
                    <div id="tab_S4" text="Manu/Language"></div>
                    <div id="tab_S5" text="Connections" active="true"></div>
                </tabs-list>

                <div class="tab-content" style="width: fit-content">
                    <div class="tab-pane active" id="5">
                        <div class="table-container">
                            <table id="TSU04_SFLC_1" runat="server" class="table gal6-table-striped">
                                <thead>
                                    <tr class="grid-header">
                                        <th>
                                            <gal-input input-size="xsmall" no-description>
                                                <input id="col1Src_USR" runat="server" />
                                            </gal-input>
                                            <span>Type</span>
                                        </th>
                                        <th>
                                            <gal-input input-size="small" no-description>
                                                <input id="col2Src_NME" runat="server" />
                                            </gal-input>
                                            <span>Group</span>
                                        </th>
                                        <th>
                                            <span>Company</span>
                                        </th>
                                        <th columntype="date">
                                            <span>Date to</span>
                                        </th>
                                        <th columntype="primaryNumber">
                                            <span>Sequence</span>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <span id="Type_TYPE" runat="server"></span>
                                        </td>
                                        <td>
                                            <span id="GroupDelg_GRP" runat="server"></span>
                                        </td>
                                        <td>
                                            <span id="Company_CMP" runat="server"></span>
                                        </td>
                                        <td columntype="date">
                                            <span id="DateTo_DATETO" runat="server" galtype="date" dateformat="yymmdd"></span>
                                        </td>
                                        <td columntype="primaryNumber">
                                            <span id="Seq_SEQ" runat="server"></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <grid-scroller></grid-scroller>
                            <input style="display: none;" id="pageIndex" runat="server" />
                            <div class="message-container message-container-with-btn">
                                <span class="invalid-feedback" id="MSG" runat="server"></span>
                                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Maintenance</button>
                            </div>
                        </div>
                        <div class="legend-div">
                            <legend-block text="Not active" color="green"></legend-block>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
