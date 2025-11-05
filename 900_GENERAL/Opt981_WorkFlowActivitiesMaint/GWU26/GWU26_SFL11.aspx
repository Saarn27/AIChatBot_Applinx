<%@ Page MasterPageFile="~/template.master" Inherits="GWU26_SFL11" CodeFile="GWU26_SFL11.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WORKFLOW ACTIVITY - MAINTENANCE</h1>
                <%--  <gal-input label-size="medium"  input-size="large" no-description>
                        <ipnut id="orderSign" runat="server"/>
                    </gal-input>--%>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input-help label-size="small" label-text="Current user:" input-size="xlarge">
                        <input id="currentUserCode_SLUSR" runat="server" />
                        <input id="currentUserName_SLUSRN" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="small" label-text="Cost center:" input-size="xlarge" no-description>
                        <select id="costCenter_SLCST" runat="server"></select>
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="large" no-description>
                        <ipnut id="orderSign" runat="server" />
                    </gal-input>
                </div>
            </div>


            <tabs-list>
                <div id="generalTab_TAB1" text="General"></div>
                <div id="additionalTab_TAB2" text="Additional"></div>
                <div id="custSupplierTab_TAB3" text="Customer / Supplier" active="true"></div>
            </tabs-list>
            <div class="tab-content">
                <div class="tab-pane active" id="3">
                    <div class="table-container">
                        <table id="customerVendTabTable_SFL11" runat="server" class="table gal6-table-striped">
                            <thead>
                                <tr class="grid-header">
                                    <th class="option-column">
                                        <input type="checkbox" id="masterCheckBox" /></th>
                                    <th sortby="titleType_CLMHDR1">
                                         <div class="centered-flex">
                                            <gal-input input-size="small" no-description>
                                                <select id="filterTypeWorkFlow_SLTYP" runat="server" style="font-size: 8px"></select>
                                            </gal-input>
                                            <gal-input input-size="xxsmall" no-description>
                                                <gx:GXCheckBox ID="astericFilter_SLINADV" CheckedValue="*" UncheckedValue=" " runat="server" />
                                            </gal-input>
                                        </div>
                                        <span id="titleType_CLMHDR1">Type</span>
                                    </th>
                                    <th sortby="titleDocNum_CLMHDR2">
                                        <gal-input label-text=" " input-size="medium" no-description>
                                            <input id="filterDocNumWorkFlow_SLDOC" runat="server" />
                                        </gal-input>
                                        <span id="titleDocNum_CLMHDR2">Document number</span>
                                    </th>
                                    <th sortby="titleDocDescription_CLMHDR3">
                                        <gal-input label-text=" " input-size="xlarge" no-description>
                                            <input id="filterDocDescWorkFlow_SLDSC" runat="server" />
                                        </gal-input>
                                        <gal-input label-text=" " input-size="xlarge" no-description>
                                            <input id="filterRemarkWorkFlow_SLRMK1" runat="server" />
                                        </gal-input>
                                        <span id="titleDocDescription_CLMHDR3" runat="server"></span>
                                    </th>
                                    <th sortby="titleCustomerSupp_CLMHDR11">
                                        <gal-input label-text="In IMC: " label-size="xsmall" input-size="small" no-description>
                                            <select id="partImcIN_SIMC" runat="server">
                                                <option value=""></option>
                                                <option value="I">I = Yes</option>
                                                <option value="N">N = No</option>
                                            </select>
                                        </gal-input>
                                        <div class="centered-flex">
                                            <gal-input-help label-size="xsmall" label-text="Type:" input-size="xxsmall" no-description>
                                                <select id="filterCustType_SLCUSTT" runat="server"></select>
                                            </gal-input-help>
                                            <gal-input-help label-text=" " input-size="small2" no-description>
                                                <input id="filterCustNumber_SLCUST" runat="server" />
                                            </gal-input-help>
                                        </div>
                                        <span id="titleCustomerSupp_CLMHDR11">Customer / Supplier</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="option-column">
                                        <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                        <input type="checkbox" galtype="checkbox" />
                                    </td>
                                    <td>
                                        <span id="workFlowType_WFTYP" runat="server"></span>
                                                                                <span class="double-span" id="indicatorAdvance_INADV" runat="server"></span>

                                    </td>
                                    <td>
                                        <span id="workFlowDocNumber_DOCN" runat="server"></span>
                                    </td>
                                    <td>
                                        <span class="double-span" id="workFlowDocDesc_WFDSC" runat="server"></span>
                                        <span class="label-medium" id="workFlowRemark_RMKF" runat="server"></span>
                                    </td>
                                    <td>
                                        <span id="customerNumber_CUSTN" runat="server"></span>
                                        <action-bar mode="single"></action-bar>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <grid-scroller></grid-scroller>
                    </div>
                    <input style="display: none;" id="pageIndex" runat="server" />

                    <div class="message-container">
                        <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    </div>
                    <div class="legend-div">
                        <legend-block text="Info" color="yellow"></legend-block>
                        <legend-block text="Return" color="aqua"></legend-block>
                        <legend-block text="Error" color="red"></legend-block>
                        <legend-block text="Handling" color="blue"></legend-block>
                        <legend-block color="red" text-color id="dynamicAsteric"></legend-block>
                    </div>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none" />
    </div>
        <script>
        if (document.getElementById("ctl00_GXPagePlaceHolder_filterTypeWorkFlow_SLTYP").value== "RQS") {
            document.getElementById("dynamicAsteric").setAttribute("text", "*=Priority 1");
        } else { document.getElementById("dynamicAsteric").setAttribute("text", "*=In Adv/Crd");}
        </script>
</asp:Content>
