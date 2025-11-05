<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_SFLR" CodeFile="GWU26_SFLR.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">RETURN TO USER</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form " id="mainContent">

            <gal-table-header text="SEQUENCE" start-column="4" end-column="6" unite></gal-table-header>
            <div class="table-container">
                <table id="userToReturnTable_SFLR" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input-help label-text=" " input-size="medium" no-description>
                                    <input id="filterUserCode_SLUSRR" runat="server" />
                                </gal-input-help>
                                <span>User</span>
                            </th>
                            <th>
                                <gal-input label-text=" " input-size="large" no-description>
                                    <input id="filterUserName_SLUSRRN" runat="server" />
                                </gal-input>
                                <span>User name</span>
                            </th>
                            <th columntype="qty">
                                <span>From</span>
                            </th>
                            <th columntype="qty">
                                <span>Value</span>
                            </th>
                            <th columntype="qty">
                                <span>To</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="userCode_USRR" runat="server"></span></td>
                            <td><span id="userName_USRRN" runat="server"></span></td>
                            <td columntype="qty"><span id="sequenceFrom_RSEQF" runat="server"></span></td>
                            <td columntype="qty"><span id="sequenceValue_RSEQ" runat="server"></span></td>
                            <td columntype="qty">
                                <span id="sequenceTo_RSEQT" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />

            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSGR" runat="server"></span>
            </div>
            <div class="legend-div">
                <legend-block color="yellow" text="Owner"></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
