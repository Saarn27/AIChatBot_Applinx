<%@ Page MasterPageFile="~/template.master" Inherits="GWU21W_SFL" CodeFile="GWU21W_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">Work Flow Templates</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea">
        <action-bar mode="multiple">
            <%--Action Bar definition--%>
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <%--Define headline--%>

            <%--Subfile table--%>
            <div class="table-container"><table id="GWU21W_SFL_Table" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <%--Master checkbox, selects all rows for mutiple rows option.--%>
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <%--Table headers and selections--%>
                        <th>
                            <gal-input input-size="small" no-description>
                                <input id="typeSelection_SLTYP" runat="server" />
                            </gal-input>
                            <span>Type</span>
                        </th>

                        <th columntype="primaryNumber">
                            <gal-input input-size="small" no-description>
                                <input id="workNumberSelection_SLNUM" runat="server" />
                            </gal-input>
                            <span>Workflow Number</span>
                        </th>

                        <th>
                            <gal-input input-size="xlarge" no-description>
                                <input id="descriptionSelection_SLDSC" runat="server" />
                            </gal-input>
                            <span>%Workflow Description</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <select id="approveSelection_SLTYP1" runat="server"></select>
                            </gal-input>
                            <span>Approve Type</span>

                        </th>
                        <th>
                            <span>Approve Description</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%-- checkbox for mutiple rows option.--%>
                        <td class="option-column">
                            <input class="row-selector-cell" id="optionCol_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <%--Table column data--%>
                        <td><span id="typeCol_WFTYP" runat="server"></span></td>
                        <td columntype="primaryNumber"><span id="wfNumberCol_WFNUM" runat="server"></span></td>
                        <td><span id="wdDescriptionCol_WFDSC" runat="server"></span></td>
                        <td><span id="approveTypeCol_WFTYP1" runat="server"></span></td>
                        <td>
                            <span id="ApproveTypeDescCol_WFTYPD" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <%--Error message at the bottom of the screen--%>
            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
            </div>
        </div>

    </div>
</asp:Content>
