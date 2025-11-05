<%@ Page MasterPageFile="~/template.master" Inherits="CRTU02_CTL_ZS" CodeFile="CRTU02_CTL_ZS.aspx.cs" Language="C#" %>

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
                <table id="CRTU02_CTL_ZS_1" runat="server" class="table gal6-table-striped less2-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <select id="region_RGN_SL" runat="server"></select>
                                </gal-input>
                                <span>Region</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <select id="salesman_SLSMN_SL" runat="server"></select>
                                </gal-input>
                                <span>Salesman</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="zipCode_ZIP_SL" runat="server" />
                                </gal-input>
                                <span>%Zip Code</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <select id="status_STAT_SL" runat="server"></select>
                                </gal-input>
                                <span>%Status</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="city_CITY_SL" runat="server" />
                                </gal-input>
                                <span>%City</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="county_NME1_SL" runat="server" />
                                </gal-input>
                                <span>%County</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="region_RGN" runat="server"></span></td>
                            <td><span id="salesman_SLSMN" runat="server"></span></td>
                            <td><span id="zipCode_ZIP" runat="server"></span></td>
                            <td><span id="status_STAT" runat="server"></span></td>
                            <td><span id="city_CITY_ZS" runat="server"></span></td>
                            <td><span id="county_NME1" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errMsg_MSGCMD" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
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
