<%@ Page MasterPageFile="~/template.master" Inherits="TCU01_SFL" CodeFile="TCU01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">COMPANY GENERAL DATA</h1>
            </div>
                    <gal-table-header text="ACTIVE" start-column="5" end-column="6" ></gal-table-header> 
                   <div class="table-container"><table id="companyGeneralTable_SFL" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th class="option-column">                                    
                                    <input type="checkbox" id="masterCheckBox" />
                                </th>

                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="cmpF_SEL3" runat="server" />
                                    </gal-input>
                                    <span>Company</span>
                                </th>
                                <th style="width:700px;">
                                    <gal-input input-size="xxlarge" no-description >
                                        <input id="companyNameF_SEL1" runat="server" />
                                    </gal-input>
                                    <span>%Company name</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="typF_SEL2" runat="server" />
                                    </gal-input>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="prodF_SEL5" runat="server" />
                                    </gal-input>
                                    <span>Production</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="finF_SEL6" runat="server" />
                                    </gal-input>
                                    <span>Finanse</span>
                                </th>
                                <th>
                                    <gal-input input-size="xsmall" no-description>
                                        <input id="mCmpF_SEL7" runat="server" />
                                    </gal-input>
                                    <span>Mother company</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="option-column">
                                    <input class="row-selector-cell" id="opt_S" runat="server" />
                                    <input type="checkbox" galtype="checkbox" />
                                </td>
                                <td><span id="cmp_CMP" runat="server"></span></td>
                                <td><span id="companyName_NME" runat="server"></span></td>
                                <td><span id="typ_TYP" runat="server"></span></td>
                                <td><span id="prod_PROD" runat="server"></span></td>
                                <td><span id="fin_FIN" runat="server"></span></td>
                                <td><span id="mCmp_MOTHER" runat="server"></span><action-bar mode="single"></action-bar></td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller></div>
                    <input style="display:none;" id="pageIndex" runat="server"/>
                    <div class="message-container">
                        <span class="invalid-feedback" id="msg" runat="server"></span>
                    </div>

                    <div class="legend-div">
                        <legend-block text="Test company" color="yellow"></legend-block>
                        <legend-block text="Remote company" color="purple"></legend-block>
                    </div>
                </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
