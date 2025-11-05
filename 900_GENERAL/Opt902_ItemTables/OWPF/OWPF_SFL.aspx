<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="OWPF_SFL.aspx.cs" Inherits="OWPF_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="title_KOT" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="table-container">
                <div class="related-fields-area w-100">
                    <gal-input label-text="Group:" label-size="auto" input-size="xsmall" no-description>
                        <input id="grp_SEL3" runat="server" />
                    </gal-input>
                </div>
                <table id="OWPF_SFL_1" runat="server" class="table gal6-table-striped  ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <span id="col1_FATTIT" runat="server"></span></th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="col2Filter_SEL1" runat="server" />
                                </gal-input>
                                <span id="col2Header_CODTIT" runat="server"></span></th>
                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="col3Filter_SEL2" runat="server" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_SEL" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="Item_FAT" runat="server"></span>
                            </td>
                            <td>
                                <span id="Father_COD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_SDS" runat="server"></span>
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
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>
        let title = document.getElementById('ctl00_GXPagePlaceHolder_title_KOT')
        title.innerText = title.innerText.replace('=', "= ");
    </script>
</asp:Content>
