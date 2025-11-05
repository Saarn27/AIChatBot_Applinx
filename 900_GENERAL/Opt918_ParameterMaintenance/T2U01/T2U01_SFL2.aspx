<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T2U01_SFL2.aspx.cs" Inherits="T2U01_SFL2" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="title_TITLE" runat="server"></h1>
            </div>

            <div class="table-container">

                <table id="T2U01_SFL2_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">

                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="xsmall" no-description>
                                    <input id="col1_SEL1" runat="server" />
                                </gal-input>
                                <span>System</span>
                            </th>
                            <th>
                                <gal-input input-size="medium" no-description>
                                    <input id="col2_STR1" runat="server">
                                </gal-input>
                                <span>%System Description</span>
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="col3_SEL2" runat="server">
                                </gal-input>
                                <span>%Key type</span>
                            </th>
                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="col4_STR2" runat="server">
                                </gal-input>
                                <span>%Description</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="col5_STR3" runat="server">
                                </gal-input>
                                <span>System</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="k1_data1" runat="server"></span>
                            </td>
                            <td>
                                <span id="k2_data2" runat="server"></span>
                            </td>
                            <td>
                                <span id="k3_data3" runat="server"></span>
                            </td>
                            <td>
                                <span id="k4_data4" runat="server"></span>
                            </td>
                            <td>
                                <span id="k5_data5" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg" runat="server"></span>
                    <button type="button" id="btn" class="no-color btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <input style="display: none;" id="f6_Indicator" runat="server" />


        </div>

        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        if (!document.querySelector("#ctl00_GXPagePlaceHolder_f6_Indicator").value.includes("F6"))
            document.querySelector("#btn").style.display = 'none';
    </script>

</asp:Content>
