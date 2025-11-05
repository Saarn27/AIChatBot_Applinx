<%@ Page MasterPageFile="~/template.master" Inherits="GWTU06_ADD" CodeFile="GWTU06_ADD.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea" >
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server"> WORKFLOW: DELEGATION OF AUTHORITY</h1>               
            </div>
            
            <gal-input-help input-size="large" label-size="medium" label-text="From user:" >
                <input  id="FromUser_USRF" runat="server" />
                <input id="fromuser_USRFN" runat="server" />
            </gal-input-help>

            <gal-input-help input-size="large" label-size="medium" label-text="To user:" >
                <input  id="ToUser_USRT" runat="server" />
                <input id="touser_USRTN" runat="server" />
            </gal-input-help>

            <div class="line"></div>
            
            <gal-input-help input-size="large" label-size="medium" label-text="Cost center:" >
                <input  id="CostCenter_CSTC" runat="server" />
                <input id="costcenter_CSTCN" runat="server" />
            </gal-input-help>

            <gal-input input-size="large" label-size="medium" label-text="Cost element:" no-description>
                        <select id="CostElement_CSTE" runat="server" ></select>
                    </gal-input>


            <div class="line"></div>


            <gal-input input-size="medium" label-size="medium" label-text="Value:" no-description>
                <input id="Value_SUM" runat="server" />                      
            </gal-input>
            <gal-input-help input-size="large" label-size="medium" label-text="Supplier:">
                <input  id="Supplier_SUP" runat="server" />
                <input  id="supplier_SUPN" runat="server" />
            </gal-input-help>
            <gal-input input-size="large" label-size="medium" label-text="Workflow type:" no-description>
                        <select id="WorkflowType_WFT" runat="server" ></select>
                    </gal-input>

            <div class="line"></div>

            <gal-input input-size="small" label-size="medium" label-text="Show in 'To user':" no-description>
                        <gx:GXCheckBox CheckedValue="Y" UncheckedValue="N" ID="ShowInToUser_S_SHOW" runat="server" />
                    </gal-input>

            <gal-input label-size="medium" label-text="To active to date:" input-size="medium" no-description>
                <input id="ToActiveDate_ADAT" runat="server" galtype="date" dateformat="ddmmy" />
            </gal-input>

            <div class="line"></div>

            <gal-input-help input-size="large" label-size="medium" label-text="Last user updated:" >
                <input  id="lastuserupdate_USRU" runat="server" />
                <input id="USRUN" runat="server" />
            </gal-input-help>

            <gal-input-help input-size="small" label-size="medium" label-text="Last date updated:"  no-description>
                <input  id="LastDateUpdated_TUPD" runat="server" />
            </gal-input-help>


             <!--Error message at the bottom of the screen-->
            <br /><div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Add</button>
            </div>
            <input id="hiddenField" runat="server" style="display:none;" />
        </div>
    </div>
</asp:Content>
