<%@ Page MasterPageFile="~/template.master" Inherits="TFQ03_A_SFL" CodeFile="TFQ03_A_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content">
            <div class="headline-container">
                <h1 class="headline" id="title_HTITLE" runat="server"></h1>
            </div>

            <div class="table-container">
                <div class="sub-headline">
                    <span>Defaults for:</span>
                </div>
                <div class="related-fields-area w-100">
                    <div class="centered-flex">
                        <gal-input label-text="System:" label-size="small" input-size="xsmall" no-description>
                            <input id="system_HSYSTEM" runat="server" />
                        </gal-input>
                        <gal-input label-text="Option:" label-size="xsmall" input-size="xsmall" no-description>
                            <input id="option_HOPTION" runat="server" />
                        </gal-input>
                        <gal-input label-text="Program:" label-size="auto" input-size="small" no-description>
                            <input id="program_HPROGRAM" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="small" label-text="User/Group:" input-size="xlarge">
                        <input id="userOrGroup_HUSER" class="no-color" runat="server" />
                        <input id="userOrGroupDescription_HUSERNME" class="no-color" runat="server" />
                    </gal-input>
                </div>
                <table id="TFQ03_A_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input label-size="" input-size="xsmall" no-description>
                                    <input id="transactionFilter_STTYPE" runat="server" />
                                </gal-input>
                                <span>Transaction</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="large" no-description>
                                    <input id="fieldFilter_SFEILD" runat="server" />
                                </gal-input>
                                <span>%Field</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="beforeValueFilter_SBEFORE" runat="server" />
                                </gal-input>
                                <span>%Before</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="afterValueFilter_SAFTER" runat="server" />
                                </gal-input>
                                <span>%After</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="userFilter_SUSRUPD" runat="server" />
                                </gal-input>
                                <span>%User</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="dateFilter_STTRN" galtype="date" dateformat="ddmmy" runat="server" />
                                </gal-input>
                                <span>Date</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_AOPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="transaction_ATTYPE" runat="server"></span></td>
                            <td><span id="fieldName_AFEILD" runat="server"></span></td>
                            <td><span id="beforeValue_ABEFORE" runat="server"></span></td>
                            <td><span id="afterValue_AAFTER" runat="server"></span></td>
                            <td><span id="userAUSRUPD" runat="server"></span></td>
                            <td>
                                <span galtype="date" dateformat="ddmmy" id="date_ATTRN" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input id="pageIndex" runat="server" style="display: none;" />
            <input id="hiddenField" runat="server" style="display: none;" />
            <div class="message-container">
                <span class="invalid-feedback" id="errorMessage_AMSG" runat="server"></span>
            </div>
        </div>
        <script>
            function pageOnLoad(gx_event) {
                deflectFocus("ctl00_GXPagePlaceHolder_opt_AOPT_001");
            }
        </script>
    </div>
</asp:Content>
