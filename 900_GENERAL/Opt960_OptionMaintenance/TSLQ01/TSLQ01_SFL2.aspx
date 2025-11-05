<%@ Page MasterPageFile="~/template.master" Inherits="TSLQ01_SFL2" CodeFile="TSLQ01_SFL2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">MENU OPTION LOG INQUIRY </h1>
            </div>

            <div class="centered-flex">
                <gal-input label-size="xsmall" label-text="System" input-size="xsmall" no-description>
                    <input id="Sys_H_SYS" runat="server" />
                </gal-input>
                <gal-input label-size="xsmall" label-text="Module:" input-size="xsmall" no-description>
                    <input id="Module_H_MOD" runat="server" />
                </gal-input>
                <gal-input label-size="xsmall" label-text="Option:" input-size="xsmall" no-description>
                    <input id="Option_H_OPT" runat="server" />
                </gal-input>
                <gal-input label-size="small" label-text="Sub option:" input-size="xlarge">
                    <input id="SubOption_H_SOPT" runat="server" />
                    <input id="SubOptionDes_H_OPTDSC" runat="server" />
                </gal-input>
            </div>

            <gal-table-header text="Transaction" start-column="6" end-column="7" unite></gal-table-header>            
            <div class="table-container">

                <table id="TSLQ01_SFL2_1" runat="server" class="table gal6-table-striped less2-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="userSrc_H_USRCOD" runat="server" />
                                </gal-input-help>
                                <span>%User</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="usrNameSrc_H_USRDSC" runat="server" />
                                </gal-input>
                                <span>%User name</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="autSrc_H_TSLDA02" runat="server" />
                                </gal-input>
                                <span>Authority level</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="lvlSrc_H_TSLDA02L" runat="server" />
                                </gal-input>
                                <span>User Type</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="wrkSrc_H_TSLDA01" runat="server" />
                                </gal-input>
                                <span>Attendance</span>
                            </th>
                            <th columntype="date">
                                <span>Date</span>
                            </th>
                            <th>
                                <span>Time</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="jobNamSrc_H_JOBNAME" runat="server" />
                                </gal-input>
                                <span>%Job name</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="medium" no-description>
                                    <input id="ipAdrsSrc_H_IP" runat="server" />
                                </gal-input>
                                <span>%IP address</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="S_USRCOD" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_USRNAME" runat="server"></span>
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
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
