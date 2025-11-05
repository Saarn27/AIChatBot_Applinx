<%@ Page MasterPageFile="~/template.master" Inherits="TWU01_ADD1" CodeFile="TWU01_ADD1.aspx.cs" Language="C#" %>

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
                <li class="nav-item active">
                    <a class="nav-link" id="secondTab" href="#secondTab" role="tab" data-toggle="tab">Data2</a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link" id="thirdTab" href="#thirdTab" role="tab" data-toggle="tab">Data3</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="2">
                    <div class="related-fields-area">

                        <gal-input input-size="medium" label-size="large" label-text="Local stock code managed:" no-description>
                            <select id="opOrd_CDF" runat="server"></select>
                        </gal-input>

                        <gal-input input-size="medium" label-size="large" label-text="Stock type:" no-description>
                            <select id="stockType_FINANCE" runat="server"></select>
                        </gal-input>

                        <gal-input input-size="medium" label-size="large" label-text="Credit limit:" no-description>
                            <input id="creditLimit_CREDIT" runat="server">
                        </gal-input>
                        <div class="centered-flex">
                        <gal-input input-size="medium" label-size="large" label-text="Warehouse value:" no-description>
                            <input id="warehouseValue_VALDUE" runat="server">
                        </gal-input>
                            <gal-input input-size="large" label-size="large" label-text="Salesman due:" style="margin-left: 218px;" no-description>
                            <input id="salesmanDue_VALDUET" runat="server" style="margin-left:42px;">
                              </gal-input>
                           </div>
                        <gal-input-help input-size="small" label-size="large" label-text="Address number 1:" no-description>
                            <input id="addressNo1_ADRESNO" runat="server">
                        </gal-input-help>

                        <gal-input-help input-size="small" label-size="large" label-text="Address number 2:" no-description>
                            <input id="addressNo2_ADRESNO1" runat="server">
                        </gal-input-help>
                        <div class="column-form"> 
                            <div class="spaced-column">
                                  <gal-input input-size="medium,medium" label-size="large" label-text="For customer type:" no-description>
                            <select id="forCustomerType1_D_TWDA041" runat="server"></select>
                            <select id="forCustomerType2_D_TWDA042" runat="server"></select>
                        </gal-input>

                        <gal-input input-size="large" label-size="large" label-text="Auto lot type:" no-description>
                            <select id="typeAutoLot_AUTOLO" runat="server"></select>
                        </gal-input>

                        <gal-input input-size="large" label-size="large" label-text="Restricted:" no-description>
                            <gx:GXCheckBox CheckedValue="1" UncheckedValue="" ID="restricted_AUTOLO" runat="server" />

                        </gal-input>
                               
                                <gal-input input-size="small" label-size="large" label-text="Display on screen:" no-description>
                                    <select id="displayOnScreen_DISP" runat="server">
                                        <option value=""></option>
                                        <option value="Y">Yes</option>
                                        <option value="S">Stock only</option>
                                    </select>

                                </gal-input>

                                <gal-input input-size="xsmall" label-size="large" label-text="C.P.C sort display:" no-description>
                                    <input id="cpcSortDisplay_SORT" runat="server">      
                                         <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="01-99"></span>
                                </gal-input>

                                <gal-input input-size="medium" label-size="large" label-text="Font color:" no-description>
                                    <select id="fontColor_D_TWCODA" runat="server"></select>
                                </gal-input>

                                <gal-input input-size="small" label-size="large" label-text="Reverse image:" no-description>
                                    <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" ID="reverseImg_D_TWCODB" runat="server" />
                                </gal-input>
         

                            </div>
                            <div class="spaced-column">
                                 <gal-input input-size="large" label-size="xlarge" label-text="Father warehouse/OEM:" no-description>
                            <select id="fatherWhsOem_OEM" runat="server"></select>
                        </gal-input>

                        <gal-input input-size="xsmall" label-size="xlarge" label-text="Remote communication warehouse:" no-description>
                            <input id="remot_REMOTE" runat="server">
                        </gal-input>

                        <gal-input input-size="small" label-size="xlarge" label-text="Workflow for issue:" no-description>
                            <gx:GXCheckBox CheckedValue="Y" UncheckedValue="" ID="workflowForIssue_AWF" runat="server" />
                        </gal-input>
                                                   
                                <gal-input input-size="large" label-size="xlarge" label-text="Numeratore for Local Invoice:" no-description>

                                    <select id="numForLocInvoice_LOCINV" runat="server"></select>
                                </gal-input>

                                <gal-input-help input-size="small" label-size="xlarge" label-text="Vendor number:" no-description>
                                    <input id="vendorNum_VEND" runat="server">
                                </gal-input-help>

                                <gal-input input-size="medium" label-size="xlarge" label-text="Central Warehouse/Service:" no-description>
                                    <select id="centralWhsService_CENSTK" runat="server"></select>
                                </gal-input>

                            </div>
                          
              
                                            

                  
                        </div>
                      


                 
                       



                        <div class="column-form">

                           


                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_EARA" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
        </div>
    </div>
     <script>
         var secondTabLink = document.querySelector("a[id=firstTab]");
         secondTabLink.addEventListener("click", () => { event.preventDefault(); gx_SubmitKey("[PF11][PF11]"); }, false);
         var secondTabLink = document.querySelector("a[id=thirdTab]");
         secondTabLink.addEventListener("click", () => { event.preventDefault(); gx_SubmitKey("[PF11]"); }, false);
     </script>
</asp:Content>
