<%@ Page MasterPageFile="~/template.master" Inherits="TRU05_SFL1" CodeFile="TRU05_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">BANK MESSAGE</h1>
                <span class="sub-headline blue-headline" id="bankMessageType_MTRNTYP" runat="server"></span>
            </div>
            <div class="table-container">
                <div class="related-fields-area w-100">
                    <gal-input-help label-size="auto" label-text="User:" input-size="xlarge">
                        <input id="user_MTRNUSR" runat="server" />
                        <input id="userDesc_MTSUNME" runat="server" />
                    </gal-input-help>
                </div>
                <table id="bankMessageTable_SF1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>

                            <th>
                                <gal-input input-size="xxxlarge" no-description>
                                    <input id="filterRemark_MTRNREM" runat="server" />
                                </gal-input>
                                <span>% First bank message line</span>
                            </th>

                            <th>
                                <span>More lines</span>
                            </th>

                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="filterRemarkCode_MTRNDA04" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>

                            <th columntype="date">
                                <span>Date</span>
                            </th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_ACTION" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="remarkContent_STRNREM" runat="server"></span></td>
                            <td><span id="plusSymbol_STRNREM" runat="server"></span></td>
                            <td><span id="remarkCode_STRNDA04" runat="server"></span></td>
                            <td columntype="date">
                                <span id="remarkOpnDate_STRNTOPN" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG2" runat="server"></span>
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
