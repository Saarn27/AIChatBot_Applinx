<%@ Page MasterPageFile="~/template.master" Inherits="TSLQ04_SCRN0" CodeFile="TSLQ04_SCRN0.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">MENU OPTION LOG INQUIRY</h1>
        <div class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></div>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal" id="mainContent">

            <gal-input-help label-size="small" input-size="xlarge" label-text="User:">
                <input id="User_H_USRCOD" runat="server" />
                <input id="H_USRNAME" runat="server" />
            </gal-input-help>
            <gal-input-help label-size="small" input-size="xlarge" label-text="Option:">
                <input id="Option_H_OPT" runat="server" />
                <input id="OPTDSC" runat="server" />
            </gal-input-help>
            <gal-input-help label-size="small" input-size="xlarge" label-text="Sub option:">
                <input id="SubOption_H_SOPT" runat="server" />
                <input id="SUBDES" runat="server" />
            </gal-input-help>
            <div class="line"></div>
            <gal-input-help label-size="small" input-size="xlarge" label-text="System:">
                <input id="H_T23DSC" runat="server" />
                <input id="H_T23DSC_S" runat="server" />
            </gal-input-help>
            <gal-input-help label-size="small" input-size="xlarge" label-text="Module:">
                <input id="Module_H_TSLMOD" runat="server" />
                <input id="H_TSPDSCL" runat="server" />
            </gal-input-help>
            <div class="line"></div>
            <gal-input label-size="small" label-text="From date:" input-size="medium" no-description>
                <input id="FromDate_H_FDATE" runat="server" galtype="date" dateformat="ddmmy" />
            </gal-input>
            <gal-input label-size="small" label-text="To date:" input-size="medium" no-description>
                <input id="ToDate_H_TDATE" runat="server" galtype="date" dateformat="ddmmy" />
            </gal-input>
            <div class="line"></div>
            <gal-input label-size="small" label-text="From time:" input-size="small" no-description>
                <input id="FromTime_H_FTIME" runat="server" placeholder="HHMM" />
            </gal-input>
            <gal-input label-size="small" label-text="To time:" input-size="small" no-description>
                <input id="ToTime_H_TTIME" runat="server" placeholder="HHMM" />
            </gal-input>
            <div class="message-container">
                <span class="invalid-feedback" id="msg" runat="server"></span>
            </div>
        </div>
        <div class="modal-bottom">
            <button type="button" style="width: auto" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf8]');">User tracking</button>
            <button type="button" style="width: auto" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf9]');">Options not used</button>
            <button type="button" style="width: auto" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');">Continue</button>
        </div>
    </div>
</asp:Content>
