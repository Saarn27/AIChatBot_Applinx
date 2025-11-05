<%@ Page MasterPageFile="~/template.master" Inherits="TSLQ01_SFL1" CodeFile="TSLQ01_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server"> MENU OPTION LOG INQUIRY </h1>
            </div>

            <div class="centered-flex">
                <gal-input label-size="xsmall" label-text="User:" input-size="xlarge">
                    <input id="User_H_USRCOD" runat="server" />
                    <input id="usrDes_H_USRNAME" runat="server" />
                </gal-input>
                <gal-input label-size="xsmall" label-text="System:" input-size="medium2">
                    <input id="System_H_TSLSYS" runat="server" />
                    <input id="sysDes_H_T23DSC_S" runat="server" />
                </gal-input>
                <gal-input label-size="xsmall" label-text="Module:" input-size="xlarge">
                    <input id="Module_H_TSLMOD" runat="server" />
                    <input id="ModuleDes_H_TSPDSCL" runat="server" />
                </gal-input>
            </div>

            <gal-table-header text="Transaction" start-column="8" end-column="9" unite></gal-table-header>            
            <div class="table-container">
                <table id="TSLQ01_SFL1_1" runat="server" class="table gal6-table-striped less2-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th columntype="primaryNumber">
                                <gal-input-help input-size="small" no-description>
                                    <input id="optSrc_OPT" runat="server" />
                                </gal-input-help>
                                <span>Option</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="soptSrc_SOPT" runat="server" />
                                </gal-input>
                                <span>Sub option</span>
                            </th>
                            <th>
                                <gal-input-help input-size="xlarge" no-description>
                                    <input id="desSrc_H_OPTDSC15" runat="server" />
                                </gal-input-help>
                                <span>%Description</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="autSrc_H_TSLDA02" runat="server" />
                                </gal-input>
                                <span>Authority level</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="srcSrc_H_TSLDA02L" runat="server" />
                                </gal-input>
                                <span>User Type</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="wrkSrc_H_TSLDA01" runat="server" />
                                </gal-input>
                                <span>Attendance</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                            <th columntype="date">
                                <span>Date</span>
                            </th>
                            <th >
                                <span>Time</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="jobNameSrc_H_JOBNAME" runat="server" />
                                </gal-input>
                                <span>%Job name</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="medium" no-description>
                                    <input id="ipAdrSrc_H_IP" runat="server" />
                                </gal-input>
                                <span>%IP address</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="AuthorityLabel_H_AUTH" runat="server"/>
                                </gal-input>
                                <span>Authority source</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td columntype="primaryNumber">
                                <span id="S_OPT" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_SOPT" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_OPTDSC15" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="S_TSLDA02" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_TSLDA02L" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_TSLDA01" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_TSLSYS" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span galtype="date" dateformat="ddmmyy" id="S_DATE" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_TIME" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_JOBNAME" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="S_IP" runat="server"></span>
                            </td>
                            <td>
                                <span id="AuthoritySource_S_AUTH" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
