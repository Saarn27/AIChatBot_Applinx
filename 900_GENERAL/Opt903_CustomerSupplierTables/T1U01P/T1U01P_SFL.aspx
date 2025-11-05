<%@ Page MasterPageFile="~/template.master" Inherits="T1U01P_SFL" CodeFile="T1U01P_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">PAYMENT TERMS TABLE MAINTENANCE</h1>
                <span id="type_TYP" class="sub-headline no-color blue-headline" runat="server"></span>
            </div>

            <div class="table-container">
                <table id="T1U01P_SFL_1" runat="server" class="table gal6-table-striped less2-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="codeFilter_SEL0" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="shortDescriptionFilter_DES1" runat="server" />
                                </gal-input>
                                <span>%Short Description</span>
                            </th>

                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="longDescriptionFilter_SEL2" runat="server" />
                                </gal-input>
                                <span>%Long Description</span>
                            </th>

                            <th>
                                <span>Current +</span>
                            </th>
                            <th>
                                <span>Net Days</span>
                            </th>
                            <th>
                                <span>Discount Days</span>
                            </th>
                            <th>
                                <span>Discount Precentage</span>
                            </th>
                            <th>
                                <span>Fix Days</span>
                            </th>


                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="code_COD" runat="server"></span></td>
                            <td><span id="shortDescription_SDS" runat="server"></span></td>
                            <td><span id="longDescription_DSC" runat="server"></span></td>
                            <td><span id="currentPlus_DA01" runat="server"></span></td>
                            <td><span id="netDays_NET" runat="server"></span></td>
                            <td><span id="discountDays_DDISC" runat="server"></span></td>
                            <td><span id="discountPrecentage_DISC" runat="server"></span></td>
                            <td><span id="fixDays_FIX" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_EARA" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
