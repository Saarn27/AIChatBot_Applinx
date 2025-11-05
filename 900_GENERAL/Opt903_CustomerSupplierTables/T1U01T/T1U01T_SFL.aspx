<%@ Page MasterPageFile="~/template.master" Inherits="T1U01T_SFL" CodeFile="T1U01T_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id ="title" runat="server"></h1>
                <span id="Type_TYP" class="sub-headline no-color blue-headline" runat="server"></span>
            </div>
            <div class="table-container">
                <table id="T1U01T_SFL_1" runat="server" class="table gal6-table-striped less2-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="codeFilter_SCODE" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="shortDescriptionFilter_SSHRTDSC" runat="server" />
                                </gal-input>
                                <span>%Short description</span>
                            </th>
                            <th>
                                <gal-input input-size="xxlarge" no-description>
                                    <input id="longDescriptionFilter_SLNGDSC" runat="server" />
                                </gal-input>
                                <span>%Long description</span>
                            </th>
                            <th>
                                <span>System</span>
                            </th>
                            <th columnType="price">
                                <span id="taxColTitle" runat="server"></span>
                            </th>
                            <th> 
                                <span>User</span>
                            </th>
                             <th> 
                                <span>Update date</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_AOPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="code_AT1KEY" runat="server"></span></td>
                            <td><span id="shortDescription_AT1DSC" runat="server"></span></td>
                            <td><span id="longDescription_AT1DSCL" runat="server"></span></td>
                            <td><span id="imc_AT1IMC" runat="server"></span></td>
                            <td columnType="price"><span id="tax_AT1TAX" runat="server"></span></td>
                            <td><span id="user_AT1USR" runat="server"></span></td>
                            <td><span id="updateDate_AT1TUPD" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_AMSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
             
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
    <script>
        var taxColTitle = document.getElementById("ctl00_GXPagePlaceHolder_taxColTitle");
        if (taxColTitle.innerHTML.includes("Vat")) {
            taxColTitle.innerHTML = "Vat precentage";
        }
        if (taxColTitle.innerHTML.includes("tax")) {
            taxColTitle.innerHTML = "Tax precentage";
        }
    </script>
</asp:Content>
