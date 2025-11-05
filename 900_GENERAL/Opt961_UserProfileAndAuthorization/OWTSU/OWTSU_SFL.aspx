<%@ Page MasterPageFile="~/template.master" Inherits="OWTSU_SFL" CodeFile="OWTSU_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">USER LIST</h1>
        <span id="type_TYP1T" class="sub-headline" runat="server"></span>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <gal-input label-size="auto" input-size="xlarge,xlarge,xlarge" label-text="Company:" no-description>
                <select id="company_CMP1" runat="server" />
                <select id="company_CMP2" runat="server" />
                <select id="company_CMP3" runat="server" />
            </gal-input>
            <div class="table-container">
                <table id="userListTable_SFL" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th>
                                <gal-input input-size="small" label-text=" " no-description>
                                    <input id="filterUserName_SEL1" runat="server" />
                                </gal-input>
                                <span>User</span>
                            </th>
                            <th>
                                <gal-input input-size="xlarge" no-description>
                                    <input id="filterUserName_SEL2" runat="server" />
                                </gal-input>
                                <span>%User name</span>
                            </th>
                            <th>
                                <gal-input input-size="xxsmall" no-description>
                                    <input id="filterUserType_STR1" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <select id="filterEmployeeNumber_SEL4" runat="server" />
                                </gal-input>
                                <span>Employee number</span>
                            </th>
                            <th>
                                <gal-input input-size="large" no-description>
                                    <select id="filterDepartment_SEL5" runat="server" />
                                </gal-input>
                                <span>Department</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span id="userCodeSfl_USER" runat="server"></span>
                            </td>
                            <td>
                                <span id="userNameSfl_UNAM" runat="server"></span>
                            </td>
                            <td>
                                <span id="userTypeSfl_TYP" runat="server"></span>
                            </td>
                            <td>
                                <span id="empNumberSfl_EMP" runat="server"></span>
                            </td>
                            <td>
                                <span id="empDepSfl_DEP" runat="server"></span>
                                <action-bar mode="single" checkTD="2" colors="all" values="Select" keytopress="enter"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <input style="display: none;" id="pageIndex" runat="server" />
            <div class="legend-div legend-modal" >
                <legend-block text="Disabled" color="purple"></legend-block>
            </div>
        </div>
    </div>
</asp:Content>
