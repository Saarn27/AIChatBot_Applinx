<%@ Page MasterPageFile="~/template.master" Inherits="TFU03_SFL1" CodeFile="TFU03_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
            <input id="actionBar1" runat="server" />
            <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Default Fields Per Option</h1>
            </div>

            <div class="table-container">
            <div class="related-fields-area centered-flex w-100">
                <gal-input label-text="Option:" label-size="auto" input-size="large">
                    <input id="option_OPTION" runat="server" />
                    <input id="optionDesciption_OPTIOND" runat="server" />
                </gal-input>
                <gal-input label-text="Program name:" label-size="auto" input-size="medium" no-description>
                    <input id="programName_PGM_NAME" class="no-color" runat="server" />
                </gal-input>
                <gal-input label-text="User:" label-size="auto" input-size="xlarge">
                    <input id="user_USR" runat="server" />
                    <input id="userName_NME" class="no-color" runat="server" />
                </gal-input>
                <gal-input label-size="auto" label-text="By group:" input-size="medium" no-description>
                    <input id="byGroup_BY_GROUP" class="no-color" runat="server" />
                </gal-input>
            </div>
                <table id="defaultFields_SFL1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input label-size="" input-size="small" no-description>
                                    <input id="fieldNameFilter_S_NAM" runat="server" />
                                </gal-input>
                                <span>%Field Name</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="large" no-description>
                                    <input id="fieldDesciptionFilter_S_TXT" runat="server" />
                                </gal-input>
                                <span>%Field description</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="xxsmall" no-description>
                                    <input id="fieldTypeFilter_S_TYP" runat="server" />
                                </gal-input>
                                <span>Type</span>
                            </th>
                            <th columntype="qty"><span>Length</span></th>
                            <th><span>Decimal position</span></th>
                            <th><span>Default value</span></th>
                            <th>
                                <gal-input label-size="" input-size="xxsmall" no-description>
                                    <input id="mandatoryFilter_S_MND" runat="server" />
                                </gal-input>
                                <span>Mandatory</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="xxsmall" no-description>
                                    <input id="positionCsrFilter_S_PRT" runat="server" />
                                </gal-input>
                                <span>Position cursor</span>
                            </th>
                            <th>
                                <gal-input label-size="" input-size="xxsmall" no-description>
                                    <input id="holdSpooledFilter_S_HOLD" runat="server" />
                                </gal-input>
                                <span>Hold spooled</span>
                            </th>
                            <th><span>Personal</span></th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="opt_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td><span id="fieldName_NAM" runat="server"></span></td>
                            <td><span id="fieldDescription_TXT" runat="server"></span></td>
                            <td><span id="fieldType_TYP" runat="server"></span></td>
                            <td columntype="qty"><span id="fieldLength_LEN" runat="server"></span></td>
                            <td><span id="decimalPosition_DEC" runat="server"></span></td>
                            <td><span id="defaultValue_DFT" runat="server"></span></td>
                            <td><span id="mandatory__MND" runat="server"></span></td>
                            <td><span id="positionCsr__PRT" runat="server"></span></td>
                            <td><span id="holdSpooled_HOLD" runat="server"></span></td>
                            <td>
                                <span id="personal_A_PERSONAL" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <grid-scroller></grid-scroller>
            </div>
            <input id="pageIndex" runat="server" style="display: none;" />
            <input id="hiddenField" runat="server" style="display: none;" />
            <div class="message-container">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
            </div>
            <div class="legend-div">
                <legend-block text="User default" color="purple" text-color></legend-block>
                <legend-block text="Group default" color="white" text-color></legend-block>
            </div>

        </div>
    </div>
</asp:Content>
