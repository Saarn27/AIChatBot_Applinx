<%@ Page MasterPageFile="~/template.master" Inherits="CRTU02_CTL_PO_D" CodeFile="CRTU02_CTL_PO_D.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline no-title-case" id="title_DEL_TITLE" runat="server"></h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" label-text="Record Type:" input-size="large">
                        <input id="recordType_RECTYP" runat="server"/>
                        <input id="recordTypeDesc_RECTYPD" runat="server"/>                        
                    </gal-input>
                </div>
            </div>
            <div class="table-container"><table id="CRTU02_CTL_PO_D_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th>
                            <span>Type</span>
                        </th>
                        <th>
                            <span>Distributor</span>
                        </th>
                        <th>
                            <span>Name</span>
                        </th>
                        <th>
                            <span>From</span>
                        </th>
                        <th>
                            <span>To</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span id="type_TYP" runat="server"></span></td>
                        <td><span id="dist_DIST" runat="server"></span></td>
                        <td><span id="name_NME_P" runat="server"></span></td>
                        <td><span id="from_FROM_DT" runat="server"></span></td>
                        <td><span id="to_TO_DT" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_MSG_D" runat="server"></span>
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
