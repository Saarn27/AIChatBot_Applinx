<%@ Page MasterPageFile="~/template.master" Inherits="T0U01H1_SFL2D" CodeFile="T0U01H1_SFL2D.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
                <span class="blue-headline sub-headline" id="type_TYPE" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="blue-headline sub-headline">* * * Delete Confirmation * * *</span>
            </div>
            <div class="table-container">
                <table id="T0U01H1_SFL2D_1" runat="server" class="table gal6-table-striped no-selection-table">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <span>Code</span>
                            </th>
                            <th class="input-large">
                                <span>Short description</span>
                            </th>
                            <th class="input-xxlarge">
                                <span>Long description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="Code_COD" runat="server"></span></td>
                            <td>
                                <span id="Short_SDS" runat="server" class="double-span"></span>
                                <span id="Short2_CODU" runat="server"></span>
                            </td>
                            <td>
                                <span id="LongDescription_DSC" runat="server" class="double-span"></span>
                                <span id="long2_DSCU" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
