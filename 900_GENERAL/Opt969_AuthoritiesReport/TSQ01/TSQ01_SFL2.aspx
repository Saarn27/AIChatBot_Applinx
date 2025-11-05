<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TSQ01_SFL2.aspx.cs" Inherits="TSQ01_SFL2" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">AUTHORITIES REPORT</h1>

            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-text="Company:" label-size="auto" input-size="large">
                                <input id="Company_CMP" runat="server">
                                <input id="Companydes_CMPDES" runat="server">
                            </gal-input>
                            <gal-input label-text="System:" label-size="auto" input-size="large">
                                <input id="System_SYS" runat="server">
                                <input id="Systemdes_SYSDES" runat="server">
                            </gal-input>
                        </div>
                    </div>
                </div>
                <gal-table-header text="Factory" start-column="5" end-column="6"></gal-table-header>
                <gal-table-header text="Department" start-column="7" end-column="8"></gal-table-header>
                <div class="table-container w-100">
                    <table id="TSQ01_SFL2_1" runat="server" class="table gal6-table-striped less-padding-table no-selection-table w-100">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <gal-input-help input-size="small2" no-description>

                                        <input id="inputaboveUser_USRCODE" runat="server" />
                                    </gal-input-help>
                                    <span>%User</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <gal-input-help input-size="small" no-description>

                                        <input id="inputaboveOpt_OPTION" runat="server" />
                                    </gal-input-help>
                                    <span>option</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>

                                        <input id="inputaboveSub_SOPT" runat="server" />
                                    </gal-input>
                                    <span>Sub option</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <gal-input input-size="xxsmall" no-description>

                                        <input id="inputaboveAut_AUT" runat="server" />
                                    </gal-input>
                                    <span>Authorities</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small" no-description>

                                        <input id="inputaboveFac_FAC" runat="server" />
                                    </gal-input-help>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="medium" no-description>

                                        <input id="inputaboveFac_FCTDSCF" runat="server" />
                                    </gal-input-help>
                                    <span>%Description </span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small" no-description>

                                        <input id="inputaboveDept_DEP" runat="server" />
                                    </gal-input-help>
                                    <span>Code</span>
                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>

                                        <input id="inputaboveDept_FCTDSC" runat="server" />
                                    </gal-input>
                                    <span>%Description</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="User_USRCODE" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="Opt_OPTION" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Sub_SOPT" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="Aut_USRAUT" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Fact_FAC" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Factory_FCTDSCSF" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Dept_DEP" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Department_FCTDSCS" runat="server"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller more-columns></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container ">
                        <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
