<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GXKU01_SFL.aspx.cs" Inherits="GXKU01_SFL" %>

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
                <h1 class="headline">LABEL</h1>
                <span class="sub-headline blue-headline" id="subheadline1_LBL" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="sub-headline blue-headline" id="subheadline2_LBLDSC20" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="sub-headline blue-headline" id="subheadline3_TITLE" runat="server"></span>
            </div>
            <div class="wrapper-container">
                <div class="column-form related-fields-area" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input label-text="Item:" label-size="xsmall2" input-size="xlarge">
                            <input id="Item_ITEM" runat="server">
                            <input id="Itemdes_ITEMDSC" runat="server">
                        </gal-input>
                        <gal-input label-text="Order:" label-size="xsmall2" input-size="small" no-description>
                            <input id="Order_PROD" runat="server">
                        </gal-input>
                        <gal-input label-text="Customer:" label-size="xsmall2" input-size="xlarge">
                            <input id="Customer_CUST" runat="server">
                            <input id="Customerdes_CUSTD" runat="server">
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-text="" label-size="auto" input-size="auto" no-description style="margin-left: -10px">
                            <div style="width: auto" class="sub-headline blue-headline"><span>Private</span></div>
                        </gal-input>
                        <gal-input label-text="Job:" label-size="xsmall" input-size="small2" no-description>
                            <input id="Job_JOBS" runat="server">
                        </gal-input>
                        <gal-input label-text="User:" label-size="xsmall" input-size="small2" no-description>
                            <input id="User_USERS" runat="server">
                        </gal-input>
                    </div>
                </div>
                <div class="table-container w-100">
                    <table id="GXKU01_SFL_1" runat="server" class="table gal6-table-striped less-padding-table w-100">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>
                                <th columntype="primaryNumber">
                                    <span>Line</span>
                                </th>
                                <th>
                                    <span>Field description</span>
                                </th>
                                <th>
                                    <gal-input label-size="auto" label-text="Quantity:" input-size="xsmall" no-description>
                                        <input id="inputaboveTd3_QTY" runat="server" />
                                    </gal-input>
                                    <span>Combined</span>
                                </th>
                                <th columntype="primaryNumber">
                                    <span>Length</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="Opt_SEL" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="Ln_LINE" runat="server"></span>
                                </td>
                                <td>
                                    <span id="FieldDscQty_TEXT" runat="server" class="no-color"></span>
                                </td>
                                <td>
                                    <gal-input input-size="xlarge2" no-description>
                                        <input id="td3_DATA" runat="server" maxlength="45" />
                                    </gal-input>
                                </td>
                                <td columntype="primaryNumber">
                                    <span id="Ln_LEN" runat="server"></span>
                                    <action-bar mode="single"></action-bar>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller>
                    <input style="display: none;" id="pageIndex" runat="server" />
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                        <button id="F6_addBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                        <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Print</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F6_add" runat="server" style="display: none;"></span>
    <script>
        var F6_add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F6_add").innerText.trim() == "";
        var F6_add_Btn = document.getElementById("F6_addBtn");
        if (F6_add_isHidden) {
            F6_add_Btn.style.display = "none"
        }

    </script>
</asp:Content>
