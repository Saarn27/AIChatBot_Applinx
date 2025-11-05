<%@ Page MasterPageFile="~/template.master" Inherits="GTU01_SFLD" CodeFile="GTU01_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="customerList_TITLE" runat="server">DELETE CONFIRMATION  </h1>
                <span id="taskUser_USERTSK" class="sub-headline" runat="server"></span>
            </div>
            <gal-input label-size="small" label-text="Open/Close :" input-size="medium"  >
                <input id="taskType_OCA" runat="server" />
                <input id="taskTypeDesc_OCAD" runat="server" /> 
            </gal-input>

            <div class="table-container"><table id="deleteConfirmTable_SFLD" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th>
                            <span>Type</span>
                        </th>
                        <th>
                            <span>Entity</span>
                        </th>
                        <th style="width:250px">
                            <span>%Regarding</span>
                        </th>
                        <th style="width:250px">
                            <span>%Subject</span>
                        </th>
                        <th>
                            <span>User</span>
                        </th>
                        <th>
                            <span>Priority</span>
                        </th>
                        <th columnType="date">
                            <span>Due date</span>
                        </th>
                        <th columnType="date">
                            <span>Open date</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <span  id="taskType_GTDOC" runat="server"></span>
                        </td>
                        <td>
                            <span  id="taskEntity_23DSC" runat="server"></span>
                        </td>
                        <td>
                            <span  id="taskEntity_DESC" runat="server"></span>
                        </td>
                        <td>
                            <span id="taskRemark_GTREM" runat="server"></span>
                        </td>
                        <td>
                            <span id="taskUser_USER" runat="server"></span>
                        </td>
                        <td>
                            <span  id="taskPriority_GTPRIO" runat="server"></span>
                        </td>
                        <td columnType="date">
                            <span  id="dueDate_DUDAT" galtype="date" dateformat="ddmmy" runat="server"></span>
                        </td>
                        <td columnType="date"><span  id="openDate_OPDAT" galtype="date" dateformat="ddmmy" runat="server"></span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
            
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
            </div>
            
        </div>
    </div>
</asp:Content>
