<%@ Page MasterPageFile="~/template.master" Inherits="T23U01_SFL1" CodeFile="T23U01_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <input id="actionBar" runat="server" />
                        <input id="actionBar2" runat="server" />
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server">GENERAL SUBJECT TABLE</h1>
                    <span class="sub-headline">|</span>
                <span class="sub-headline blue-headline" runat="server" id="subHeadline1_MCOD"></span>
                            <span class="sub-headline blue-headline" runat="server" id="subHeadline2_DSC"></span>
            </div>

            <div class="table-container">
                <table id="T23U01_SFL1_1" runat="server" class="table gal6-table-striped">
                    <thead>
                        <tr class="grid-header">
                            <th class="option-column">
                                <input type="checkbox" id="masterCheckBox" />
                            </th>
                            <th>
                                <gal-input input-size="small" no-description>
                                    <input  id="subjectFilter_SEL1" runat="server" />
                                </gal-input>
                                <span>subject</span>
                            </th>

                            <th>
                                <gal-input input-size="small" no-description>
                                    <input id="codeFilter_SEL2" runat="server" />
                                </gal-input>
                                <span>Code</span>
                            </th>

                            <th>
                                <gal-input input-size="large" no-description>
                                    <input id="descriptionFilter_SEL3" runat="server" />
                                </gal-input>
                                <span>%Long description </span>
                            </th>

                            <th >
                              <gal-input input-size="small2" no-description>
                                    <input id="parm1Filter_SEL4" runat="server" />
                                </gal-input>
                                <span>%Parm 1</span>

                            </th>

                            <th>
                                <gal-input input-size="small2" no-description>
                                    <input id="parm2Filter_SEL5" runat="server" />
                                </gal-input>
                                <span>%Parm 2</span>
                            </th>

                           
                            <th>
                                 <gal-input input-size="small2" no-description>
                                    <input id="parm3Filter_SEL6" runat="server" />
                                </gal-input>
                                <span>%Parm 3</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                    
                            <td class="option-column">
                                <input class="row-selector-cell" id="optionCol_OPT" runat="server" />
                                <input type="checkbox" galtype="checkbox" />
                            </td>
                          
                            <td><span id="subjectCol_SB1" runat="server" ></span></td>
                            <td><span id="codeCol_COD" runat="server"></span></td>
                            <td><span id="longDescriptionCol_DSL" runat="server"></span></td>
                            <td><span id="parm1Col_PR1" runat="server"></span></td>
                            <td><span id="parm2Col_PR2" runat="server"></span></td>
                           
                            <td>
                                <span id="parm3Col_PR3" runat="server"></span>
                                <action-bar mode="single"></action-bar>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <grid-scroller more-columns></grid-scroller>
     
            <input style="display: none;" id="pageIndex" runat="server" />

            <div class="message-container message-container-with-btn">
                <span class="invalid-feedback" id="err_MSG" runat="server"></span>
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf6]');">Add Secondary</button>
            </div>      

            </div>
            <div class="legend-div" style="margin-left: 5px;">
                <legend-block text="Secondary" color="yellow"></legend-block>
            </div>

        </div>
    </div>
</asp:Content>
