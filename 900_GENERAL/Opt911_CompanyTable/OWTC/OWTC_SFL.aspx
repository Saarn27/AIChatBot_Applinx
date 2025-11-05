<%@ Page MasterPageFile="~/template.master" Inherits="OWTC_SFL" CodeFile="OWTC_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">COMPANY GENERAL DATA</h1>
            </div>
            <%--<gal-input label-text="Company status:" label-size="medium" input-size="small2" no-description>
                <select id="CompanyStatus" type="text" runat="server" onchange="gx_SubmitKey('[enter]');">
                    <option value=""></option>
                    <option value="T">Test</option>
                    <option value="R">Remote</option>
                    <option value="L">Lock</option>
                    <option value="A">Active only</option>
                </select>
            </gal-input>--%>
            
            <div class="table-container">
                <gal-table-header text="ACTIVE" start-column="5" end-column="6"></gal-table-header>
                <table id="OWTC_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" /></th>
                            <th>
                                <gal-input label-text=" " input-size="xsmall" no-description>
                                    <input id="companyCod_CMP" runat="server" />
                                </gal-input>
                                <span>Company</span>
                            </th>
                            <th>
                                <gal-input label-text=" " input-size="large" no-description>
                                    <input id="companyName_CMPNME" runat="server" />
                                </gal-input>
                                <span>%Company name</span>
                            </th>
                            <th>
                                <gal-input label-text=" " input-size="xsmall" no-description>
                                    <input id="companyType_TYP" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input label-text=" " input-size="xsmall" no-description>
                                    <input id="productionTN_PROD" runat="server" />
                                </gal-input>
                                <span>Production</span>
                            </th>
                            <th>
                                <gal-input label-text=" " input-size="xsmall" no-description>
                                    <input id="financeYN_FIN" runat="server" />
                                </gal-input>
                                <span>Finance</span>
                            </th>
                            <th>
                                <gal-input label-text=" " input-size="xsmall" no-description>
                                    <input id="motherCompany_MCMP" runat="server" />
                                </gal-input>
                                <span>Mother company</span>
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
                                <span id="cmpCodeSFL_CMP" runat="server"></span>
                            </td>
                            <td>
                                <span id="companyNameSFL_CMPNME" runat="server"></span>
                            </td>
                            <td>
                                <span id="companyNameSFL_TYP" runat="server"></span>
                            </td>
                            <td>
                                <span id="productionSFL_PROD" runat="server"></span>
                            </td>
                            <td>
                                <span id="financeSFL_FIN" runat="server"></span>
                            </td>
                            <td>
                                <span id="motherCompanySFL_MCMP" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <%--<div style="align-self: flex-end;margin-right: -10px" >
                    <gal-input label-text="Companies:" label-size="small" input-size="xsmall" no-description>
                        <input id="companies_num" runat="server" style="margin-right:0px" />
                    </gal-input>
                </div>--%>
            </div>

            <input id="hiddenField" runat="server" style="display: none" />
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
            <div class="legend-div">
                <legend-block text="Test company" color="yellow"></legend-block>
                <legend-block text="Remote company" color="purple"></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
