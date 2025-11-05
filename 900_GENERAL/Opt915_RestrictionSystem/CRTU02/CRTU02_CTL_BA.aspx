<%@ Page MasterPageFile="~/template.master" Inherits="CRTU02_CTL_BA" CodeFile="CRTU02_CTL_BA.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline no-title-case" id="title_TITLE" runat="server" ></h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="Record Type:" input-size="medium" no-description>
                        <select id="recordType_RECTYP" runat="server" onchange="gx_SubmitKey('[enter]');"></select>                             
                    </gal-input>
                </div>
            </div>
            <div class="table-container"><table id="CRTU02_CTL_BA_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="batch_BATCH_SL" runat="server"/>
                            </gal-input>
                            <span>Batch</span>
                        </th>
                        <th>
                            <gal-input-help input-size="small" no-description>
                                <input id="dist_DIST_SL" runat="server"/>
                            </gal-input-help>
                            <span>Distributor</span>
                        </th>
                        <th>
                            <gal-input-help input-size="medium" no-description>
                                <input id="distName_DSTNM_SL" runat="server" />
                            </gal-input-help>
                            <span>%Distributor Name</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="user_NME_B_SL" runat="server"/>
                            </gal-input>
                            <span>%User</span>
                        </th>
                        <th>
                            <gal-input input-size="small" no-description>
                                <input id="openDate_TOPN_SL" runat="server" galtype="date" dateformat="ddmmy"/>
                            </gal-input>
                            <span>Open Date</span>
                        </th>
                        <th>
                            <gal-input input-size="small" no-description>
                                <input id="openTime_TIME_SL" runat="server"  />
                            </gal-input>
                            <span>Open Time</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="batch_BATCH" runat="server"></span></td>
                        <td><span id="dist_DIST" runat="server"></span></td>
                        <td><span id="distName_DSTNM" runat="server"></span></td>
                        <td><span id="user_NME_B" runat="server"></span></td>
                        <td><span id="openDate_TOPN" runat="server"></span></td>
                        <td><span id="openTime_TIME" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller>

            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_MSG_CMD" runat="server"></span>
            </div>
        </div>
        <script>
            var titleNew = document.getElementById("ctl00_GXPagePlaceHolder_title_TITLE").innerText.toString();
            var stringArr = titleNew.replace(/\u00a0/g, " ").split(" ");
            titleNew = "";
            console.log(stringArr);
            var i = 0;
            for (i = 0; i < stringArr.length; i++) {
                if (i == 1) {
                    titleNew += stringArr[i].toUpperCase() + " ";
                } else {
                    titleNew += stringArr[i].charAt(0).toUpperCase() + stringArr[i].substring(1).toLowerCase() + " ";
                }
                console.log(titleNew);
            }
            document.getElementById("ctl00_GXPagePlaceHolder_title_TITLE").innerText = titleNew;
            console.log(document.getElementById("ctl00_GXPagePlaceHolder_title_TITLE").innerText);
        </script>
    </div>
</asp:Content>
