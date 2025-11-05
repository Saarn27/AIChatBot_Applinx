<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXLSU01_SFL.aspx.cs" Inherits="GXLSU01_SFL" %>

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
                <h1 class="headline">IMPORT TO EXCEL MAINTENANCE </h1>

            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column ">
                        <gal-input label-text="Number of record:" label-size="medium" input-size="xsmall" no-description>
                            <input id="NumberOfRecord_SNUMREC" runat="server">
                        </gal-input>
                    </div>
                </div>

                <div class="table-container">
                    <table id="GXLSU01_SFL_1" runat="server" class="table gal6-table-striped less-padding-table  ">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>
                                        <input id="Filter_Above_Subject_SSUB" runat="server" />
                                    </gal-input>
                                    <span>Subject</span>

                                </th>
                                <th>
                                    <span>Parameter number</span>

                                </th>
                                <th>
                                    <gal-input input-size="small" no-description>
                                        <input id="Filter_Above_User_SUSER" runat="server" />
                                    </gal-input>
                                    <span>User</span>

                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>
                                        <input id="Filter_Above_Template_STEMP" runat="server" />
                                    </gal-input>
                                    <span>Template name       </span>

                                </th>
                                <th columntype="date">
                                    <span>Date</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <span>System code</span>

                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="Opt_SELECT" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td>
                                    <span id="Subject_SSUB" runat="server"></span>
                                </td>
                                <td>
                                    <span id="Pramnum_SNUM" runat="server"></span>
                                </td>
                                <td>
                                    <span id="User_SUSER" runat="server"></span>
                                </td>
                                <td>
                                    <span id="TemplateName_STMP" runat="server"></span>
                                </td>
                                <td columntype="date">
                                    <span id="Date_SDATE" runat="server" galtype="date" dateformat="dd/mm/yy"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="Sys_SIMC" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg_MSGS" runat="server"></span>
                        <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />

        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        var btn = document.querySelector("#ctl00_GXPagePlaceHolder_ctl17");
        btn.setAttribute("onclick", "gx_SubmitKey('[PF3]')");

      

    </script>
</asp:Content>
