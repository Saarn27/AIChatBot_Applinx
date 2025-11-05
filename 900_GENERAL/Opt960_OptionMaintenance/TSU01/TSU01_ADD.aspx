<%@ Page MasterPageFile="~/template.master" Inherits="TSU01_ADD" CodeFile="TSU01_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-area-form" >
            <div class="headline-container"> 
                <h1 class="headline" id="title_ATITLE" runat="server"></h1>
            </div>
            
            <div class="column-form">
                <div class="spaced-column related-fields-area">
                    <gal-input label-size="large" input-size="large" label-text="System:" no-description>
                        <select id ="system_AS_COD" runat="server"></select>
                    </gal-input>
                    <gal-input-help label-size="large" input-size="large" label-text="Module:">
                        <input id ="module_AM_COD" runat="server"/>
                        <input id ="moduleDesc_AM_DSC" runat="server"/>
                    </gal-input-help>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="small" label-text="Option:" no-description>
                            <input style="margin-right:0" id ="option_AOCOD" runat="server"/>
                        </gal-input>
                        <gal-input label-size="auto" input-size="xsmall" label-text="Sub Option:" no-description>
                            <input id ="subOption_ABCOD" runat="server"/>
                        </gal-input>
                    </div>
                    <gal-input label-text="Program/Query/Command:" label-size="large" input-size="small" no-description> 
                        <input id ="program_APGM" runat="server"/>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Name,*None"></span>
                    </gal-input>
                    <gal-input label-text="Program Library:" label-size="large" input-size="small" no-description> 
                        <input id ="library_APGMLIB" runat="server"/>
                        <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Name,*LIBL"></span>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Long Description:" no-description>
                        <input id ="longDescription_ADSCL" runat="server"/>
                    </gal-input>
                </div>
            </div>

            <div class="column-form related-fields-area" style="margin-top: 11px;width: 547px;">
                <div class="spaced-column">
                    <gal-input label-size="large" input-size="medium" label-text="Menu Option:"  no-description>
                        <select id ="menuOption_AMENU" runat="server">
                            <option value=""> </option>
                            <option value="Y">Yes</option>
                            <option value="T">Title</option>
                            <option value="1">1 Sub Menu Level</option>
                            <option value="2">2 Sub Menu Level</option>
                            <option value="3">3 Sub Menu Level</option>
                            <option value="4">4 Sub Menu Level</option>
                            <option value="5">5 Sub Menu Level</option>
                            <option value="6">6 Sub Menu Level</option>
                            <option value="7">7 Sub Menu Level</option>
                            <option value="8">8 Sub Menu Level</option>
                            <option value="9">9 Sub Menu Level</option>
                        </select>
                    </gal-input>
                    <gal-input-help label-size="large" input-size="medium" label-text="Father Option:">
                        <input id ="fatherOption_AFCOD" runat="server"/>
                        <input id ="fatherOptionDesc_AFCODD" runat="server"/>
                    </gal-input-help>
                    <gal-input label-size="large" input-size="large" label-text="Long Description Local:" no-description>
                        <input id ="longDescriptionLocal_ADSC1" runat="server"/>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="small" label-text="Long Description Color:" no-description>
                            <select id ="longDescriptionColor_ADSCC" runat="server">
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
                        <gal-input label-size="auto" input-size="large" label-text="Reverse Image:" no-description>
                            <gx:GXCheckBox ID="reverseImage_ADSCR" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                    <gal-input label-size="large" input-size="large" label-text="Sub title:" no-description>
                        <input id ="subTitle_AMDSC" runat="server"/>
                    </gal-input>
                    <gal-input label-size="large" input-size="large" label-text="Sub title Local:" no-description>
                        <input id ="subTitleLocal_AMDSCL" runat="server"/>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-size="large" input-size="small" label-text="Sub title-Color:" no-description>
                            <select id ="subTitleColor_AMDSCC" runat="server">
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
                                <gx:GXCheckBox ID="reverseImage_AMDSCR" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                    </div>
                </div>
            </div>

            <div class="column-form" style="display: block;">
                <div class="spaced-column related-fields-area" style="margin-top: 11px;">
                    <div class="centered-flex">
                        <gal-input label-size="auto" input-size="large" label-text="Lock Option:" no-description>
                            <gx:GXCheckBox ID="lockOption_AACT" CheckedValue="Y" UncheckedValue="" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="auto" input-size="xsmall" label-text="Menu option log/authority" no-description>
                               <input id ="menuOptionLog_ALOG" runat="server"/>
                        
                        </gal-input-help>
                    </div>                    
                    <div class="centered-flex">
                        <gal-input label-size="medium" input-size="small" label-text="Last Updated By:" no-description>
                            <input id ="lastUpdatedBy_AUPDUSR" runat="server"/>
                        </gal-input>
                        <gal-input input-size="small" no-description>
                            <input style="text-align:left" id ="lastUpdatedBy_AUPDDAT" runat="server"/>
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="errMsg_MSG1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        <input id="hiddenField" runat="server" style="display:none;" />            
        </div>
    </div>
</asp:Content>