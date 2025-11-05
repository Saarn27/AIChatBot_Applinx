<%@ Page MasterPageFile="~/template.master" Inherits="GHRU01_SFL" CodeFile="GHRU01_SFL.aspx.cs" Language="C#" %>

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
            <gal-table-header text="Destination" start-column="7" end-column="8"></gal-table-header>
            <div class="table-container">
                <table id="GHRU01_SFL_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="IE_SEL0" runat="server" onkeyup="changeToUpper(event)" />
                                </gal-input>
                                <span>Restriction Type</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <select id="gr_SEL1" runat="server">
                                        <option value=""></option>
                                        <option value="M">M=Class1</option>
                                        <option value="B">B=Brand</option>
                                        <option value="V">V=Vendor</option>
                                        <option value="I">I=Item</option>
                                        <option value="A">A=Application</option>
                                        <option value="C">C=Country Of Origin</option>
                                        <option value="H">H=Hazardous</option>
                                    </select>
                                </gal-input>
                                <span>Group Code</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="keyNumber_SEL2" runat="server" onkeyup="changeToUpper(event)" />
                                </gal-input>
                                <span>Key Number</span>
                            </th>
                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="description_SEL6" runat="server" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <select id="gr_SEL3" runat="server">
                                        <option value=""></option>
                                        <option value="CM">CM=Company</option>
                                        <option value="CU">CU=Customer</option>
                                        <option value="CC">CC=Customer Type</option>
                                        <option value="ST">ST=State</option>
                                        <option value="ZP">ZP=Zip Code</option>
                                        <option value="WS">WS=Ship Location</option>
                                        <option value="WL">WL=Sales Location</option>
                                    </select>
                                </gal-input>
                                <span>Group Code</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="keyNumber_SEL4" runat="server" />
                                </gal-input>
                                <span>Key Number</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="description_SEL7" runat="server" onkeyup="changeToUpper(event)" />
                                </gal-input>
                                <span>Description</span>
                            </th>
                            <th>
                                <span>Internal</span>
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
                            <td><span id="keuNumber_FRMK" runat="server"></span></td>
                            <td><span id="description_FRMD" runat="server"></span></td>
                            <td><span id="gr_DSTP" runat="server"></span></td>
                            <td><span id="keyNumber_DSTK" runat="server"></span></td>
                            <td><span id="description_DSTD" runat="server"></span></td>
                            <td><span id="int_REM1" runat="server"></span>
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
        <script>
            function changeToUpper(event) {
                console.log(event.srcElement.value);
                event.srcElement.value = event.srcElement.value.toUpperCase();
            }

        </script>
    </div>
</asp:Content>
