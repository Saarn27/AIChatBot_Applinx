<%@ Page MasterPageFile="~/template.master" Inherits="TSU01_PAR" CodeFile="TSU01_PAR.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-area-form">
            <div class="headline-container"> 
                <h1 class="headline" runat="server">ADD/UPDATE PGM/QRY/CMD PARAMETERS</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" input-size="large" label-text="System:">
                        <input id ="system_AS_COD" runat="server"/>
                        <input id ="systemDesc_AS_DSCL" runat="server"/>
                    </gal-input>
                    <gal-input label-size="small" input-size="large" label-text="Module:">
                        <input id ="module_AM_COD" runat="server"/>
                        <input id ="moduleDesc_AM_DSC" runat="server"/>
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="large" input-size="large" label-text="Program/Query/Command:">
                        <input id ="program_APGM" runat="server"/>
                        <input id ="programDesc_ADSCL" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Library:" no-description>
                        <input id ="library_APGMLIB" runat="server"/>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="large" label-text="Line Space After:" no-description>
                            <input id ="lineSpaceAfter_AMSPC" runat="server"/>
                        </gal-input>
                        <gal-input label-size="auto" input-size="large" label-text="Excel Temp:" no-description>
                            <input id ="excelTemp_ATMPL" runat="server"/>
                        </gal-input>
                    </div>
                    <gal-input label-size="large" input-size="large" label-text="Menu Screen Sequence:">
                        <input id ="menuScreenSequence_AMSEQ" runat="server"/>
                        <input id ="MenuDesc_AOCOD" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Number Of Parameter:" no-description>
                        <input id ="numberOfParameter_ANOP" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 1:" no-description>
                        <input id ="parameterValue1_AP1" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 2:" no-description>
                        <input id ="parameterValue2_AP2" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 3:" no-description>
                        <input id ="parameterValue3_AP3" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 4:" no-description>
                        <input id ="parameterValue4_AP4" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 5:" no-description>
                        <input id ="parameterValue5_AP5" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 6:" no-description>
                        <input id ="parameterValue6_AP6" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 7:" no-description>
                        <input id ="parameterValue7_AP7" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 8:" no-description>
                        <input id ="parameterValue8_AP8" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 9:" no-description>
                        <input id ="parameterValue9_AP9" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Parameter Value 10:" no-description>
                        <input id ="parameterValue10_AP10" runat="server"/>
                    </gal-input>
                </div>
            </div>
            <div class="message-container">
                <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
            </div> 
        </div>
    </div>
</asp:Content>