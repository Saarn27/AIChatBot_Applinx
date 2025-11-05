<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T3U01_ADD.aspx.cs" Inherits="T3U01_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">GEOGRAPHY - TABLE </h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div class="related-fields-area">
                <gal-input input-size="xxsmall" label-size="small2" label-text="Type - General:" no-description>
                    <input id="TypeGeneral_ATYP" runat="server" />
                </gal-input>
                <gal-input input-size="xxsmall" label-size="small2" label-text="Subject code:" no-description>
                    <input id="SubjectCode_ACOD" runat="server" />
                </gal-input>
                <gal-input input-size="medium" label-size="small2" label-text="Short description:" no-description>
                    <input id="ShortDescription_ASDS" runat="server" />
                </gal-input>
                <gal-input input-size="xlarge" label-size="small2" label-text="Long description:" no-description>
                    <input id="LongDescription_ADSC" runat="server" />
                </gal-input>
                <gal-input input-size="small" label-size="small2" label-text="System code:" no-description>
                    <select id="SystemCode_IMC" runat="server">
                        <option value=""></option>
                        <option value="I">System</option>
                    </select>
                </gal-input>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSG1" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/add</button>
            </div>
        </div>
    </div>
</asp:Content>
