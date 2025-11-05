<%@ Page MasterPageFile="~/template.master" Inherits="GHRU04_SFL" CodeFile="GHRU04_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Restriction Message Maintenance</h1>
            </div>
            <div class="table-container">
                <table id="GHRU04_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="issueFilter_SEL1" runat="server" />
                                </gal-input>
                                <span>Issue</span>
                            </th>
                            <th style="width:700px">
                                <span>Remark </span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="key_KEY" runat="server"></span></td>
                            <td><span id="line1_DES1" runat="server"></span>
                                <br />
                                <span id="line2_DES11" runat="server"></span>
                                <br />
                                <span id="line3_DES12" runat="server"></span>
                                <br />
                                <span id="line4_DES2" runat="server"></span>
                                <br />
                                <span id="line5_DES22" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div style="display: flex; justify-content: flex-end">
                    <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
        <div class="legend-div">
            <legend-block text="External" color="white" text-color></legend-block>
        </div>
    </div>
</asp:Content>
