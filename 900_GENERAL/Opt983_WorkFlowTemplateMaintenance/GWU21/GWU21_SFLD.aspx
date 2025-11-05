<%@ Page MasterPageFile="~/template.master" Inherits="GWU21_SFLD" CodeFile="GWU21_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW DEFINITION - DELETE CONFIRMATION</h1>
            </div>


            <div class="table-container"><table id="workFlowDeleteConfTable_SFLD" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th><span>Type</span></th>
                        <th columntype="primaryNumber"><span>Workflow number</span></th>
                        <th><span>Workflow description</span></th>
                        <th><span>Approve type</span></th>
                        <th><span>Approve Description</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <span id="workFlowType_WFTYPD" runat="server"></span>
                        </td>
                        <td columntype="primaryNumber">
                            <span id="workFlowNumber_WFNUMD" runat="server"></span>
                        </td>
                        <td>
                            <span id="workFlowDescription_WFDSCD" runat="server"></span>
                        </td>
                        <td>
                            <span id="workFlowApproveType_WFTYP1D" runat="server"></span>
                        </td>
                        <td>
                            <span id="workFlowApproveTypeDesc_WFTYPDD" runat="server"></span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
            </div>
        </div>
    </div>

    
</asp:Content>
