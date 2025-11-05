<%@ Page MasterPageFile="~/template.master" Inherits="OWFCT_SFL" CodeFile="OWFCT_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">Cost Center</h1>
        <span class="separating-line">|</span>
        <span class="headline blue-headline" id="subHeadline_HEADER" runat="server"></span>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="table-container">
                <table id="OWFCT_SFL_table" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="typeSearch_SEL2" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>

                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="codeSearch_SEL3" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>

                            <th>
                                <gal-input input-size="xxlarge" no-description>
                                    <input id="descSearch_SEL1" runat="server" />
                                </gal-input>
                                <span>%Description</span>
                            </th>

                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="localDescSearch_FCTFRA9" runat="server" />
                                </gal-input>
                                <span>%Local description</span>
                            </th>

                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="fatherSearch_SEL4" runat="server" />
                                </gal-input>
                                <span>Father</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="optionSelect_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="type_TYP" runat="server"></span></td>
                            <td><span id="code_COD" runat="server"></span></td>
                            <td><span id="description_DSC" runat="server"></span></td>
                            <td><span id="localDescription_FCTFRA9" runat="server"></span></td>
                            <td>
                                <span id="father_FATH" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
