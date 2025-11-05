<%@ Page MasterPageFile="~/template.master" Inherits="CRTU02_CTL_CL2" CodeFile="CRTU02_CTL_CL2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline no-title-case" id="title_TITLE" runat="server"></h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="Record Type:" input-size="medium" no-description>
                        <select id="recordType_RECTYP" runat="server" onchange="gx_SubmitKey('[enter]');"></select>
                    </gal-input>
                </div>
            </div>
            <div class="table-container">
                <table id="CRTU02_CTL_CL2_1" runat="server" class="table gal6-table-striped less2-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="dist_DIST_SL" runat="server" />
                                </gal-input-help>
                                <span>Distributor</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="endUserName_NMC_SL2" runat="server" />
                                </gal-input>
                                <span>%End User Name</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="zipCode_ZIP_SL" runat="server" />
                                </gal-input>
                                <span>%Zip Code</span>
                            </th>
                            <th>
                                <gal-input-help input-size="small" no-description>
                                    <input id="endUser_UCST_SL" runat="server" />
                                </gal-input-help>
                                <span>End User</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="status_STS_SL" runat="server" />
                                </gal-input>
                                <span>Status</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="dist_DIST" runat="server"></span></td>
                            <td><span id="endUserName_NME_C2" runat="server"></span></td>
                            <td><span id="zipCode_ZIP" runat="server"></span></td>
                            <td><span id="endUser_UCST" runat="server"></span></td>
                            <td><span id="status_STS" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errMsg_MSGCMD" runat="server"></span>
                    <button class="btn big-button btn-primary btn-galweb" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
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
