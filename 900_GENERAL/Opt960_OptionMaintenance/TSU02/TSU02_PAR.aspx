<%@ Page MasterPageFile="~/template.master" Inherits="TSU02_PAR" CodeFile="TSU02_PAR.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" runat="server">Add/Update Program/Query/Command Parameters</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="column-form">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-size="small" input-size="large" label-text="System:">
                            <input id="system_SYS" runat="server" />
                            <input id="systemDescription_SYSD" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" input-size="large" label-text="Org System:">
                            <input id="orgSystem_OSYS" runat="server" />
                            <input id="orgSystemDesc_OSYSD" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="small" input-size="large" label-text="Module:" no-description>
                        <input id="mod_MOD" runat="server" />
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="large" input-size="large" label-text="Program/Query/Command:" no-description>
                        <input id="programQueryCmd_PGM" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Library:" no-description>
                        <input id="library_LIB" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="small" label-text="Line Space After:" no-description>
                        <input id="lineSpaceAfter_MSPC" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Menu Screen Sequence:" no-description>
                        <input id="menuScreenSequence_MSEQ" runat="server" />
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="= Current menu option"></span>
                    </gal-input>
                    <gal-input label-size="large" input-size="small" label-text="Number Of Parameter:" no-description>
                        <input id="numberOfParameter_NOP" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 1:" no-description>
                        <input id="parameterValue1_P1" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 2:" no-description>
                        <input id="parameterValue2_P2" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 3:" no-description>
                        <input id="parameterValue3_P3" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 4:" no-description>
                        <input id="parameterValue4_P4" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 5:" no-description>
                        <input id="parameterValue5_P5" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 6:" no-description>
                        <input id="parameterValue6_P6" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 7:" no-description>
                        <input id="parameterValue7_P7" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 8:" no-description>
                        <input id="parameterValue8_P8" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 9:" no-description>
                        <input id="parameterValue9_P9" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 10:" no-description>
                        <input id="parameterValue10_P10" runat="server" />
                    </gal-input>
                </div>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
    </div>
</asp:Content>
