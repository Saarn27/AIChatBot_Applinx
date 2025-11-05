<%@ Page MasterPageFile="~/template.master" Inherits="TSU02_SFLD" CodeFile="TSU02_SFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" runat="server">Personal Menu: Delete Confirmation</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="medium" input-size="xlarge" label-text="User Name:">
                        <input id="userName_USR" runat="server"/>
                        <input id="userNameDesc_NAM" runat="server"/>
                    </gal-input>
                </div>
            </div>
           <div class="table-container"><table id="TSU02_SFLD_1" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th style="width: 100px">
                            <span>System</span>
                        </th>
                        <th style="width: 100px">
                            <span>Menu</span>
                        </th>
                        <th style="width: 100px">
                            <span>Father</span>
                        </th>
                        <th columntype="qty" style="width: 150px">
                            <span>Option</span>
                        </th>
                        <th style="width: 150px">
                            <span>Sub Option</span>
                        </th>
                        <th style="width:200px">
                            <span>%program</span>
                        </th>
                        <th >
                            <span>Number Of Parameters</span>
                        </th>
                        <th>
                            <span>Description</span>
                        </th>
                        <th>
                            <span>Sequence</span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span id="system_SYSCOD" runat="server"></span></td>
                        <td><span id="menu_MENU" runat="server"></span></td>
                        <td><span id="father_FCOD" runat="server"></span></td>
                        <td><span id="option_OCOD" runat="server"></span></td>
                        <td><span id="subOption_BCOD" runat="server"></span></td>
                        <td><span id="program_PGM" runat="server"></span></td>
                        <td columntype="qty"><span id="numberOfParameters_NOP" runat="server"></span></td>
                        <td><span id="description_DSCL1" runat="server"></span></td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="legend-div">
                <legend-block text="Option Not Active" color="white"></legend-block>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
            </div>
        </div>
    </div>
</asp:Content>
