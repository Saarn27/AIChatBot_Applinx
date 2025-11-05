<%@ Page MasterPageFile="~/template.master" Inherits="GSU25_SFL1" CodeFile="GSU25_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">USER LIMITATION</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal">
            <div class="table-container">
                <table id="GSU25_SFL1_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="subjectFilter_SSBJ" runat="server" />
                                </gal-input>
                                <span>Subject</span>
                            </th>
                            <th style="min-width:250px">
                                <span>Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_S1" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>

                            <td>
                                <span id="subject_SBJ" runat="server"></span>
                            </td>

                            <td>
                                <span id="subjectDescription_SBJD" runat="server"></span>
                                <action-bar mode="single">
                                </action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_MSG1" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
