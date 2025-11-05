<%@ Page MasterPageFile="~/template.master" Inherits="OWGR_SFL" CodeFile="OWGR_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">REASON CODE</h1>
            </div>
            <gal-input label-text="Entity :" label-size="small" input-size="large" >
                <input id="Entity_ENTI" runat="server" />
                <input id="entityDsc_ENTDESC" runat="server" />
            </gal-input>
            <div class="table-container"><table id="OWGR_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr>
                        <th>
                            <gal-input label-text=" " input-size="xsmall" no-description>
                                <input id="rstFilter_RCODER" runat="server" />
                            </gal-input>
                            <span>Reason</span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="xlarge" no-description>
                                <input id="reasonDescriptionFilter_DESCR" runat="server" />
                            </gal-input>
                            <span>%Reason description</span>
                        </th>
                        <th>
                            <gal-input label-text=" " input-size="small" no-description>
                                <input id="workflowFilter_WFR" runat="server" />
                            </gal-input>
                            <span>Workflow number</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <span class="input-medium" id="rsn_RCODE" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-large" id="reasonDescription_DESC" runat="server"></span>
                        </td>
                        <td>
                            <span class="input-small" id="workflow_WF" runat="server"></span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Maintenance</button>
            </div>
        </div>
    </div>
</asp:Content>
