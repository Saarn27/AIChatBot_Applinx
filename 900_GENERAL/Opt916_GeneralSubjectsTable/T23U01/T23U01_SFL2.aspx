<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T23U01_SFL2.aspx.cs" Inherits="T23U01_SFL2" %>
<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div class="headline-container modal-header">
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]')"></button>
        <h1 class="headline"> DELETE GENERAL SUBJECT</h1>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="table-container">
                <table id="T23U01_SFL2_1" runat="server" class="table gal6-table-striped" style="min-height:auto">
                    <thead>
                        <tr class="grid-header">
                            <th class="label-xsmall">                            
                                <span>Main</span>
                            </th>
                            <th class="label-small">                              
                                <span>Secondary</span>
                            </th>
                            <th class="label-xsmall">      
                                <span>Code</span>
                            </th>
                            <th class="label-medium2">         
                                <span>Description</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="main_DSUB" runat="server"></span></td>
                            <td><span id="secondary_DSB1" runat="server"></span></td>
                            <td><span id="code_DCOD" runat="server"></span></td>
                            <td>
                                <span id="description_DDSC" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG2" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
            </div>
        </div>
    </div>
</asp:Content>
