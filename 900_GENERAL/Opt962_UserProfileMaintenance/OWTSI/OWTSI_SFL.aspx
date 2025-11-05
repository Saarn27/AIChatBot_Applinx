<%@ Page MasterPageFile="~/template.master" Inherits="OWTSI_SFL" CodeFile="OWTSI_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">USER AUTHORITY LOG</h1>
            </div>
            <div class="table-container">
                <table id="OWTSI_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">


                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="typeFilter_STSIACT" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="fileFilter_STSIFIL" placeholder="File" runat="server" />
                                </gal-input>
                                <gal-input input-size="small" no-description>
                                    <input id="fieldFilter_STSIFLD" placeholder="Field" runat="server" />
                                </gal-input>
                                <span>File / Field</span>
                            </th>

                            <th>
                                <gal-input-help input-size="small2" no-description>
                                    <input id="userFilter_STSIUSR" placeholder="User" runat="server" />
                                </gal-input-help>
                                <gal-input input-size="medium" no-description>
                                    <input id="userNameFilter_STSUNME" placeholder="User name" runat="server" />
                                </gal-input>
                                <span>User & %User name</span>
                            </th>
                            <th>
                                <span>Remark & Description</span>
                            </th>
                            <th>
                                <gal-input-help input-size="small2" no-description>
                                    <input id="groupFilter_STSIUSR1" runat="server" />
                                </gal-input-help>
                                <span>Group</span>
                            </th>
                            <th>
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="companyFilter_STSICMP" runat="server" />
                                </gal-input-help>
                                <span>Company</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="systemFilter_STSISYS" runat="server" />
                                </gal-input>
                                <span>System</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="modeFilter_STSIMOD" runat="server" />
                                </gal-input>
                                <span>Module</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="optionsFilter_STSIOPT" placeholder="Option" runat="server" />
                                </gal-input>
                                <gal-input input-size="small" no-description>
                                    <input id="subOptionFilter_STSISOPT" placeholder="Sub option" runat="server" />
                                </gal-input>
                                <span>Option & Sub option</span>
                            </th>

                            <th style="width: fit-content">
                                <gal-input input-size="small" no-description id="FromDate">
                                    <input id="dateFromeFilter_STSITUPDF" placeholder="From" galtype="date" dateformat="ddmmy" runat="server" />
                                </gal-input>
                                <gal-input input-size="small" no-description id="ToDate">
                                    <input id="dateToFilter_STSITUPDT" galtype="date" placeholder="To" dateformat="ddmmy" runat="server" />
                                </gal-input>
                                <span>Date & Time</span>
                            </th>
                            <th style="width: fit-content">
                                <span>Value before & after</span>
                            </th>
                            <th>
                                <gal-input-help input-size="small2" no-description>
                                    <input id="updateUserFilter_STSIUSRU" runat="server" />
                                </gal-input-help>
                                <span>Update user</span>
                            </th>
                            <th>
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="companyCodeFilter_STSICMP1" runat="server" />
                                </gal-input-help>
                                <span>Company code</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td><span id="typeSfl_ATSIACT"  runat="server"></span><span><span  id="typeDescription_ATSIACTD" runat="server"></span></span></td>
                            <td><span id="fileSfl_ATSIFIL" class="double-span" runat="server"></span><span><span id="fieldSfl_ATSIFLD"  runat="server"></span></span></td>
                            <td><span id="userSfl_ATSIUSR"  class="double-span" runat="server"></span><span><span id="userNameSfl_ATSUNME" runat="server"></span></span></td>
                            <td><span class=" double-span" id="remarkSfl_ATSIREM" style="font-weight: normal; " runat="server"></span><span><span  id="descriptionSfl_ATSIDSC" style="font-weight: normal;" runat="server"></span></span></td>
                            <td><span id="groupSfl_ATSIUSR1"  runat="server"></span></td>
                            <td><span id="companySfl_ATSICMP"  runat="server"></span></td>
                            <td><span id="systemSfl_ATSISYS"  runat="server"></span></td>
                            <td><span id="modeSfl_ATSIMOD" runat="server"></span></td>
                            <td><span id="optionSfl_ATSIOPT" class="double-span" runat="server"></span><span><span id="subOptionSfl_ATSISOPT"  runat="server"></span></span></td>
                            <td><span id="dateSfl_ATSITUPD" class="double-span" runat="server" galtype="date" dateformat="dd/mm/y"></span><span><span id="timeSfl_ATSITIME" runat="server"></span></span></td>
                            <td><span class=" double-span" style="font-weight: bold;">Before: <span id="valueBeforeSfl_ATSIBEFA" style="font-weight: normal;" runat="server"></span></span><span style="font-weight: bold" >After: <span id="valueAfterSfl_ATSIAFTA" style="font-weight: normal;" runat="server"></span></span></td>
                            <td><span id="updateUserSfl_ATSIUSRU"  runat="server"></span></td>
                            <td><span id="companyCodeSfl_ATSICMP1"  runat="server"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg" runat="server"></span>
            </div>

            <div class="legend-div">
                <legend-block text="TSU=User(962) " color="blue" text-color></legend-block>
                <legend-block text="TSG=Connections(963)" color="white" text-color></legend-block>
                <legend-block text="TSA=Authorithy(964)" color="black" text-color></legend-block>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>

</asp:Content>
