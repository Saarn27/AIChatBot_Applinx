<%@ Page MasterPageFile="~/template.master" Inherits="TFU03_COPY" CodeFile="TFU03_COPY.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">DEFAULT FIELDS PER OPTION</h1>
            </div>

            <div class="related-fields-area centered-flex wrapper-container" style="margin-bottom: 10px;">

                <gal-input label-text="Option:" label-size="auto" input-size="large">
                    <input id="option_OPTION" runat="server" />
                    <input id="optionDesciption_OPTIOND" runat="server" />
                </gal-input>
                <gal-input label-text="Program name:" label-size="auto" input-size="medium" no-description>
                    <input id="programName_PGM_NAME" class="no-color" runat="server" />
                </gal-input>
                <gal-input label-text="User:" label-size="auto" input-size="large">
                    <input id="user_USR" class="no-color" runat="server" />
                    <input id="userName_NME" class="no-color" runat="server" />
                </gal-input>
            </div>


            <div class="column-form">
                <div class="spaced-column">
                    <div class="full-width-container" style="margin-bottom: 15px;">
                        <div class="sub-headline">
                            <span>Field Details</span>
                        </div>
                        <div class="related-fields-area">
                            <gal-input input-size="medium" label-size="medium" label-text="Field type:" no-description>
                                <select id="fieldType_TYP" runat="server">
                                    <option value="N">Num</option>
                                    <option value="A">Char</option>
                                    <option value="P">Print</option>
                                </select>
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Field length:" no-description>
                                <input id="fieldLength_LEN" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Decimal position:" no-description>
                                <input id="decimalPosition_DEC" runat="server" />
                            </gal-input>
                            <div class="line"></div>
                            <gal-input label-size="medium" input-size="medium" label-text="Field name:" no-description>
                                <input id="fieldName_NAM" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Field description:" no-description>
                                <input id="fieldDescription_TXT" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Field description1:" no-description>
                                <input id="fieldDescription1_B_TFTXTL" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Default value:" no-description>
                                <input id="defaultValue_DFT" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall" label-size="medium" label-text="Position cursor:" no-description>
                                <gx:GXCheckBox ID="positionCsr__PRT" CheckedValue="Y" UncheckedValue="" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall" label-size="medium" label-text="Mandatory:" no-description>
                                <gx:GXCheckBox ID="mandatory_MND" CheckedValue="Y" UncheckedValue="" runat="server" />
                            </gal-input>
                        </div>
                    </div>

                    <div class="sub-headline">
                        <span>Last update</span>
                    </div>
                    <div class="related-fields-area centered-flex">
                        <gal-input label-size="auto" input-size="small,medium" label-text="Duplex:">
                            <input id="duplex_A_TFPRDU" runat="server" />
                            <input id="duplexDescription_A_TFPRDUD" runat="server" />
                        </gal-input>
                        <gal-input label-size="auto" input-size="SMALL2" label-text="Duplex:" no-description>
                            <input id="duplexDate_A_TFTRN" runat="server" galtype="date" dateformat="dd/mm/yy" />
                        </gal-input>
                    </div>
                </div>
                <div class="spaced-column">
                    <div class="full-width-container" style="margin-bottom: 15px;">
                        <div class="sub-headline">
                            <span>­­­­­­­Override Printer File­­­­­­­</span>
                        </div>
                        <div class="related-fields-area" style="width: 500px; padding-bottom: 45px">
                            <gal-input label-size="medium" input-size="medium" label-text="User data:" no-description>
                                <input id="userData_UD" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Page rotate:" no-description>
                                <input id="pageRotate_RT" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Copies:" no-description>
                                <input id="copies_CP" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Overflow:" no-description>
                                <input id="overflow_OF" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="small,small" label-text="Page Length/Width:" no-description>
                                <input id="pageLenWidth_SZ" runat="server" />
                                <input id="pageLenWidth1_WD" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="xsmall,xsmall" label-text="Lpi/Cpi:" no-description>
                                <input id="lpi_LPI" runat="server" />
                                <input id="cpi_CPI" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Chrid:" no-description>
                                <input id="CharSet_GRAPHIC" runat="server" />
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Char set"></span>
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Code page:" no-description>
                                <input id="codePage_COD_PAGE" runat="server" />
                                <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Code page"></span>
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Save spool:" no-description>
                                <input id="saveSpool_SV" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Spool name:" no-description>
                                <input id="spoolName_SPFNAM" runat="server" />
                            </gal-input>
                            <gal-input label-size="medium" input-size="medium" label-text="Drawer:" no-description>
                                <input id="drawer_DR" runat="server" />
                            </gal-input>
                            <gal-input input-size="xsmall" label-size="medium" label-text="Hold spooled:" no-description>
                                <gx:GXCheckBox ID="holdSpooled_HOLD" CheckedValue="Y" UncheckedValue="" runat="server" />
                            </gal-input>
                        </div>

                        <div class="message-container message-container-with-btn">
                            <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Copy</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>

</asp:Content>
