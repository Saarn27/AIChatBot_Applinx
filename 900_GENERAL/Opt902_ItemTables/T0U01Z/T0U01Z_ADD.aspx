<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T0U01Z_ADD.aspx.cs" Inherits="T0U01Z_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">LOTUS - VALUATION CODES </h1>
        <button type="button" class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>

    </div>
    <div id="gx_screenArea">
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div style="width: fit-content">
                <div class="related-fields-area">
                    <gal-input label-size="medium" label-text="Type - general:" input-size="xsmall" no-description>
                        <input id="TypeGeneral_ATYP" runat="server" />
                    </gal-input>
                    <gal-input-help label-size="medium" label-text="Producer:" input-size="medium2">
                        <input id="Producer_PRODU" runat="server" />
                        <input id="producerDesc_PRODUD" runat="server" />
                    </gal-input-help>
                    <gal-input label-size="medium" label-text="Vale Code:" input-size="small" no-description>
                        <select id="ValeCodeSFR_VALCOD" runat="server">
                            <option value=""></option>
                            <option value="R">Raw</option>
                            <option value="F">Finish</option>
                            <option value="S">Semi</option>
                        </select>
                    </gal-input>
                    <gal-input label-size="medium" label-text="Line number:" input-size="small" no-description>
                        <input id="LineNumber_LINLOT" runat="server" />
                    </gal-input>  <gal-input label-size="medium" label-text="Lotus group field:" input-size="small" no-description>
                        <input id="LotusGroupField_LOTGRP" runat="server" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button no-color" onclick="gx_SubmitKey('[pf10]');">Update / Add</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
