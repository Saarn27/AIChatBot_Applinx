<%@ Page MasterPageFile="~/template.master" Inherits="GTU01_DATA" CodeFile="GTU01_DATA.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">TASK </h1>
                <span class="sub-headline blue-headline" id="taskNumerator_GTNMRTR" runat="server"></span>
                <span class="separating-line">|</span>
                <span class="sub-headline blue-headline" id="userName_NME" runat="server"></span>
                <span class="separating-line">|</span>
                <span style="background: none !important;" id="taskMode_MODE" class="sub-headline blue-headline" runat="server"></span>
            </div>
            <div style="width: fit-content">
                <div class="column-form related-fields-area" style="width: 1200px; margin-bottom: 10px">
                    <div class="spaced-column">
                        <gal-input label-size="small" label-text="Entity :" input-size="xlarge">
                            <input id="entityType_GTCOD" runat="server" />
                            <input id="entityTypeDesc_23DSC" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" label-text="Activity type :" input-size="xlarge">
                            <input id="activityType_GTDOC" runat="server" />
                            <input id="activityTypeDesc_GTDOCD" runat="server" />
                        </gal-input>
                        <gal-input-help label-size="small" label-text="Subject :" input-size="xxlarge" no-description>
                            <input id="taskRemark_GTREM" runat="server" />
                        </gal-input-help>
                        <gal-input label-size="small" label-text="Document :" input-size="medium,xsmall,medium" no-description>
                            <input id="documentNumber_GTKEY" runat="server" />
                            <input id="documentLine_GTLINE" runat="server" />
                            <input id="documentDesc_DESC" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" label-text="Owner :" input-size="xlarge">
                            <input id="ownerUserCode_GTOWNR" runat="server" />
                            <input id="ownerUserDesc_GTOWNRD" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" input-size="xxlarge" dynamic-label no-description>
                            <input id="emailAddressLable_ACTDATA" runat="server" />
                            <input id="emailAddress_GTDOCDTA" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="medium" label-text="Priority :" input-size="xsmall" no-description>
                            <input id="taskPriority_GTPRIO" runat="server" />
                        </gal-input>
                        <gal-input label-size="medium" label-text="Revision number :" input-size="xsmall" no-description>
                            <input id="revisionNumber_GTRVSN" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="column-form related-fields-area" style="width: 1200px; margin-bottom: 10px">
                    <div class="spaced-column">
                        <div class="column-form ">
                            <div class="spaced-column">
                                <gal-input label-size="small" label-text="Open :" input-size="small2,small" no-description>
                                    <input id="taskOpenDate_GTTOPN" runat="server" />
                                    <input id="taskOpenTime_GTOTIME" runat="server" />
                                </gal-input>
                                <gal-input label-size="small" label-text="Last update :" input-size="small2,small" no-description>
                                    <input id="taskLastUpdateDate_GTTUPD" runat="server" />
                                    <input id="taskLastUpdateTime_GTUTIME" runat="server" />
                                </gal-input>
                            </div>
                            <div class="spaced-column" style="margin-left: -40px;">
                                <gal-input input-size="large">
                                    <input id="taskOpenUserCode_GTSRC" runat="server" />
                                    <input id="taskOpenUserName_GTSRCD" runat="server" />
                                </gal-input>
                                <gal-input input-size="large">
                                    <input id="taskLastUpdateUser_GTUSRU" runat="server" />
                                    <input id="taskLastUpdateUserDesc_GTUSRUD" runat="server" />
                                </gal-input>
                            </div>
                        </div>
                        <gal-input label-size="small" label-text="Reminder :" input-size="small2,small" no-description>
                            <input id="reminderDate_GTTRMN" runat="server" galtype="date" dateformat="ddmmyy" />
                            <input id="reminderTime_GTTRMNT" runat="server" />
                        </gal-input>
                        <div class="column-form">
                            <div class="spaced-column">
                                <gal-input label-size="small" label-text="Due date :" input-size="small2,small" no-description>
                                    <input id="taskDueDate_GTTDUE" runat="server" galtype="date" dateformat="ddmmyy" />
                                    <input id="taskDueTime_GTTDUET" runat="server" />
                                </gal-input>
                            </div>
                            <div class="spaced-column" style="margin-left: -30px;">
                                <gal-input label-size="xsmall2" label-text="End time:" input-size="small" no-description>
                                    <input id="taskDueEndTime_GTTDUEE" runat="server" />
                                </gal-input>
                            </div>
                        </div>
                        <gal-input label-size="small" label-text="Close :" input-size="small2,xsmall,medium" no-description>
                            <input id="taskCloseDate_GTTCLS" runat="server" />
                            <input id="closeReasontype_GTCLSRS" runat="server" />
                            <input id="closeReasonDesc_GTCLSDSC" runat="server" />
                        </gal-input>
                        <gal-input label-size="small" label-text="Sent to :" input-size="small2,small,large" no-description>
                            <input id="sentToDate_GTTSND" runat="server" />
                            <input id="sentToUser_GTTOUSR" runat="server" />
                            <input id="sentToUserDesc_GTTOUSRD" runat="server" />
                        </gal-input>

                    </div>
                    <div class="spaced-column">
                        <gal-input label-size="xsmall2" label-text="Method :" input-size="large" no-description>
                            <select id="taskMethod_GTTMTD" runat="server"></select>
                        </gal-input>
                        <gal-input-help label-size="xsmall2" label-text="User :" input-size="large" no-description>
                            <input id="taskUserDue_GTTUSC" runat="server" />
                        </gal-input-help>
                    </div>
                </div>
                <div class="column-form related-fields-area" style="width: 1200px">
                    <div class="spaced-row">
                        <gal-input label-size="small" label-text="Long remark :" input-size="xlarge" no-description>
                            <input id="longRemarks1_REM1" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-row">
                        <gal-input label-size="medium" label-text=" " input-size="xlarge" no-description>
                            <input id="longRemarks2_REM2" runat="server" />
                        </gal-input>
                    </div>
                    <div class="spaced-row">
                        <gal-input label-size="medium" label-text=" " input-size="xlarge" no-description>
                            <input id="longRemarks3_REM3" runat="server" />
                        </gal-input>
                    </div>
                </div>
                <div class="message-container message-container-with-btn">
                    <span class="invalid-feedback" id="msg_MSG" runat="server"></span>
                    <button type="button" id="f9" class="btn btn-primary btn-galweb big-button" style="background-color: #2464a8;" onclick="gx_SubmitKey('[pf9]');">Accept</button>
                    <button type="button" id="f10" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf10]');">Update</button>
                </div>
            </div>
            <input id="hiddenField" runat="server" style="display: none" />
        </div>
        <script>
            var taskMode = document.getElementById("ctl00_GXPagePlaceHolder_taskMode_MODE").innerText.toUpperCase();
            console.log("in script " + taskMode);
            if (taskMode == "DISPLAY") {
                document.getElementById("f9").style.display = "none";
                document.getElementById("f10").style.display = "none";
            } else {
                document.getElementById("f9").style.display = "block";
                document.getElementById("f10").style.display = "block";
            }
        </script>
</asp:Content>
