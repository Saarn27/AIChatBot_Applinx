<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T5U01_LNG.aspx.cs" Inherits="T5U01_LNG" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">Translation Maintenance For Option</h1>
                <span class="sub-headline blue-headline" id="tableOption_TBLOPT" runat="server"></span>
            </div>
            <div class="wrapper-container">
                <div class="related-fields-area w-100" style="margin-bottom: 15px;">
                    <gal-input label-size="large" label-text="System table:" input-size="large">
                        <input id="sysTable_TBLSBJ" runat="server" />
                        <input id="sysTableName_TBLDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" label-text="Subject/key:" input-size="large">
                        <input id="subjectKey_TBLCOD" runat="server" />
                        <input id="subjectKeyName_TBLFLD" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" label-text="For code:" input-size="small" no-description>
                        <input id="forCode_TBLKEY" runat="server" />
                    </gal-input>
                </div>
                <div class="related-fields-area w-100" style="margin-bottom: 15px;">
                    <gal-input label-size="large" label-text="Main system table language:" input-size="small2" no-description>
                        <select id="sysTableMain_DEFMAIC" runat="server"></select>
                    </gal-input>
                    <gal-input label-size="large" label-text="Local system table language:" input-size="small2" no-description>
                        <select id="sysTableLocal_DEFLOCC" runat="server"></select>
                    </gal-input>
                </div>
                <div class="sub-headline">
                    <span>Main Fields</span>
                </div>
                <div class="related-fields-area w-100" style="margin-bottom: 15px;">
                    <gal-input label-size="large" label-text="Short Description:" input-size="medium2" no-description>
                        <input id="mainFieldShort_M_DSCS" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" label-text="Long Description:" input-size="xxlarge" no-description>
                        <input id="mainFieldLong_M_DSCL" runat="server" />
                    </gal-input>
                </div>
                <div class="sub-headline">
                    <span>Translation</span>
                </div>
                <div class="related-fields-area w-100">
                    <gal-input label-size="large" label-text="Select Language:" input-size="small2" no-description>
                        <select id="selectLanguage_LNGCOD" runat="server"></select>
                    </gal-input>
                    <gal-input label-size="large" label-text="Short Description:" input-size="medium2" no-description>
                        <input id="translateShort_T_DSCS" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" label-text="Long Description:" input-size="xxlarge" no-description>
                        <input id="translateLong_T_DSCL" runat="server" />
                    </gal-input>
                    <gal-input label-size="large" label-text="Update user/date:" input-size="medium,small" no-description>
                        <input id="updateUser_UPDUSR" runat="server" />
                        <input id="updateDate_UPDDAT" runat="server" galtype="date" dateformat="dd/mm/y" />
                    </gal-input>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button d-flex justify-content-center align-items-center" onclick="gx_SubmitKey('[pf10]');" id="actionBtn">
                        <span id="F10AddUpdate" runat="server" class="no-color" style="color: #ffffff"></span>
                    </button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
    </div>
    <script>
        var f10Btn = document.querySelector("#actionBtn");
        var f10Text = document.querySelector("#ctl00_GXPagePlaceHolder_F10").innerText.trim();
        if (f10Text == "") {
            f10Btn.style.setProperty("display", "none", "important");
        }
    </script>
</asp:Content>
