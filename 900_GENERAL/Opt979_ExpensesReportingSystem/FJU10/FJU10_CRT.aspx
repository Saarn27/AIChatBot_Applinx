<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="FJU10_CRT.aspx.cs" Inherits="FJU10_CRT" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">

    <div id="gx_screenArea" class="form-grey-BG">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server">
        </div>
        <div class="main-area-form" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">CREATE </h1>
                <h1 class="headline no-title-case">J/E </h1>
                <h1 class="headline">FOR SALESMAN EXPENSES</h1>

            </div>

            <div class="column-form related-fields-area" style="margin-bottom: 10px">
                <div class="spaced-column">
                    <p style="font-size: var(--label-font-size)">This operation will creates J/E. Are you sure?</p>
                    <div class="centered-flex">
                        <gal-input label-text="Year:" label-size="auto" input-size="xsmall" no-description>
                            <input id="Year_YY" runat="server">
                        </gal-input>
                        <gal-input label-text="Month:" label-size="auto" input-size="xxsmall" no-description>
                            <select id="Month_MM" runat="server">
                                <option value=""></option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </gal-input>
                        <gal-input label-text="Date:" label-size="auto" input-size="small" no-description>
                            <input id="Date_DD" runat="server" galtype="date" dateformat="ddmmy">
                        </gal-input>
                    </div>
                </div>
            </div>
            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="msg_MSGDLT" runat="server"></span>
                <button class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <script>

</script>
</asp:Content>
