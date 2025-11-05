<%@ Page MasterPageFile="~/template.master" Inherits="TSU03_MASIV" CodeFile="TSU03_MASIV.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>

        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Massive Add / Update / Delete</h1>
            </div>

            <div style="width: fit-content; min-width:670px">
                <div class="related-fields-area w-100" style="margin-bottom: 10px">
                    <gal-input-help label-text="Company:" label-size="small2" input-size="large">
                        <input id="company_MCMP" runat="server" />
                        <input id="companyDsc_MC_DSC" runat="server" />
                    </gal-input-help>
                    <gal-input label-text="System:" label-size="small2" input-size="large">
                        <input id="system_MS_COD" runat="server" />
                        <input id="systemDsc_MC_DSC" runat="server" />
                    </gal-input>
                    <gal-input-help label-text="User / Group:" label-size="small2" input-size="large" no-description>
                        <input id="userGroup_MUSRGRP" runat="server" />
                    </gal-input-help>
                </div>
                <div class="related-fields-area w-100 centered-flex" style="margin-bottom: 10px">
                    <gal-input-help label-text="Option code:" label-size="small2" input-size="small" no-description>
                        <input id="optionCodeFrom_MFRCOD" runat="server" />
                    </gal-input-help>
                    <gal-input-help label-text="-" label-size="xxxsmall" input-size="small" no-description>
                        <input id="optionCodeTo_MTOCOD" runat="server" />
                    </gal-input-help>
                </div>

                <div class="related-fields-area  w-100" style="margin-bottom: 10px">
                    <gal-input-help label-text="All module:" label-size="small2" input-size="large">
                        <input id="allModule_MM_COD" runat="server" />
                        <input id="allModuleDsc_MM_DSC" runat="server" />
                    </gal-input-help>
                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="(Code)"></span>
                </div>
                <div class="related-fields-area  w-100">
                    <gal-input label-text="Authority / Delete:" label-size="small2" input-size="large" no-description>
                        <select id="authorityDelete_MAUT" runat="server">
                            <option value=""></option>
                            <option value="0">0 = Not Authorized</option>
                            <option value="1">1 = Read</option>
                            <option value="2">2 = Update</option>
                            <option value="3">3 = Supervisory</option>
                            <option value="D">Delete</option>
                        </select>
                    </gal-input>
                    <div class="centered-flex">
                        <gal-input label-text="Dates active:" label-size="small2" input-size="small" no-description>
                            <input id="datesActiveFrom_MFDAT" runat="server" galtype="date" dateformat="dd/mm/y" />
                        </gal-input>
                        <gal-input label-text="-" label-size="xxxsmall" input-size="small" no-description>
                            <input id="datesActiveTo_MTDAT" runat="server" galtype="date" dateformat="dd/mm/y" />
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="err_MSG1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[PF10]');">Add / Update / Delete</button>
                </div>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
