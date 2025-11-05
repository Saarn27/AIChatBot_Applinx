<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="GHRU01_ADD.aspx.cs" Inherits="GHRU01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">Restriction Maintenance</h1>
                <span id="restrictionMaintenanceTitle_HODAA" class="sub-headline blue-headline" runat="server"></span>
            </div>
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-text="Sequence Number:" label-size="large" input-size="small" no-description>
                        <input id="sequenceNumber_ASEQ" runat="server" />
                    </gal-input>
                    <gal-input label-text="Restriction Type:" label-size="large" input-size="small" no-description>
                        <select id="restrictType_AINC" runat="server">
                            <option value=""></option>
                            <option value="I">Include</option>
                            <option value="E">Exclude</option>
                        </select>
                    </gal-input>
                    <div class="sub-headline">
                        <span id="Location" runat="server"></span>
                    </div>
                    <gal-input label-text="Group Type:" label-size="large" input-size="medium" no-description>
                        <select id="groupType_AGRPT" runat="server">
                            <option value=""></option>
                            <option value="M">M = Class1</option>
                            <option value="B">B = Brand</option>
                            <option value="V">V = Vendor</option>
                            <option value="I">I = Item</option>
                            <option value="A">A = Application</option>
                            <option value="H">H = Hazardous</option>
                            <option value="C">C = Country Of Origin</option>
                            <option value="T">T = To Warehouse</option>
                        </select>
                    </gal-input>
                    <gal-input-help label-text="Group Key:" label-size="large" input-size="medium" no-description>
                        <input id="groupKey_AGRPGK" runat="server" />
                    </gal-input-help>
                    <div class="sub-headline">
                        <span id="destination" runat="server"></span>
                    </div>
                    <gal-input label-text="Group Type:" label-size="large" input-size="medium" no-description>
                        <select id="groupType_ADSTT" runat="server">
                            <option value=""></option>
                            <option value="CM">CM = Company</option>
                            <option value="CU">CU = Customer</option>
                            <option value="CC">CC = Customer Type</option>
                            <option value="ST">ST = State</option>
                            <option value="ZP">ZP = Zip Code</option>
                            <option value="WS">WS = Shipping Location</option>
                            <option value="WL">WL = Sales Location</option>
                        </select>
                    </gal-input>
                    <gal-input-help label-text="Group Key:" label-size="large" input-size="medium" no-description>
                        <input id="groupKey_ADSTDK" runat="server" />
                    </gal-input-help>
                    <gal-input label-text="Shipping Method:" label-size="large" input-size="small" no-description>
                        <input id="shipMethod_CSPC" runat="server" />
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input-help label-text="Issue:" label-size="large" input-size="small" no-description>
                            <input id="issue_AISSUE" runat="server" />
                        </gal-input-help>
                        <gal-input label-text="Country:" label-size="auto" input-size="xsmall" no-description>
                            <input id="country_CNTRY" runat="server" />
                        </gal-input>
                        <gal-input-help label-text="Drop Code:" label-size="auto" input-size="xsmall" no-description>
                            <input id="dropCode_ADROP" runat="server" />
                        </gal-input-help>
                    </div>
                    <gal-input label-text="Internal:" label-size="large" input-size="xxxlarge" no-description>
                        <input id="int_AISI" runat="server" />
                    </gal-input>
                    <gal-input label-text="        " label-size="large" input-size="xxxlarge" no-description>
                        <input id="int_AISI1" runat="server" />
                    </gal-input>
                    <gal-input label-text="        " label-size="large" input-size="xxxlarge" no-description>
                        <input id="int_AISI2" runat="server" />
                    </gal-input>
                    <gal-input label-text="External:" label-size="large" input-size="xxxlarge" no-description>
                        <input id="ext_AISE" runat="server" />
                    </gal-input>
                    <gal-input label-text="        " label-size="large" input-size="xxxlarge" no-description>
                        <input id="ext_AISE1" runat="server" />
                    </gal-input>
                    <gal-input label-text="Remark (Internal/External):" label-size="large" input-size="xxxlarge" no-description>
                        <input id="remIntExt_AREMI" runat="server" />
                    </gal-input>
                    <gal-input label-text="        " label-size="large" input-size="xxxlarge" no-description>
                        <input id="remIntExt_AREME" runat="server" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errMsg_EARA" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    <script>
        var title = document.getElementById("ctl00_GXPagePlaceHolder_restrictionMaintenanceTitle_HODAA");
        title.innerText = title.innerText.replace(/\s/g, '');
        title.innerText = title.innerText.charAt(0) + title.innerText.slice(1).toLowerCase();
    </script>
</asp:Content>
