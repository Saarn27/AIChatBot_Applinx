<%@ Page MasterPageFile="~/template.master" Inherits="GTU01_SFLA" CodeFile="GTU01_SFLA.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="Headline" runat="server">ADD TASK</h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf12]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <action-bar mode="multiple">
            <input id="actionBar" value="1=select" />
        </action-bar>
        <div class="main-area-form main-area-form-modal" id="mainContent">
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-size="small" label-text="Entity :" input-size="large" no-description>
                        <input id="entityDescription_EDSC" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" label-text="Code :" input-size="large" no-description>
                        <input id="entityCode_ECOD" runat="server" />
                    </gal-input>
                    <gal-input label-size="small" label-text="Personal :" input-size="large" no-description>
                        <gx:GXCheckBox ID="filterTaskType_SS" CheckedValue="1" UncheckedValue="" runat="server" />
                        <input id="filterTaskTypeDesc_PTSK" runat="server" />
                    </gal-input>
                </div>

            </div>

            <div class="table-container">
                <table id="addTasktable_SFLA" runat="server" class="window-table table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th style="width: 400px">
                                <span>Type</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="optTyp_S" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="activityDesc_ACTIVITYD" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
                <input style="display: none;" id="pageIndex" runat="server" />
                <input style="display: none;" id="hiddenField" runat="server" />
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSGA" runat="server"></span>
                    <button type="button" id="ok" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[enter]');" data-bs-dismiss="modal">Confirm</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
