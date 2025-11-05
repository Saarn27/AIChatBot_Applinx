<%@ Page MasterPageFile="~/template.master" Inherits="TCU01_SFLD" CodeFile="TCU01_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">COMPANY GENERAL DATA - DELETE CONFIRMATION</h1>
            </div>
                    <gal-table-header text="ACTIVE" start-column="4" end-column="5" ></gal-table-header> 
                   <div class="table-container"><table id="companyGeneralDeleteTable_SFLD" runat="server" class="table gal6-table-striped">
                        <thead>
                            <tr class="grid-header">
                                <th>
                                    <span>Company</span>
                                </th>
                                <th style="width:700px;">
                                    <span>%Company name</span>
                                </th>
                                <th>
                                    <span>Type</span>
                                </th>
                                <th>
                                    <span>Production</span>
                                </th>
                                <th>
                                    <span>Finanse</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span id="cmp_CMP" runat="server"></span></td>
                                <td><span id="companyName_NME" runat="server"></span></td>
                                <td><span id="typ_TYP" runat="server"></span></td>
                                <td><span id="prod_PROD" runat="server"></span></td>
                                <td><span id="fin_FIN" runat="server"></span></td>
                            </tr>
                        </tbody>
                    </table>
                    <grid-scroller></grid-scroller></div>
                    <input style="display:none;" id="pageIndex" runat="server"/>
                    <div class="message-container message-container-with-btn">
                        <span class="invalid-feedback" id="msg" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                    </div>

                </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
