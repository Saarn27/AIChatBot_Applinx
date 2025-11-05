<%@ Page MasterPageFile="~/template.master" Inherits="PCCU01_LIN" CodeFile="PCCU01_LIN.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <span id="actionBar1" runat="server"></span>
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SUPPLIER'S EVALUATION QUESTIONNAIRE</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-text="Supplier Code" label-size="medium" input-size="medium">
                        <span id="Supplier_SXVNDLIN" runat="server"></span>
                    </gal-input>
                    <gal-input label-text="Supplier Name" label-size="medium" input-size="xlarge">
                        <span id="Supplier_SXVNDNLIN" runat="server"></span>
                    </gal-input>
                </div>
            </div>
            <div class="table-container">
                <table id="PCCU01_LIN_Grid" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column"><span>?</span></th>
                            <th><span>Question Text</span></th>
                            <th><span>Score</span></th>
                            <th><span>Original Score</span></th>
                            <th><span>Last Updated Date</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="SLQST1" runat="server" />
                            </td>
                            <td><span id="Questions_SLQSTN1" runat="server"></span></td>
                            <td><input id="Score_SLSCORE1" runat="server" /></td>
                            <td><span id="Score_SLSCORE1O" runat="server"></span></td>
                            <td>
                                <span id="LastUpd_SLUPDDT1" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <div class="message-container">
                <span id="F10_Update" runat="server"></span>
                <span id="MSGLIN" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
