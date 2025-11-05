<%@ Page MasterPageFile="~/template.master" Inherits="T1U01P_SFLD" CodeFile="T1U01P_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">PAYMENT TERMS - DELETE CONFIRMATION</h1>
            </div>
            
            <div style="width:fit-content">
            <div class="table-container">
                <table id="T1U01P_SFLD_1" runat="server" style="width: 100%" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Type</span>
                            </th>
                            <th>
                                <span>Code</span>
                            </th>
                            <th>
                                <span>Short Description</span>
                            </th>

                            <th>
                                <span>Long Description</span>
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
                            <td><span id="type_TYP" runat="server"></span></td>
                            <td><span id="code_COD" runat="server"></span></td>
                              <td><span id="shortDescription_SDS" runat="server"></span></td>
                               <td><span id="longDescription_DSC" runat="server"></span></td>
                               <td><span id="netDays_NET" runat="server"></span></td>
                               <td><span id="discountDays_DDISC" runat="server"></span></td>
                               <td><span id="discountPrecentege_DISC" runat="server"></span></td>
                            <td><span id="fixDays_FIX" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
                 <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn" >
                        <span class="invalid-feedback" id="errorMessage_ERRD" runat="server"></span>
                        <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
