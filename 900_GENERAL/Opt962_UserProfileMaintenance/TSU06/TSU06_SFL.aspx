<%@ Page MasterPageFile="~/template.master" Inherits="TSU06_SFL" CodeFile="TSU06_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">GROUP PROFILE MEMBERS</h1>
            </div>

            <%-- table that represents the sub file, the name of the table in designer is the id in here --%>
            <div class="table-container">

                <table id="TSU06_SFL_1" runat="server" class="table gal6-table-striped less2-padding-table ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small2" no-description>
                                    <input id="userSel_USR"  runat="server" />
                                </gal-input>
                                <span>%User</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="nameSel_NME"  runat="server" />
                                </gal-input>
                                <span>%User Name</span>
                            </th>

                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="defaultSel_CMPD"  runat="server" />
                                </gal-input>
                                <span>Default Company</span>
                            </th>

                            <th>
                                 <gal-input input-size="xxsmall" no-description>
                                    <input id="typeSel_TYP"  runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                 <gal-input input-size="xxsmall" no-description>
                                    <input id="classSel_CLASS"  runat="server" />
                                </gal-input>
                                <span>Class</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="groupSel_TSUIPGM"  runat="server" />
                                </gal-input>
                                <span>%Group Profile</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                             <td class="option-column">
                                <input class="row-selector-cell" id="opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td >
                                <span id="user_USR" runat="server"></span>
                            </td>
                             <td >
                                <span id="userName_NME" runat="server"></span>
                            </td>
                            <td>
                                <span id="default_CMPD" runat="server"></span>
                            </td>
                            <td><span id="type_TYP" runat="server"></span></td>
                            <td><span id="class_CLASS" runat="server"></span></td>
                            <td>
                                <span id="groupPrf_TSUIPGM" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                           
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>

                <input style="display: none;" id="pageIndex" runat="server" />

               <%-- <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Create </button>
                </div>--%>

            </div>
            <div class="legend-div" style="margin-left: 5px;">
                <legend-block text="Disabled" color="purple"></legend-block>
            </div>
            <input id="hiddenField" runat="server" style="display: none;" />

        </div>
    </div>
</asp:Content>
