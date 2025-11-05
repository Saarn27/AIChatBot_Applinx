<%@ Page MasterPageFile="~/template.master" Language="C#" CodeFile="T1U01P_ADD.aspx.cs" Inherits="T1U01P_ADD" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>
<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline">PAYMENT TERMS TABLE</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form main-area-form-modal">
            <div style="width: fit-content">
                <div class="column-form">
                    <div class="spaced-column related-fields-area" style="margin: 0">
                        <div class="column-form">
                            <div class="spaced-column">
                                <gal-input input-size="xxsmall" label-size="large" label-text="Type - General:" no-description>
                                    <input id="type_ATYP" runat="server" />
                                </gal-input>
                            </div>
                            <div class="spaced-column">
                                <gal-input input-size="xsmall" label-size="medium" label-text="Payment code:" no-description>
                                    <input id="code_ACOD" runat="server" />
                                </gal-input>
                            </div>
                        </div>
                        <gal-input input-size="large" label-size="large" label-text="Short description:" no-description>
                            <input id="shortDescription_ASDS" runat="server" />
                        </gal-input>
                        <gal-input input-size="xlarge" label-size="large" label-text="Local description:" no-description>
                            <input id="localDescription_ADSCL" runat="server" />
                        </gal-input>
                        <gal-input input-size="medium" label-size="large" label-text="Current +:" no-description>
                            <select id="currentPlus_DA01" runat="server">
                                <option value=""></option>
                                <option value="Y">Y: Yes</option>
                                <option value="C">C: Cash</option>
                                <option value="S">S: Special</option>
                                <option value="V">V: Credit Card</option>
                            </select>
                        </gal-input>
                        <div class="column-form">
                            <div class="spaced-column">
                                <gal-input input-size="xxsmall" label-size="large" label-text="Net days to pay:" no-description>
                                    <input id="netPayDays_NET" runat="server" />
                                </gal-input>
                            </div>
                            <div class="spaced-column">
                                <gal-input input-size="small" label-size="medium" label-text="Number of month pay:" no-description>
                                    <input id="payMonths_NUMMNT" runat="server" />
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="1-12"></span>
                                </gal-input>
                            </div>
                        </div>
                        <div class="column-form">
                            <div class="spaced-column">
                                <gal-input input-size="xxsmall" label-size="large" label-text="Days for discount:" no-description>
                                    <input id="discountDays_DDISC" runat="server" />
                                </gal-input>
                            </div>
                            <div class="spaced-column">
                                <gal-input input-size="small" label-size="medium" label-text="% - Discount:" no-description>
                                    <input id="discountPrecentage_DISC" runat="server" />
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="XX.X"></span>
                                </gal-input>
                            </div>
                        </div>
                        <div class="column-form">
                            <div class="spaced-column">
                                <gal-input input-size="xxsmall" label-size="large" label-text="Fix day - for pay:" no-description>
                                    <input id="fixPayDays_FIX" runat="server" />
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="0-31"></span>
                                </gal-input>
                            </div>
                            <div class="spaced-column" style="margin-left: -15px">
                                <gal-input input-size="small" label-size="medium" label-text="Fix day - issue/close:" no-description>
                                    <input id="fixIssueDays_DAYPRINT" runat="server" />
                                    <span class="information-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="0-31"></span>
                                </gal-input>
                            </div>
                        </div>
                        <gal-input input-size="xxsmall" label-size="large" label-text="Number of payment:" no-description>
                            <input id="paymentNumber_NOPAY" runat="server" />
                        </gal-input>
                        <div class="column-form">
                            <div class="spaced-column">
                                <gal-input input-size="xxsmall" label-size="large" label-text="Riba code:" no-description>
                                    <select id="ribaCode_RIBA" runat="server">
                                        <option value=""></option>
                                        <option value="R">R</option>
                                        <option value="R1">R1</option>
                                        <option value="R2">R2</option>
                                    </select>
                                </gal-input>
                            </div>
                            <div class="spaced-column">
                                <gal-input input-size="xxsmall" label-size="medium" label-text="Riba vat code:" no-description>
                                    <select id="ribaVatCode_RIBVAT" runat="server">
                                        <option value=""></option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                    </select>
                                </gal-input>
                            </div>
                        </div>
                        <gal-input input-size="large" label-size="large" label-text="Hold type:" no-description>
                            <select id="holdType_HOLDC" runat="server"></select>
                        </gal-input>
                        <gal-input input-size="small" label-size="large" label-text="Allow change in order:" no-description>
                            <select id="allowChangeInOrder_CHGORD" runat="server">
                                <option value=""></option>
                                <option value="Y">Yes</option>
                                <option value="N">No</option>
                            </select>
                        </gal-input>
                        <gal-input input-size="large" label-size="large" label-text="Extended payment code:" no-description>
                            <select id="extendPayCode_EXTPAY" runat="server" ></select>
                        </gal-input>
                        <gal-input input-size="large" label-size="large" label-text="Local use:" no-description>
                            <select id="localUse_LCUSE" runat="server"></select>
                        </gal-input>

                        <gal-input input-size="medium" label-size="large" label-text="Update user:" no-description>
                            <input id="updateUser_USER" runat="server" />
                        </gal-input>
                        <gal-input input-size="small" label-size="large" label-text="Last update:" no-description>
                            <input id="updateDate_LSTDAT" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="errorMessage_MSG1" runat="server"></span>
                    <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update/Add</button>
                </div>
            </div>
        </div>
        <input id="hiddenField" runat="server" style="display: none;" />
    </div>
</asp:Content>
