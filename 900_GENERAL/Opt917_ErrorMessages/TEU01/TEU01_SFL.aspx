<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="TEU01_SFL.aspx.cs" Inherits="TEU01_SFL" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar2" runat="server" />
            <input id="actionBar3" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">ERROR MESSAGES</h1>
                <span class="sub-headline blue-headline">Table Maintenance</span>
            </div>

            <div class="table-container">
                <table id="TEU01_SFL_1" runat="server" class="table gal6-table-striped less-padding-table">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="inputaboveC_SEL2" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>
                            <th>
                                <gal-input input-size="xxlarge" no-description>
                                    <input id="inputaboveMD_SEL3" runat="server" />
                                </gal-input>
                                <span>%Message description</span>
                            </th>
                            <th>
                                <gal-input input-size="small2" no-description>
                                    <input id="inputaboveS_SEL1" runat="server" />
                                </gal-input>
                                <span>%Subject</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="inputaboveSys_SEL5" runat="server" />
                                </gal-input>
                                <span>System</span>
                            </th>
                            <th columntype="primaryNumber">
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="inputaboveW_SEL4" runat="server" />
                                </gal-input>
                                <span>Warning</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="Opt_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="Code_NUMB" runat="server"></span>
                            </td>
                            <td>
                                <span id="MessageDescription_DES63" runat="server"></span>
                            </td>
                            <td>
                                <span id="Subject_SUBJECT" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sys_SYS" runat="server"></span>
                            </td>
                            <td columntype="primaryNumber">
                                <span id="Wrn_WRN" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                    <button id="F6_addBtn" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <span id="F6_add" runat="server" style="display: none;"></span>
    <script>
        var F6_add_isHidden = document.getElementById("ctl00_GXPagePlaceHolder_F6_add").innerText.trim() == "";
        var F6_add_Btn = document.getElementById("F6_addBtn");
        if (F6_add_isHidden) {
            F6_add_Btn.style.display = "none"
        }

</script>
</asp:Content>
