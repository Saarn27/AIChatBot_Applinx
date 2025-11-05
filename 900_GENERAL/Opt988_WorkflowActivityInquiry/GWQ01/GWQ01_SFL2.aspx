<%@ Page MasterPageFile="~/template.master" Inherits="GWQ01_SFL2" CodeFile="GWQ01_SFL2.aspx.cs" Language="C#" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY INQUIRY</h1>
            </div>
            <tabs-list>
                <div id="tab1_TAB1" text="General"></div>
                <div id="tab2_TAB2" text="Additional" active="true"></div>
                <div id="tab3_TAB3" text="Customer / Supplier"></div>
            </tabs-list>
            <div class="tab-content">
                <div class="tab-pane active" id="2">
                    <div class="table-container">
                        <table id="GWQ01_SFL2_1" runat="server" class="table gal6-table-striped">
                            <thead>
                                <tr class="grid-header">
                                    <th class="option-column">
                                        <input type="checkbox" id="masterCheckBox" />
                                    </th>
                                    <th sortby="typeTitle_TTYP">
                                        <gal-input input-size="small" no-description>
                                            <select id="typeFilter_SGFHTYP" runat="server" style="font-size: 8px"></select>
                                        </gal-input>
                                        <span id="typeTitle_TTYP">Type</span>
                                    </th>
                                    <th sortby="documentNumberTitle_TDOCN" columntype="primaryNumber">
                                        <gal-input input-size="small" no-description>
                                            <input id="documentNumberFilter_SGFHDOC" runat="server" />
                                        </gal-input>
                                        <span id="documentNumberTitle_TDOCN">Document number</span>
                                    </th>
                                    <th sortby="documentDescriptionTitle_TDOCD">
                                        <gal-input input-size="xlarge" no-description>
                                            <input id="descriptionFilter_SGFHDSC" runat="server" />
                                        </gal-input>
                                        <gal-input input-size="xlarge" no-description>
                                            <input id="remark2Filter_SRMK2" runat="server" />
                                        </gal-input>
                                        <span id="documentDescriptionTitle_TDOCD" runat="server"></span>
                                    </th>
                                    <th sortby="currentUserTitle_TGFUSR">
                                        <gal-input-help input-size="large" no-description>
                                            <input id="currentUserFilter_SGFUSR" runat="server" />
                                        </gal-input-help>
                                        <span id="currentUserTitle_TGFUSR">Current user</span>
                                    </th>
                                    <th sortby="actionTypeTitle_TGFHACT">
                                        <gal-input input-size="xsmall" no-description>
                                            <select id="actionTypeFilter_SGFHACT" runat="server"></select>
                                        </gal-input>
                                        <span id="actionTypeTitle_TGFHACT">Action type</span>
                                    </th>
                                    <th sortby="financialAthorityTitle_TGFUSRA">
                                        <gal-input input-size="xxsmall" no-description>
                                            <input id="financialAthorityFilter_SGFUSRA" runat="server" />
                                        </gal-input>
                                        <span id="financialAthorityTitle_TGFUSRA">Financial authority</span>
                                    </th>
                                    <th sortby="workflowNumberTitle_TWFNUM" columntype="qty">
                                        <gal-input input-size="small" no-description>
                                            <input id="workflowNumberFilter_SWFNUM" runat="server" />
                                        </gal-input>
                                        <span id="workflowNumberTitle_TWFNUM">Workflow number</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="option-column">
                                        <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                        <input type="checkbox" galtype="checkbox" />
                                    </td>
                                    <td>
                                        <span id="type_WFTYP" runat="server"></span>
                                        <span class="double-span" id="inAdvance_INADV" runat="server"></span>
                                    </td>
                                    <td columntype="primaryNumber">
                                        <span id="documentNumber_DOCN" runat="server"></span>
                                    </td>
                                    <td>
                                        <span class="double-span" id="description_DOCDSC" runat="server"></span>
                                        <span id="remark2_RMK2" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="currentUser_CURUSR" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="actionType_APRTYP" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="fiancialAuthority_USRA" runat="server"></span>
                                    </td>
                                    <td columntype="primaryNumber">
                                        <span id="workflowNumber_WFNUM" runat="server"></span>
                                        <action-bar mode="single"></action-bar>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <grid-scroller></grid-scroller>
                    </div>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container">
                        <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                    </div>
                    <div class="legend-div">
                        <legend-block text="Info" color="yellow"></legend-block>
                        <legend-block text="Return" color="aqua"></legend-block>
                        <legend-block text="Error" color="red"></legend-block>
                        <legend-block text="Handling" color="blue"></legend-block>
                        <legend-block color="red" text-color id="dynamicAsteric"></legend-block>
                    </div>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none" />
    </div>
</asp:Content>
