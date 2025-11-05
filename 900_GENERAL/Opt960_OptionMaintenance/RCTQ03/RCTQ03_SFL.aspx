<%@ Page MasterPageFile="~/template.master" Inherits="RCTQ03_SFL" CodeFile="RCTQ03_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server"> LIST OF LOCATIONS </h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
           <input id="actionBar" runat="server" />
           <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal">
          
            <div class="table-container"><table id="RCTQ03_SFL_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th >
                            <gal-input input-size="xsmall" no-description>
                                <input id="locationFilter_LOC" runat="server" />
                            </gal-input>
                            <span>%Location</span>
                        </th>
                        <th>
                            <gal-input input-size="large" no-description>
                                <input id="locationNameFilter_LNME" runat="server" />
                            </gal-input>
                            <span>%Location name</span>
                        </th>
                        <th>
                            <gal-input input-size="medium" no-description>
                                <input id="locationAddressFilter_IPL" runat="server" />
                            </gal-input>
                            <span>%Location address</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="locationCodeSFL_LOC" runat="server"></span></td>
                        <td><span id="loacationNameSFL_LNME" runat="server"></span></td>
                        <td><span id="locationAddressSFL_IPL" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display:none;" id="pageIndex" runat="server"/>
        </div>
    </div>
</asp:Content>
