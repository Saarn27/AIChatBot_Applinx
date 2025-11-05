<%@ Page MasterPageFile="~/template.master" Inherits="TFU03_SFLUSRFLD" CodeFile="TFU03_SFLUSRFLD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">COMPARE ALL DEFUALTS FOR FIELD UNDER COMPANY TEST SYSTEM</h1>
            </div>
            <div class="sub-headline" style="margin-bottom: 20px;">
                <span>Company Default:</span>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-text="Option:" label-size="auto" input-size="large">
                        <input id="option_Y_TFOPT" runat="server" />
                        <input id="optionName_Y_TFOPT_D" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-text="Program name:" label-size="auto" input-size="small" no-description>
                        <input id="programName_Y_TFFIL" class="no-color" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-text="Filed name:" label-size="auto" input-size="xlarge">
                        <input id="FieldName_Y_TFNAM" class="no-color" runat="server" />
                         <input id="fieldDescription_Y_TFTXT" class="no-color" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-text="Default:" label-size="auto" input-size="small" no-description>
                        <input id="defaultValue_Y_TFDFT" class="no-color" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-text="Mandatory:" label-size="auto" input-size="xxsmall" no-description>
                        <input id="mandatory_Y_TFMND" class="no-color" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class=" sub-headline">
                <span>User And Group Default:</span>
            </div>
           <div class="table-container"><table id="AllDefualtsField_SFLUSRFLD" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                        </th>
                        <th>
                            <gal-input label-size="" input-size="small" no-description>
                                <input id="userGruopFilter_SU_TFUSR" runat="server" />
                            </gal-input>
                            <span>User / Group</span>
                        </th>
                        <th>
                            <gal-input label-size="" input-size="large" no-description>
                                <input id="userGruopNameFilter_SU_TFUSR_D" runat="server" />
                            </gal-input>
                            <span>Name</span>
                        </th>
                        <th>
                            <gal-input label-size="" input-size="small" no-description>
                                <input id="defaultValueFilter_SU_TFDFT" runat="server" />
                            </gal-input>
                            <span>Default</span>
                        </th>
                        <th>
                            <gal-input label-size="" input-size="xxsmall" no-description>
                                <input id="mandatoryFilter_SU_TFMND" runat="server" />
                            </gal-input>
                            <span>Mandatory</span>
                        </th>
                    </tr>
                </thead>
           
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="opt_U_OPT" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                        </td>
                        <td><span id="userGruop_U_TFUSR" runat="server"></span></td>
                        <td><span id="userGruopName_U_TFUSR_D" runat="server"></span></td>
                        <td><span id="defaultValue_U_TFDFT" runat="server"></span></td>
                        <td>
                            <span id="mandatory_U_TFMND" runat="server"></span>
                            <action-bar mode="single"></action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
            <input id="pageIndex" runat="server" style="display: none;" /> 
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG_USRFLD" runat="server"></span>
            </div>
        </div>
    </div>
</asp:Content>
