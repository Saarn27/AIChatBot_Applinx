<%@ Page MasterPageFile="~/template.master" Inherits="PCCU01_SFL" CodeFile="PCCU01_SFL.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline">SUPPLIER'S EVALUATION QUESTIONNAIRE</h1>
            </div>
            <div class="column-form">
                <div class="spaced-column">
                    <gal-input label-text="*Group:" label-size="medium" input-size="small">
                        <input id="Group_SXGRP" runat="server" />
                    </gal-input>
                    <gal-input label-text="Supplier" label-size="medium" input-size="small">
                        <input id="SXVND" runat="server" />
                    </gal-input>
                    <gal-input label-text="Sign" label-size="medium" input-size="xsmall">
                        <input id="SXSGNLUD" runat="server" />
                    </gal-input>
                    <gal-input label-text="*Evaluator" label-size="medium" input-size="medium">
                        <input id="SXUSER" runat="server" />
                    </gal-input>
                    <gal-input label-text="*Buyer" label-size="medium" input-size="medium">
                        <input id="SXBUYER" runat="server" />
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-text="Supplier name" label-size="medium" input-size="xlarge">
                        <span id="SXVNDN" runat="server"></span>
                    </gal-input>
                    <gal-input label-text="A" label-size="small" input-size="xsmall">
                        <input id="SXACTVTYPE" runat="server" />
                    </gal-input>
                    <gal-input label-text="*UpdDate" label-size="medium" input-size="small">
                        <input id="SXUPDDT" runat="server" />
                    </gal-input>
                    <gal-input label-text="Evaluator name" label-size="medium" input-size="xlarge">
                        <span id="SXUSERN" runat="server"></span>
                    </gal-input>
                    <gal-input label-text="Buyer name" label-size="medium" input-size="xlarge">
                        <span id="SXBUYERN" runat="server"></span>
                    </gal-input>
                </div>
                <div class="spaced-column">
                    <gal-input label-text="Group" label-size="medium" input-size="small">
                        <span id="SXGRP" runat="server"></span>
                    </gal-input>
                    <gal-input label-text="Rl" label-size="small" input-size="xsmall">
                        <span id="Buyer_RL" runat="server"></span>
                    </gal-input>
                </div>
            </div>
            <div class="table-container">
                <table id="PCCU01_SFL_Grid" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <span>Option</span>
                            </th>
                            <th>
                                <span>Supplier name</span>
                            </th>
                            <th>
                                <span>A</span>
                            </th>
                            <th>
                                <span>Group</span>
                            </th>
                            <th>
                                <span>Update Date</span>
                            </th>
                            <th>
                                <span>Evaluator Name</span>
                            </th>
                            <th>
                                <span>Buyer Name</span>
                            </th>
                            <th>
                                <span>Rel</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="option-column">
                                <input class="row-selector-cell" id="SLOPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                            <td>
                                <span id="SLVNDNAM" runat="server"></span>
                            </td>
                            <td>
                                <span id="SLACTVTYPE" runat="server"></span>
                            </td>
                            <td>
                                <span id="SLGRP" runat="server"></span>
                            </td>
                            <td>
                                <span id="SLUPDDT" runat="server"></span>
                            </td>
                            <td>
                                <span id="SLUSERN" runat="server"></span>
                            </td>
                            <td>
                                <span id="SLBUYERN" runat="server"></span>
                            </td>
                            <td>
                                <input id="SLREL" runat="server" />
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller></grid-scroller>
            </div>
            <div class="message-container">
                <span id="H_GMFX" runat="server"></span>
                <span id="MSGMAIN" runat="server"></span>
            </div>
            <span class="page-indicator" id="pageIndicator" runat="server"></span>
        </div>
    </div>
</asp:Content>
