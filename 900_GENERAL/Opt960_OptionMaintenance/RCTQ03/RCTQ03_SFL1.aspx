<%@ Page MasterPageFile="~/template.master" Inherits="RCTQ03_SFL1" CodeFile="RCTQ03_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server"> LIST OF COMPANIES</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
           <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal">
          
            <div class="table-container"><table id="RCTQ03_SFL1_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th >
                            <gal-input input-size="xsmall" no-description>
                                <input id="companyCodeFIlter_WHS" runat="server" />
                            </gal-input>
                            <span>Company</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <input id="companyNameFilter_NME" runat="server" />
                            </gal-input>
                            <span>%Company name</span>
                        </th>
                         <th>
                            <gal-input input-size="small" no-description>
                                <select id="typeFilter_TYP" runat="server" >
                                    <option value=""></option>
                                    <option value="A">A=Active</option>
                                    <option value="T">T=Test</option>
                                    <option value="R">R=Remote</option>
                                </select>
                            </gal-input>
                            <span>Type</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="companyIPFilter_IP" runat="server" />
                            </gal-input>
                            <span>%Company IP address</span>
                        </th>
                         <th>
                            <gal-input input-size="xsmall" no-description>
                                <input id="motherCompanyFilter_MTHR" runat="server" />
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
                        <td><span id="companyCodeSFL_WHS" runat="server"></span></td>
                        <td><span id="companyNameSFL_NME" runat="server"></span></td>
                        <td><span id="typeSFL_TYP" runat="server"></span></td>
                        <td><span id="companyIPSFL_IP" runat="server"></span></td>
                        <td><span id="motherCompanySFL_MTHR" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
        </div>
               <div class="modal-bottom">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
            </div>
    </div>
</asp:Content>
