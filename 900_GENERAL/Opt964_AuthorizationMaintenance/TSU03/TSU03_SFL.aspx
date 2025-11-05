<%@ Page MasterPageFile="~/template.master" Inherits="TSU03_SFL" CodeFile="TSU03_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Authority Maintenance</h1>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area centered-flex w-100">
                    <gal-input-help label-text="System:" label-size="xsmall2" input-size="large">
                        <input id="system_STR1" runat="server" />
                        <input id="systemDsc_SYSDSC" runat="server" />
                    </gal-input-help>
                    <gal-input label-text="Status:" label-size="xsmall2" input-size="small2" no-description>
                        <select id="status_S_STS" runat="server">
                            <option value="A">All</option>
                            <option value="D">Disabled</option>
                            <option value="E">Enabled</option>
                        </select>
                    </gal-input>
                </div>
                <div class="table-container">
                    <table id="TSU03_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="type_STR2" runat="server" />
                                    </gal-input>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small2" no-description>
                                        <input id="user_STR3" runat="server" />
                                    </gal-input-help>
                                    <span>User/Group</span>
                                </th>
                                <th>
                                    <gal-input input-size="medium" no-description>
                                        <input id="name_SEL3" runat="server" />
                                    </gal-input>
                                    <span>%Name</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="xsmall" no-description>
                                        <input id="company_STR7" runat="server" />
                                    </gal-input-help>
                                    <span>Company</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="mode_STR4" runat="server" />
                                    </gal-input>
                                    <span>Mode</span>
                                </th>
                                <th>
                                    <gal-input input-size="small2" no-description>
                                        <input id="modeDsc_SEL1" runat="server" />
                                    </gal-input>
                                    <span>%Mode description</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small" no-description>
                                        <input id="option_STR5" runat="server" />
                                    </gal-input-help>
                                    <span>Option</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="sub_STR6" runat="server" />
                                    </gal-input>
                                    <span>Sub</span>
                                </th>
                                <th>
                                    <gal-input input-size="small2" no-description>
                                        <input id="dsc_SEL2" runat="server" />
                                    </gal-input>
                                    <span>%Description</span>
                                </th>
                                <th>
                                    <gal-input input-size="xxsmall" no-description>
                                        <input id="A_S_AUT" runat="server" />
                                    </gal-input>
                                    <span>Authority</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small" no-description>
                                        <input id="department_SLYDEP" runat="server" />
                                    </gal-input-help>
                                    <span>Department code</span>
                                </th>
                                <th>
                                    <gal-input input-size="small2" no-description>
                                        <input id="departmentDsc_SLYDEPD" runat="server" />
                                    </gal-input>
                                    <span>%Department description</span>
                                </th>
                                <th>
                                    <gal-input-help input-size="small" no-description>
                                        <input id="job_SLYJOBD" runat="server" />
                                    </gal-input-help>
                                    <span>Job</span>
                                </th>
                                <th>
                                    <gal-input input-size="small2" no-description>
                                        <input id="job_SLYJOBDD" runat="server" />
                                    </gal-input>
                                    <span>% Job description</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="opt_S" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td><span id="type_TYP" runat="server"></span></td>
                                <td><span id="user_USRGRP" runat="server"></span></td>
                                <td><span id="name_NAME" runat="server"></span></td>
                                <td><span id="cmp_CMP" runat="server"></span></td>
                                <td><span id="mode_MODCOD" runat="server"></span></td>
                                <td><span id="modeDsc_MODDSC" runat="server"></span></td>
                                <td><span id="opt_OCOD" runat="server"></span></td>
                                <td><span id="sub_BCOD" runat="server"></span></td>
                                <td><span id="dsc_DSC" runat="server"></span></td>
                                <td><span id="A_AUT" runat="server"></span></td>
                                <td><span id="dept_S_YDEP" runat="server"></span></td>
                                <td><span id="dept_S_YDEPD" runat="server"></span></td>
                                <td><span id="job_S_YJOBD" runat="server"></span></td>
                                <td><span id="job_S_YJOBDD" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
            <div class="bottom-line">
                <gal-input label-size="xsmall" label-text="Lines:" input-size="small" no-description>
                    <input id="totRows" runat="server" />
                </gal-input>
            </div>
            <div class="legend-div" style="margin-left: 5px;">
                <legend-block text="Closed" color="red"></legend-block>
                <legend-block text="Disabled" color="purple"></legend-block>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
