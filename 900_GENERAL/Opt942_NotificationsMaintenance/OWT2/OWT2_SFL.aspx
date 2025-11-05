<%@ Page MasterPageFile="~/template.master" Inherits="OWT2_SFL" CodeFile="OWT2_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">ENTITY TYPE - TABLE</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea">
        <%--<div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>--%>
        <div class="main-area-form main-area-form-modal">

           <div class="table-container"><table id="OWT2_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th>
                            <gal-input input-size="xsmall" no-description>
                                <input id="typeFilter_SEL1" runat="server" />
                            </gal-input>
                            <span>Type</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <input id="typeDescriptionFilter_SEL2" runat="server" />
                            </gal-input>
                            <span>Description</span>
                        </th>
                        <th>
                            <span>File</span>
                        </th>
                        <th>

                            <span>Code</span>
                        </th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span id="type_CODE" runat="server"></span></td>
                        <td><span id="typeDescription_DSC" runat="server"></span></td>
                        <td><span id="file_FIL" runat="server"></span></td>
                        <td><span id="code_KEY" runat="server"></span></td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>

</asp:Content>
