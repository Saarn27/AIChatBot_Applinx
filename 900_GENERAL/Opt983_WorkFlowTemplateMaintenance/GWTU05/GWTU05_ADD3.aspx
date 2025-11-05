<%@ Page MasterPageFile="~/template.master" Inherits="GWTU05_ADD3" CodeFile="GWTU05_ADD3.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">PARAMETER MAINTENANCE </h1>
                <span id="mode_MODE3" class="sub-headline blue-headline" runat="server"></span>
            </div>
            <div class="related-fields-area">
                <gal-input-help label-text="Parameter: " label-size="small" input-size="xlarge">
                    <input id="parameterCode_ACODU" runat="server" />
                    <input id="parameterDesc_ADSCU" runat="server" />
                </gal-input-help>
            </div>
            <div class="table-container">
                <table id="GWTU05_ADD3_1" runat="server" class="table gal6-table-striped less2-padding-table" style="min-height: 200px">
                    <thead>
                        <tr class="grid-header">
                            <th columntype="primaryNumber">Key</th>
                            <th style="width: 370px">
                                <span>Type</span>
                            </th>
                            <th>
                                <span>Code</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td columntype="primaryNumber">
                                <span class="no-color" id="keyNum" runat="server"></span>

                            </td>
                            <td>
                                <span id="type1_DSC" runat="server"></span>
                            </td>
                            <td>
                                <gal-input-help input-size="xlarge">
                                    <input id="code1_C1" runat="server" />
                                    <input id="description1_D1" runat="server" />
                                </gal-input-help>
                                <gal-input input-size="xlarge">
                                    <input id="noHelpCodeInput" runat="server" />
                                    <input id="noHelpdescriptionInput" runat="server" />
                                </gal-input>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="related-fields-area">
                <gal-input label-text="Description: " label-size="small2" input-size="large" no-description>
                    <input id="description_DSCLU" runat="server" />
                </gal-input>
                <div class="line"></div>
                <div class="centered-flex">
                    <gal-input label-text="Description: " label-size="small2" input-size="medium" no-description>
                        <input id="desc" runat="server" />
                    </gal-input>
                    <gal-input-help label-text="Value:" label-size="xsmall" input-size="large" style="margin-left: 60px">
                        <input id="value_VAL1" runat="server" />
                        <input id="valueDsc_VAL1D" runat="server" />
                    </gal-input-help>
                </div>
            </div>
            <input id="hiddenField" runat="server" style="display: none;" />
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button type="button" id="btn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');"></button>
            </div>
        </div>
    </div>
    <script>
        var rows = document.getElementById("ctl00_GXPagePlaceHolder_GWTU05_ADD3_1").rows;
        for (var i = 1; i < rows.length; i++) {
            if (rows[i].cells[1].innerText.toLowerCase() == "user") {
                document.getElementById("ctl00_GXPagePlaceHolder_noHelpCodeInput_00" + String(i - 1)).parentElement.style.display = "none";
                document.getElementById("ctl00_GXPagePlaceHolder_noHelpdescriptionInput_00" + String(i - 1)).parentElement.style.display = "none";
            }
            else {

                document.getElementById("ctl00_GXPagePlaceHolder_code1_C1_00" + String(i - 1)).parentElement.style.display = "none";
                document.getElementById("ctl00_GXPagePlaceHolder_description1_D1_00" + String(i - 1)).parentElement.style.display = "none";

                if (document.getElementById("ctl00_GXPagePlaceHolder_mode_MODE3").innerText.toLowerCase() == "display") {
                    document.getElementById("ctl00_GXPagePlaceHolder_noHelpCodeInput_00" + String(i - 1)).setAttribute("readonly", "true");
                    document.getElementById("ctl00_GXPagePlaceHolder_noHelpdescriptionInput_00" + String(i - 1)).setAttribute("readonly", "true");
                }



            }
        }

        if (document.getElementById("ctl00_GXPagePlaceHolder_mode_MODE3").innerText.toLowerCase() == "update")
            document.getElementById("ctl00_GXPagePlaceHolder_mode_MODE3").innerText = "Update";
        if (document.getElementById("ctl00_GXPagePlaceHolder_mode_MODE3").innerText.toLowerCase() == "display")
            document.getElementById("ctl00_GXPagePlaceHolder_mode_MODE3").innerText = "Display";
        document.getElementById("btn").innerText = document.getElementById("ctl00_GXPagePlaceHolder_mode_MODE3").innerText;

        function displaydata(e) {
            console.log(e);
            var value = e.srcElement.value;
            var index = e.srcElement.id.substring(e.srcElement.id.lastIndexOf("_") + 1);
            var element = document.querySelector("#ctl00_GXPagePlaceHolder_code1_C1_" + index)
            element.value = value;
        }
    </script>
</asp:Content>
