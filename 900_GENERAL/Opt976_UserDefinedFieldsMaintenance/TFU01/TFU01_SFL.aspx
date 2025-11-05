<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_SFL.aspx.cs" Inherits="TFU01_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 id="TitleTarget" class="headline"></h1>

            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input label-text="File:" label-size="auto" input-size="xlarge2">
                                <input id="file_FIL" runat="server">
                                <input id="desc_AHDD" runat="server">
                            </gal-input>
                            <gal-input label-text="Key - 1:" label-size="auto" input-size="small" no-description>
                                <input id="key_KEY1" runat="server">
                            </gal-input>
                        </div>
                    </div>
                </div>

                <div class="table-container w-100">
                    <table id="TFU01_SFL_1" runat="server" class="table gal6-table-striped less-padding-table w-100">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th>
                                    <gal-input input-size="large2" no-description>
                                        <input id="fieldNSearch_SEL1" runat="server" />
                                    </gal-input>
                                    <span>%Field name</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="seqS_S_TFSEQ" runat="server" />
                                    </gal-input>
                                    <span>Sequence</span>
                                </th>
                                <th>
                                    <span>Type</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <span>Length</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <span>Decimal</span>
                                </th>
                                <th>
                                    <span>Table</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <gal-input input-size="small" no-description>
                                        <input id="fieldNumberS_STFKEY2" runat="server" />
                                    </gal-input>
                                    <span>Field number</span>
                                </th>
                                <th>
                                    <span>System</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="opt_S" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td>
                                    <span id="fieldName_ATXT" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="seq_ASEQ" runat="server"></span>
                                </td>
                                <td>
                                    <span id="typ_ATYP" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="len_ALEN" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="typeDesc_ADEC" runat="server"></span>
                                </td>
                                <td>
                                    <span id="table_ATYP1" runat="server"></span>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="fieldNumber_RRN" runat="server"></span>
                                </td>
                                <td>
                                    <span id="sys_AIMC" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                        <button id="AddOrCopyBt" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="legend-div">
        <legend-block text="Note" color="aqua"></legend-block>
        <legend-block text="Header" color="yellow"></legend-block>
        <legend-block text="Lock" color="blue" text-color></legend-block>
    </div>
    <span id="btnAdd" runat="server" style="display:none"></span>
    <span id="title_hdr" runat="server" style="display:none"></span>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

        const TitleText = document.querySelector("#ctl00_GXPagePlaceHolder_title_hdr")
        if (TitleText.innerText.includes("MAINTENANCE")) {
            document.querySelector("#TitleTarget").innerText = "User Defined Fields Maintenance";
        } else if (TitleText.innerText.includes("SPECIFICATION")) {
            document.querySelector("#TitleTarget").innerText = "Specification";
        }

        const TargetButton = document.querySelector("#AddOrCopyBt");
        if (document.querySelector("#ctl00_GXPagePlaceHolder_btnAdd").innerText.includes("C")) {
            TargetButton.innerText = "Copy";
            TargetButton.setAttribute("onclick", "gx_SubmitKey('[pf10]');");
        }

    </script>
</asp:Content>
