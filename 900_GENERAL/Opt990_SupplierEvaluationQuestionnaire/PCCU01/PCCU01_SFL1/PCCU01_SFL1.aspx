<%@ Page MasterPageFile="~/template.master" Inherits="PCCU01_SFL1" CodeFile="PCCU01_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SUPPLIER'S EVALUATION QUESTIONNAIRE</h1>
                <span class="sub-headline" id="SXQSTTXT" runat="server"></span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-text="Supplier Code" label-size="medium" input-size="medium">
                        <span id="Supplier_SXVNDSCOR" runat="server"></span>
                    </gal-input>
                    <gal-input label-text="Supplier Name" label-size="medium" input-size="xlarge">
                        <span id="Supplier_SXVNDSCORN" runat="server"></span>
                    </gal-input>
                </div>
            </div>
            <div class="table-container">
                <table id="PCCU01_SFL1_Grid" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th><span>Before Score</span></th>
                            <th><span>After Score</span></th>
                            <th><span>Update Date</span></th>
                            <th><span>Update Time</span></th>
                            <th><span>User</span></th>
                            <th><span>User Name</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="Before_SLSCOREB" runat="server"></span></td>
                            <td><span id="After_SLSCOREA" runat="server"></span></td>
                            <td><span id="Date_SLUPDDT" runat="server"></span></td>
                            <td><span id="Time_SLUPDTM" runat="server"></span></td>
                            <td><span id="User_SLUSER" runat="server"></span></td>
                            <td>
                                <span id="Name_SLUSERN" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <div class="message-container">
                <span id="MSG1" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
