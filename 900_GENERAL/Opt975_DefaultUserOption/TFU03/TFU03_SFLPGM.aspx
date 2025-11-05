<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TFU03_SFLPGM.aspx.cs" Inherits="TFU03_SFLPGM" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">Help For Option </h1>
        <span id="option_OPTION" class="sub-headline blue-headline" runat="server"></span>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form-modal main-area-form ">
           <div class="table-container"><table id="helpForOption_SFLPGM" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th><span>System</span></th>
                        <th><span>Program</span></th>
                        <th><span>Program Description</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="system_PGM_SYS" runat="server"></span></td>
                        <td><span id="program_PGM_PGM" runat="server"></span></td>
                        <td><span id="programDescription_PGM_DSC" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>

</asp:Content>
