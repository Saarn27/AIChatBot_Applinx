<%@ Page MasterPageFile="~/template.master" Inherits="GWU26R_SFL1" CodeFile="GWU26R_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY - ROUTING</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="Original user:" input-size="xlarge">
                        <input id="originalUser_ORGUSER" runat="server" />
                        <input id="originalUserName_ORGUSERD" runat="server" />
                    </gal-input>
                </div>
            </div>

            <div class="table-container"><table id="workFlowOrgUserTable_SFL1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th>
                            <gal-input-help label-text=" " input-size="medium" no-description>
                                <input id="filterUserCode_SLDUSRS" runat="server" />
                            </gal-input-help>
                            <span>User code</span>
                        </th>
                        <th>
                            <span>User name</span>
                        </th>
                        <th>
                            <span>Cost center</span>
                        </th>
                        <th>
                            <span>Cost element</span>
                        </th>
                        <th>
                            <span>Workflow type</span>
                        </th>
                        <th columnType="price">
                            <span>Value</span>
                        </th>
                        <th columnType="price">
                            <span>Actual date</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <span id="userCode_SLDUSR" runat="server"></span>
                        </td>
                        <td>
                            <span id="userCodeName_SLDUSRN" runat="server"></span>
                        </td>
                        <td>
                            <span id="costCenterName_SLCSTC" runat="server"></span>
                        </td>
                        <td>
                            <span id="costCenterElem_SLCSTE" runat="server"></span>
                        </td>
                        <td>
                            <span id="workFlowType_SLWF" runat="server"></span>
                        </td>
                        <td columnType="price">
                            <span id="workFlowValue_SLVAL" runat="server"></span>
                        </td>
                        <td columnType="price">
                            <span id="actualDate_SLTDAT" runat="server"></span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
            <div class="legend-div">
                <legend-block color="white" text="Not Active"></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
