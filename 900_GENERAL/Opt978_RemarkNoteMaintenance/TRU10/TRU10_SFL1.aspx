<%@ Page MasterPageFile="~/template.master" Inherits="TRU10_SFL1" CodeFile="TRU10_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">GENERAL REMARK </h1>
                <span id="generalRemarkDesc_DSCL" class="sub-headline" style="color: #2D7DD2" runat="server"></span>
            </div>
            <gal-input label-size="small" label-text="Subject:" input-size="large">
                <input id="subjectType_SBJ" runat="server" />
                <input id="subjectTypeDesc_SBJHD" runat="server" />
            </gal-input>
            <div class="table-container">
                <table id="generalRemarkTable_SFL1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th><span>Line</span> </th>
                            <th><span>Remark text</span></th>
                            <th><span>Subject</span> </th>
                            <th><span>Line</span> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="lineNumber_LINE" runat="server"></span></td>
                            <td>
                                <gal-input input-size="xxxlarge" no-description>
                                    <input id="remarkText_REM" runat="server" maxlength="54" onkeyup="removeMaliciousChars(event);"/>
                                </gal-input>
                            </td>
                            <td>
                                <gal-input input-size="medium" no-description>
                                    <select class="remarks-select" id="remarkSubject_SUBJ" runat="server"></select>
                                </gal-input>
                            </td>
                            <td>
                                <gal-input input-size="small" no-description>
                                    <input id="remarkLine_LIN" runat="server" />
                                </gal-input>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
            </div>
        </div>
    </div>
    <script>
        function removeMaliciousChars(event) {
            var currentValue = event.srcElement.value;
            if (currentValue.includes("<")) {
                event.srcElement.value = event.srcElement.value.replace("<", "(");
            }
            if (currentValue.includes(">")) {
                event.srcElement.value = event.srcElement.value.replace(">", ")");
            }
        }
    </script>
</asp:Content>
