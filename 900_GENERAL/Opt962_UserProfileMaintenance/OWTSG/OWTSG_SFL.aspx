<%@ Page MasterPageFile="~/template.master" Inherits="OWTSG_SFL" CodeFile="OWTSG_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">USER - GROUP - DELEGATED USER HELP</h1>
            </div>

            <%-- table that represents the sub file, the name of the table in designer is the id in here --%>
            <div class="table-container">
                <div class="column-form related-fields-area" style="width: auto;">

                    <gal-input input-size="xlarge" label-size="xsmall" dynamic-label>
                        <input id="userGroup" runat="server" />
                        <input id="user_FORUSR" runat="server" />
                        <input id="userName_FUNAM" runat="server" />
                    </gal-input>
                    <gal-input label-text="Records:" label-size="auto" input-size="xsmall" no-description>
                        <input id="records_CRRN" runat="server" />
                    </gal-input>
                </div>
                <table id="OWTSG_SFL_1" runat="server" class="table gal6-table-striped  no-selection-table" style="width: auto;">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <gal-input input-size="small" no-description>
                                    <select id="typeSel_STR1" runat="server"></select>
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="groupSel_SEL1" input-size="small" runat="server" />
                                </gal-input>
                                <span id="userGroupHeader" runat="server"></span>
                            </th>
                            <th>
                                <span>Name</span>
                            </th>
                            <th>
                                <span>Company</span>
                            </th>
                            <th>
                                <span>To Date</span>
                            </th>
                            <th>
                                <span id="jobDescHeader" runat="server"></span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="type_TYPE" runat="server"></span></td>
                            <td><span id="groupDelg_USR" runat="server"></span></td>
                            <td><span id="name_UNAM" runat="server"></span></td>
                            <td><span id="company_CMP" runat="server"></span></td>
                            <td><span id="toDate_DATETO" runat="server"></span></td>
                            <td><span id="jobDescription_AYJOBD" runat="server"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>

                <input style="display: none;" id="pageIndex" runat="server" />

                <%--<div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Create </button>
                </div>--%>
            </div>
            <div class="legend-div" style="margin-left: 5px;">
                <legend-block text="Not Active" color="green"></legend-block>
            </div>
            <input id="hiddenField" runat="server" style="display: none;" />

        </div>
    </div>
    <script>
        var header = document.getElementById('ctl00_GXPagePlaceHolder_userGroupHeader')
        if (header.innerText.trim() == 'Group') {
            header.innerText = 'Group/Delegated'

        }
        else {
            header.innerText = 'User'
        }
    </script>

</asp:Content>
