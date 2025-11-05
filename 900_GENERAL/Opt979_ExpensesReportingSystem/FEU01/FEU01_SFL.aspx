<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FEU01_SFL.aspx.cs" Inherits="FEU01_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="hi">EXPENSES REPORT HEADERS</h1>
                <span class="sub-headline blue-headline" id="subheadline_" runat="server"></span>
            </div>
            <div class="table-container">
                <div class="column-form related-fields-area w-100" style="margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="centered-flex">
                            <gal-input-help label-text="User:" label-size="xsmall" input-size="large">
                                <input id="User_USR" runat="server">
                                <input id="UserDes_USRD" runat="server">
                            </gal-input-help>
                            <div class="centered-flex">
                                <gal-input label-text="Status Not Equal:" label-size="small2" input-size="medium" no-description>
                                    <select id="StatusNe_NSTS1" runat="server"></select>
                                </gal-input>
                                <gal-input label-text="" label-size="auto" input-size="medium" no-description>
                                    <select id="StatusNe_NSTS2" runat="server"></select>
                                </gal-input>
                            </div>
                        </div>
                    </div>
                </div>
                <table id="FEU01_SFL_1" runat="server" class="table gal6-table-striped  ">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="inputAbovenumber_HNUM" runat="server" />
                                </gal-input>
                                <span id="numberLabel" runat="server"></span>

                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="inputAbovedes_HDSC" runat="server" />
                                </gal-input>
                                <span>%Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <select id="inputAboveS_HSTS" runat="server"></select>
                                </gal-input>
                                <span>Status</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="small" no-description>
                                    <input id="inputAboveEmpnum_HFEHEMP" runat="server" />
                                </gal-input>
                                <span>Employee number</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="inputAbovesalesman_HSMD" runat="server" />
                                </gal-input>
                                <span id="salesmanLabel_" runat="server"></span></th>
                            <th columntype="date">
                                <gal-input input-size="small2" no-description>
                                    <input id="inputAbovefrom_HOPN" runat="server" galtype="date" dateformat="ddmmy" />
                                </gal-input>
                                <span id="fromLabel" runat="server"></span></th>
                            <th columntype="date">
                                <gal-input input-size="small2" no-description>
                                    <input id="inputAboveto_HOPNT" runat="server" galtype="date" dateformat="ddmmy" />
                                </gal-input>
                                <span id="toLabel" runat="server"></span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="option_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td columntype="primaryNumber">
                                <span id="number_NUMD" runat="server"></span>
                            </td>
                            <td>
                                <span id="Description_DSC" runat="server"></span>
                            </td>
                            <td>
                                <span id="S_STS" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="EmpNo_FEHEMP" runat="server"></span>
                            </td>
                            <td>
                                <span id="SalesmanEmp_SMD" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="From_DATF" galtype="date" dateformat="ddmmy" runat="server"></span>
                            </td>
                            <td columntype="date">
                                <span id="To_DATT" galtype="date" dateformat="ddmmy" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button type="button" id="F6" runat="server" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf6]');">New</button>
                </div>
            </div>
        </div>
        <div class="legend-div">
            <legend-block text="Note" color="blue"></legend-block>
            <legend-block text="Wait" color="yellow"></legend-block>
            <legend-block text="Approve" color="green"></legend-block>
            <legend-block text="Denied" color="red"></legend-block>
            <legend-block text="Partial app" color="purple"></legend-block>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

        function changingname(elementIdPart, targetValue, newValue) {

            let element = document.getElementById("ctl00_GXPagePlaceHolder_" + elementIdPart);

            if (element) {
                let currentText = element.innerText;

                if (currentText === targetValue) {
                    element.innerText = newValue;
                }
            }
        }
        //console.log(document.querySelector("#ctl00_GXPagePlaceHolder_toLabel").innerText);
        changingname("numberLabel", "My Sal.", "My Salary");
        changingname("numberLabel", "No.", "Number");
        changingname("fromLabel", "OpnDat", "Open date");
        changingname("salesmanLabel_", "Salesman\\Emp", "Salesman");

        const currentTableRows = document.querySelector("#ctl00_GXPagePlaceHolder_FEU01_SFL_1").children[0];
        if (document.querySelector("#ctl00_GXPagePlaceHolder_toLabel").innerText === "Total") {
            for (let rowIndex = 1; rowIndex < currentTableRows.children.length; rowIndex++) {
                currentTableRows.children[rowIndex].children[7].children[0].removeAttribute("galtype");
                currentTableRows.children[rowIndex].children[7].children[0].removeAttribute("dateformat");
            }
        }

    </script>

</asp:Content>
