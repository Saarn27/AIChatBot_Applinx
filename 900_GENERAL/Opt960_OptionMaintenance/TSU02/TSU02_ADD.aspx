<%@ Page MasterPageFile="~/template.master" Inherits="TSU02_ADD" CodeFile="TSU02_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container"> 
                <h1 class="headline" runat="server">Personal Menu Option Maintenance:</h1>
                <h1 class="headline" id="title" runat="server"></h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="large" input-size="xlarge" label-text="User Name:">
                        <input id ="userName_USR" runat="server"/>
                        <input id ="userDesc_NAM" runat="server"/>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="medium" label-text="System:" no-description>
                            <select id ="system_SYS" runat="server"></select>
                        </gal-input>
                        <gal-input label-size="medium" input-size="medium" label-text="Original System:" no-description>
                            <select id ="orgSystem_OSYS" runat="server"></select>
                        </gal-input>
                        <gal-input label-size="medium" input-size="small" label-text="Mod:" no-description>
                            <input id ="module_MOD" runat="server"/>
                        </gal-input>
                    </div>
                    <div class="centered-flex">
                        <gal-input-help label-size="large" input-size="medium" label-text="Option Code:" no-description>
                            <input id ="optionCode_OPT" runat="server"/>
                        </gal-input-help>
                        <gal-input label-size="medium" input-size="medium" label-text="Sub Option:" no-description>
                            <input id ="subOption_SOPT" runat="server"/>
                        </gal-input>
                        <gal-input-help label-size="medium" input-size="medium" label-text="Original Option Code:" no-description>
                            <input id ="orgOptionCode_TSPTMPL" runat="server"/>
                        </gal-input-help>
                    </div>
                    <gal-input label-text="Program/Query/Command:" label-size="large" input-size="small" no-description> 
                        <input id ="program_PGM" runat="server"/>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Name,*None"></span>
                    </gal-input>
                    <gal-input label-text="Program Library:" label-size="large" input-size="small" no-description> 
                        <input id ="programLibrary_LIB" runat="server"/>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Name,*LIBL"></span>
                    </gal-input>
                    <gal-input label-size="large" input-size="xlarge" label-text="Long Description:" no-description>
                        <input id ="longDescription_DSCL" runat="server"/>
                    </gal-input>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="large" input-size="medium" label-text="Menu Option:"  no-description>
                        <select id ="menuOption_MENU" runat="server">
                            <option value=""> </option>
                            <option value="Y">Yes</option>
                        </select>
                    </gal-input>
                    <gal-input-help label-size="large" input-size="medium" label-text="Father Option:">
                        <input id ="fatherOption_FOPT" runat="server"/>
                        <input id ="fatherOptionDesc_FOPTD" runat="server"/>
                    </gal-input-help>
                    <gal-input label-size="large" input-size="large" label-text="Long Description Local:" no-description>
                        <input id ="longDescriptionLocal_DSC1" runat="server"/>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="small" label-text="Long Description Color:" no-description>
                            <select id ="longDescriptionColor_COLORD" runat="server">
                                <option value=""> </option>
                                <option value="B">Blue</option>
                                <option value="G">Green</option>
                                <option value="P">Pink</option>
                                <option value="R">Red</option>
                                <option value="T">Turquoise</option>
                                <option value="W">White</option>
                                <option value="Y">Yellow</option>
                            </select>
                        </gal-input>
                        <gal-input label-size="large" input-size="large" label-text="Reverse Image:" no-description>
                            <gx:GXCheckBox ID="reverseImage_RID" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="large" input-size="large" label-text="Sub Title:" no-description>
                        <input id ="subTitle_TIT" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Sub Title Local:" no-description>
                        <input id ="subTitleLocal_TIT1" runat="server"/>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="small" label-text="Sub Title-Color:" no-description>
                            <select id ="subTitleColor_COLORT" runat="server">
                                <option value=""> </option>
                                <option value="B">Blue</option>
                                <option value="G">Green</option>
                                <option value="P">Pink</option>
                                <option value="R">Red</option>
                                <option value="T">Turquoise</option>
                                <option value="W">White</option>
                                <option value="Y">Yellow</option>
                            </select>
                        </gal-input>
                        <gal-input label-size="auto" input-size="large" label-text="Reverse Image:"  no-description>
                                <gx:GXCheckBox ID="reverseImage_RIT" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="line"></div>
            <div class="column-form">
                <div class="spaced-column">
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="large" label-text="Lock Option:" no-description>
                            <gx:GXCheckBox ID="lockOption_LOCK" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>                    
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="small" label-text="Last Updated By:" no-description>
                            <input id ="lastUpdatedBy_UPD_USR" runat="server"/>
                        </gal-input>
                        <gal-input input-size="small" no-description>
                            <input style="text-align:left" id ="lastUpdatedBy_UPD_DAT" runat="server"/>
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
    </div>
</asp:Content>