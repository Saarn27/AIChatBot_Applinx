<%@ Page MasterPageFile="~/template.master" Inherits="TFU03_SFL1D" CodeFile="TFU03_SFL1D.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DEFAULT FIELDS PER OPTION: DELETE CONFIRMATION</h1>
            </div>

            <div class="centered-flex related-fields-area wrapper-container">
                <gal-input label-text="Option:" label-size="auto" input-size="large">
                    <input id="option_OPTION" runat="server" />
                    <input id="optionName_OPTIOND" runat="server" />
                </gal-input>
                <gal-input label-text="Program name:" label-size="auto" input-size="medium" no-description>
                    <input id="programName_PGM_NAME" class="no-color" runat="server" />
                </gal-input>
                <gal-input label-text="User:" label-size="auto" input-size="large">
                    <input id="user_USR" class="no-color" runat="server" />
                    <input id="userName_NME" class="no-color" runat="server" />
                </gal-input>
            </div>
            <div class="table-container">
                <table id="defaultFields_SFL1D" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th><span>Field Name</span></th>
                            <th class="input-large"><span>Field Description</span></th>
                            <th><span>Type</span></th>
                            <th columntype="qty"><span>Length</span></th>
                            <th><span>Decimal Position</span></th>
                            <th><span>Default Value</span></th>
                            <th><span>Mandatory</span></th>
                            <th><span>Position cursor</span></th>
                            <th><span>Hold Spooled</span></th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td><span id="fieldName_NAM" runat="server"></span></td>
                            <td><span id="fieldDescription_TXT" runat="server"></span></td>
                            <td><span id="fieldType_TYP" runat="server"></span></td>
                            <td columntype="qty"><span id="fieldLength_LEN" runat="server"></span></td>
                            <td><span id="decimalPosition_DEC" runat="server"></span></td>
                            <td><span id="defaultValue_DFT" runat="server"></span></td>
                            <td><span id="mandatory_MND" runat="server"></span></td>
                            <td><span id="positionCsr_PRT" runat="server"></span></td>
                            <td><span id="holdSpooled_HOLD" runat="server"></span></td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Delete</button>
                </div>
            </div>
            <input id="pageIndex" runat="server" style="display: none;" />
        </div>
    </div>
</asp:Content>
