<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU01_SFLD.aspx.cs" Inherits="TFU01_SFLD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">MAIN FIELD FILE</h1>
                <span class="sub-headline blue-headline">Delete Confirmation</span>
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
                    <table id="TFU01_SFLD_1" runat="server" class="table gal6-table-striped less-padding-table no-selection-table w-100">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Field name</span>
                                </th>
                                <th columntype="primaryNumber">
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
                                    <span>Type 2</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="feldName_ATXT" runat="server"></span>
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
                                    <span id="adesc_ADEC" runat="server"></span>
                                </td>
                                <td>
                                    <span id="atype_ATYP1" runat="server"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback"></span>
                        <button id="F10btnBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F10btn" runat="server" style="display: none;"></span>
    <script>
        var F10btn_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F10btn").innerText.trim() == "";
        var F10btn_Btn = document.getElementById("F10btnBtn");
        if (F10btn_isHidden) {
            F10btn_Btn.style.display = "none"
        }

</script>
</asp:Content>
