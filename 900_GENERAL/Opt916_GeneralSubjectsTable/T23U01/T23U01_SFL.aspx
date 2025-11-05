<%@ Page MasterPageFile="~/template.master" Inherits="T23U01_SFL" CodeFile="T23U01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">GENERAL SUBJECTS TABLE</h1>
            </div>
            <div class="table-container">
                <div class=" related-fields-area centered-flex" style="width: auto">
                    <gal-input input-size="large" no-description>
                        <input id="s_SEARCH" runat="server" placeholder="%" />
                    </gal-input>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Search</button>
                </div>
                <table id="T23U01_SFL_1" runat="server" class="table gal6-table-striped less-padding-table" style="width:700px">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column label-xsmall">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span>Code</span>
                            </th>
                            <th>
                                <span>Subject Name</span>
                            </th>

                            <th class="label-medium">
                                <span>Secondary</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_MOPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>

                            <td><span id="code_COD" runat="server"></span></td>

                            <td><span id="subjectName_DSL" runat="server"></span></td>
                            <td>
                                <span id="sec_QTY" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>

                <input style="display: none;" id="pageIndex" runat="server" />

                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="err_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>

            </div>


        </div>
    </div>
</asp:Content>
