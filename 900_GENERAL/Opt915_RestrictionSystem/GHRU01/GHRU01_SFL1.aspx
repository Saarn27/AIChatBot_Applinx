<%@ Page MasterPageFile="~/template.master" Inherits="GHRU01_SFL1" CodeFile="GHRU01_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="optTrans" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Restriction Maintenance List</h1>
                <span id="RECNBR_RECNBR" class="sub-headline no-color blue-headline" runat="server"></span>
            </div>
            <gal-table-header text="From Location" start-column="4" end-column="5"></gal-table-header>
            <div class="table-container">
                <table id="GHRU01_SFL1_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th >
                                <gal-input input-size="small" no-description>
                                    <input id="IE_SEL0" runat="server" />
                                </gal-input>
                                <span>Restriction Type</span>
                            </th>
                            <th >
                                <gal-input input-size="small2" no-description>
                                    <select id="gr_SEL1" runat="server">
                                        <option value=" "></option>
                                        <option value="M">Class1</option>
                                        <option value="B">Brand</option>
                                        <option value="V">Vendor</option>
                                        <option value="I">Item</option>
                                        <option value="A">Application</option>
                                        <option value="C">Country Of Origin</option>
                                        <option value="H">Hazardous</option>
                                    </select>
                                </gal-input>
                                <span>Restriction Code</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="key_SEL2" runat="server" />
                                </gal-input>
                                <span>Key Number</span>
                            </th>
                            <th style="min-width: 300px">
                                <span>Description</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="issue_SEL5" runat="server" />
                                </gal-input>
                                <span>Issue</span>
                            </th>
                            <th>
                                <span>Item Number</span>
                            </th>
                            <th>
                                <span>Warehouse</span>
                            </th>
                            <th>
                                <span>State</span>
                            </th>
                            <th >
                                <span>Zip Code</span>
                            </th>
                            <th >
                                <span>External</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="IE_INC" runat="server"></span></td>
                            <td><span id="gr_FRMP" runat="server"></span></td>
                            <td><span id="key_FRMK" runat="server"></span></td>
                            <td><span id="description_FRMD" runat="server"></span></td>
                            <td><span id="issue_SISSUE" runat="server"></span></td>
                            <td><span id="itemNumber_SCAT" runat="server"></span></td>
                            <td><span id="whs_SWHS" runat="server"></span></td>
                            <td><span id="state_SSTATE" runat="server"></span></td>
                            <td><span id="zipCode_SZIP" runat="server"></span></td>
                            <td><span id="ext_REM2" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <div style="display: flex; justify-content: flex-end">
                    <button class="btn btn-primary big-button btn-galweb" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
        </div>
    </div>
</asp:Content>
