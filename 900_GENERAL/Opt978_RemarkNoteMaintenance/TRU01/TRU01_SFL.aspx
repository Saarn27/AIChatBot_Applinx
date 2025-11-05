<%@ Page MasterPageFile="~/template.master" Inherits="TRU01_SFL" CodeFile="TRU01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">REMARKS ENTRY</h1>
                <span style="color: #2D7DD2" id="remarksEntryType_DSCL" class="sub-headline" runat="server"></span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="xlarge" dynamic-label>
                        <input id="remarkTypeKey_DSC" runat="server" />
                        <input id="remarkTypeNumber_KEY" runat="server" />
                        <input id="remarkTypeDesc_DESC" runat="server" />
                    </gal-input>
                    <gal-input label-size="medium" label-text="Company/System:" input-size="large">
                        <input id="typeRemark" runat="server" />
                        <input id="typeDescription" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="Ref line:" input-size="medium" no-description>
                        <input id="remarkRefLine_LINR" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="table-container">
                <table id="remarksEntryTable_SFL" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column" style="max-width: fit-content;">
                                <span>Option</span>
                            </th>
                            <th><span id="remarkTextTitle" runat="server"></span></th>
                            <th><span id="codeTitle" runat="server"></span></th>
                            <th><span id="userTitle" runat="server"></span></th>
                            <th columntype="date"><span>Date</span></th>
                            <th><span >Reference</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column" style="max-width: fit-content;">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <div class="input-container">
                                    <select class="input-small2 remarks-select" id="fakeCombo" runat="server" onchange="putValueInOption(event);">
                                        <option value=""></option>
                                        <option value="C">Copy</option>
                                        <option value="M">Move</option>
                                        <option value="A">After</option>
                                        <option value="B">Before</option>
                                        <option value="P">Paste</option>
                                        <option value="D">Delete</option>
                                        <option value="H">Importance</option>
                                        <option value="I">Insert</option>
                                        <option value="T">Transmit</option>
                                    </select>
                                </div>
                            </td>
                            <td>
                                <gal-input input-size="xxlarge" no-description>
                                    <input id="remarkText_REM" runat="server" maxlength="60" onkeyup="removeMaliciousChars(event);" />
                                </gal-input>
                            </td>
                            <td>
                                <gal-input-help input-size="xsmall" no-description>
                                    <input id="remarkType_TYP1" runat="server" maxlength="1" />
                                </gal-input-help>
                            </td>
                            <td>
                                <span id="userCode_F1" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Confirm</button>
                    <button type="button" class="btn btn-primary btn-galweb big-button" style="margin-left: 20px;" onclick="gx_SubmitKey('[pf10]');">Update</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="legend-div">
                <legend-block text="Importance" color="purple"></legend-block>
                <legend-block text="Transmit" color="yellow" text-color></legend-block>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />

    </div>
    <script>
        var i = 0;
        var comBoxValue = document.querySelectorAll(".row-selector-cell");
        var selectValue = document.querySelectorAll("td.option-column");
        for (i = 1; i < 13; i++) {
            comBoxValue[i - 1].nextElementSibling.children[0].value = comBoxValue[i - 1].value;
        }

        function putValueInOption(event) {
            $(event.target).closest("tr").find(".row-selector-cell")[0].value = event.target.value;
        }

        function removeMaliciousChars(event) {
            var currentValue = event.srcElement.value;
            if (currentValue.includes("<")) {
                event.srcElement.value = event.srcElement.value.replace("<", "(");
            }
            if (currentValue.includes(">")) {
                event.srcElement.value = event.srcElement.value.replace(">", ")");
            }
        }

        function pageOnLoad(gx_event) {
            var remarkInputs = document.querySelectorAll("input[id*='remarkText_REM']");
            if (remarkInputs.length > 0) {
                for (var remarkIndex = 0; remarkIndex < remarkInputs.length; remarkIndex++) {
                    remarkInputs[remarkIndex].addEventListener("focus", (event) => {
                        document.getSelection().removeAllRanges();
                    });
                }
            }
        }
    </script>
</asp:Content>
