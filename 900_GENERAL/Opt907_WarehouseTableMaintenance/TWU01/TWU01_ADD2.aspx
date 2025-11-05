<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_ADD2" CodeFile="TWU01_ADD2.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" >
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">WAREHOUSE TABLE MAINTENANCE</h1>               
            </div>
             <div class="spaced-column related-fields-area centered-flex"> 
             <gal-input input-size="xsmall" label-size="small2" label-text="Warehouse Code:" no-description>
                 <input id="warehouseCode_COD" runat="server" />
             </gal-input>
               
             <gal-input input-size="large,large" label-size="small2" label-text="Description:" no-description>
                 <input id="desc1_SDS" runat="server" />
                 <input id="desc2_DSC" runat="server" />
             </gal-input>
           
             <gal-input input-size="large" label-size="small2" label-text="Description local:" no-description>
                <input id="descriptionLocal_SDSL" runat="server" />
             </gal-input>
                     </div>
       <ul class="nav nav-tabs">
                <li class="nav-item ">
                    <a class="nav-link" id="firstTab" href="#firstTab" role="tab" data-toggle="tab">Data1</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" id="secondTab" href="#secondTab" role="tab" data-toggle="tab">Data2</a>
                </li>
                  <li class="nav-item active">
                    <a class="nav-link" id="thirdTab" href="#thirdTab" role="tab" data-toggle="tab">Data3</a>
                </li>
            </ul>
               <div class="tab-content">
                <div class="tab-pane active" id="2">
            <div class="column-form related-fields-area">
             
                <div class="spaced-column">
                    <gal-input input-size="small" label-size="large" label-text="Revision control:" no-description>
                        <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" id="revisionControl_TWDA0" runat="server" />
                   
                    </gal-input>

                    <gal-input input-size="medium" label-size="large" label-text="Full average usage:" no-description>
                         <select id="fullAverageUsage_TWDA11" runat="server" ></select>
                    </gal-input>

                    <gal-input input-size="medium" label-size="large" label-text="Slip release control:" no-description>
                        <select id="slipRlsControl_RELEAS" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No auto slip</option>
                        </select>
                    </gal-input>

                    <gal-input input-size="medium" label-size="large" label-text="Allocation report:" no-description>
                         <select id="allocationReport_WHFREP" runat="server" ></select>
                    </gal-input>

                    <gal-input input-size="medium" label-size="large" label-text="CMS Send warehouse type:" no-description>
                         <select id="cmsSendWhsType_TWDA15" runat="server" ></select>
                    </gal-input>

                    <gal-input input-size="medium" label-size="large" label-text="Factory warehouse for CMS:" no-description>
                         <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" id="factoryWhsForCms_TWDA16" runat="server" />
                       
                    </gal-input>

                    <gal-input input-size="large" label-size="large" label-text="Force country of origin:" no-description>
                         <select id="forceCoo_FCOO" runat="server" ></select>
                    </gal-input>

                    <gal-input input-size="large" label-size="large" label-text="Connect warehouse:" no-description>
                         <select id="connectWhs_TWDA162" runat="server" ></select>
                    </gal-input>

                    <gal-input input-size="large" label-size="large" label-text="Connect operation:" no-description>
                         <select id="connectOper_DA714" runat="server" ></select>
                    </gal-input>
                </div> 
         
                <div class="spaced-column">   
                    <gal-input input-size="small" label-size="large" label-text="Stock for delivery:" no-description>
                        <select id="stkForDelivery_DA701" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                            <option value="I">Internal</option>
                        </select>   
                    </gal-input>  

                    <gal-input input-size="small" label-size="large" label-text="Exception warehouse:" no-description>
                        <select id="exceptionWhs_DA702" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="N">No</option>
                        </select>
                    </gal-input> 

                    <gal-input input-size="small" label-size="large" label-text="Initiate purchase:" no-description>
                         <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" id="initiatePurch_DA703" runat="server" />
                    </gal-input>

                    <gal-input input-size="small" label-size="large" label-text="Purchase statistics:" no-description>
                         <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" id="purchStatistic_DA704" runat="server" />
                    </gal-input>

                    <gal-input input-size="small" label-size="large" label-text="Country of origin:" no-description>
                         <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" id="coo_DA705" runat="server" />
                    </gal-input> 

                  

                    <gal-input input-size="medium" label-size="large" label-text="Carbide issue:" no-description>
                         <select id="carbideIssue_DA706" runat="server" ></select>
                    </gal-input>
                      <gal-input input-size="small" label-size="large" label-text="Remote user display:" no-description>
                         <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" id="remoteUserDisplay_DA707" runat="server" />
                    </gal-input>
                    <gal-input input-size="xsmall" label-size="large" label-text="Automatic allocation:" no-description>
                          <gx:GXCheckBox CheckedValue="N" UncheckedValue="" id="automaticAllocation_DA708" runat="server" />
                            <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="N=No"></span>
                    </gal-input> 

                    <gal-input input-size="medium" label-size="large" label-text="Block intercompany:" no-description>
                         <select id="blockIntercompany_DA709" runat="server" ></select>
                    </gal-input>

                    <gal-input input-size="medium" label-size="large" label-text="Commercial item control:" no-description>
                        <select id="commercialItemCtl_DA710" runat="server">
                            <option value=""></option>
                            <option value="Y">Yes</option>
                            <option value="B">Both</option>
                        </select>
   
                    </gal-input> 

                    <gal-input input-size="xsmall" label-size="large" label-text="No stock transaction:" no-description>
                        <gx:GXCheckBox CheckedValue="N" UncheckedValue="" id="noStockTransaction_DA711" runat="server" />
                             <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="N=No"></span>

                    </gal-input> 

                    <gal-input input-size="small" label-size="large" label-text="Average cost:" no-description>
                         <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" id="averageCost_DA712" runat="server" />
                    </gal-input>

                </div> 
            </div>
                    </div>            </div>
            
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
    </div>
     <script>
         var secondTabLink = document.querySelector("a[id=firstTab]");
         secondTabLink.addEventListener("click", () => { event.preventDefault(); gx_SubmitKey("[PF11]"); }, false);
         var secondTabLink = document.querySelector("a[id=secondTab]");
         secondTabLink.addEventListener("click", () => { event.preventDefault(); gx_SubmitKey("[PF11][PF11]"); }, false);
     </script>
</asp:Content>
