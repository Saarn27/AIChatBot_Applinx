<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_ADD" CodeFile="TWU01_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WAREHOUSE TABLE MAINTENANCE</h1>
            </div>

    
                <div class="spaced-column related-fields-area centered-flex">
             
                        <gal-input input-size="xsmall" label-size="small2" label-text="Warehouse Code:" no-description>
                            <input id="whsCode_COD" runat="server" />
                        </gal-input>

                        <gal-input input-size="large,large" label-size="small2" label-text="Description:" no-description>
                            <input id="des1_SDS" runat="server" />
                            <input id="dsc2_DSC" runat="server" />
                        </gal-input>

                        <gal-input input-size="large" label-size="small2" label-text="Description local:" no-description>
                            <input id="descriptionLocal_SDSL" runat="server" />
                        </gal-input>
             </div>
                <ul class="nav nav-tabs ">
                <li class="nav-item active">
                    <a class="nav-link" id="firstTab" href="#firstTab" role="tab" data-toggle="tab">Data1</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" id="secondTab" href="#secondTab" role="tab" data-toggle="tab">Data2</a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link" id="thirdTab" href="#thirdTab" role="tab" data-toggle="tab">Data3</a>
                </li>
            </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="1">
                        <div class="spaced-column related-fields-area">
    
                                <gal-input input-size="medium" label-size="large" label-text="Part of stock:" no-description>
                                    <select id="partOfStk_PART" runat="server"></select>
                                </gal-input>

                                <gal-input input-size="medium" label-size="large" label-text="Warehouse type:" no-description>
                                    <select id="whsType_TYPE" runat="server"></select>
                                </gal-input>

                                <gal-input input-size="medium" label-size="large" label-text="Receipt code:" no-description>
                                    <select id="receiptCode_RECEIP" runat="server"></select>
                                </gal-input>

                                <gal-input input-size="medium" label-size="large" label-text="Planning code:" no-description>
                                    <select id="planningCod_PLAN" runat="server"></select>
                                </gal-input>

                                <gal-input input-size="medium" label-size="large" label-text="ATP type:" no-description>
                                    <select id="atpType_ATPSEQ" runat="server"></select>
                                </gal-input>

                                <gal-input input-size="small" label-size="large" label-text="Producer:" no-description>
                                    <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" ID="producer_PRD" runat="server" />
                  
                                </gal-input>

                                <gal-input-help input-size="large" label-size="large" label-text="Customer number:">
                                    <input id="customerNum_CUST" runat="server" />
                                    <input id="custNumDes_CUSTD" runat="server" />
                                </gal-input-help>

                                <gal-input-help input-size="large" label-size="large" label-text="Company:" >
                                    
                                      <input id="company_COMP" runat="server" />
                                           <input id="compDes_COMPD" runat="server" />
                                </gal-input-help>

                                <gal-input input-size="large" label-size="large" label-text="Class/Central warehouse:" no-description>
                                    <select id="classCentralWhs_GRP" runat="server"></select>
                                </gal-input>

                                <gal-input input-size="xsmall" label-size="large" label-text="Clear on route days:" no-description>
                                    <input id="clearOnRouteDays_TWDN02" runat="server" />
                                    <label>Days</label>
                                </gal-input>

                                <gal-input input-size="xsmall" label-size="large" label-text="Depreciation percentage:" no-description>
                                    <input id="depreciation_AHUZ" runat="server" />
                                    <label>0-100%</label>
                                </gal-input>
                                                  <div class="centered-flex">
                                <gal-input-help input-size="small" label-size="large" label-text="Cost center:" no-description>
                                    <input id="costCenter_CSTCL" runat="server" />
                                </gal-input-help>

                                <gal-input input-size="large" label-size="small" label-text="System code:" no-description>
                                    <gx:GXCheckBox CheckedValue="I" UncheckedValue="" ID="imc_IMC" runat="server" />

                                </gal-input>
                                                        </div>
                                <div class="centered-flex">
                                    <gal-input input-size="small,small" label-size="large" label-text="Open date/update:" no-description>
                                        <input id="lastUserUpdate_USR" runat="server" dateformat="dd/mm/yy" galtype="date" />
                                        <input id="lastDateUpdate_TUPD" runat="server" dateformat="dd/mm/yy"  galtype="date"/>
                                    </gal-input>
                                    <gal-input input-size="medium" label-size="small" label-text="Last update:" no-description>
                                        <input id="LastUpdate_USR" runat="server" />

                                    </gal-input>
                                </div>
                            </div>
                                              <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                <button id="addbtn" runat="server" type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');"></button>
            </div>
           
                 

                    </div>
         
                </div>

            </div>
            
       

       
    </div>
    <script>
        var secondTabLink = document.querySelector("a[id=secondTab]");
         secondTabLink.addEventListener("click", () => { event.preventDefault(); gx_SubmitKey("[PF11]"); }, false);
         var secondTabLink = document.querySelector("a[id=thirdTab]");
        secondTabLink.addEventListener("click", () => { event.preventDefault(); gx_SubmitKey("[PF11][PF11]"); }, false);
    </script>
</asp:Content>
