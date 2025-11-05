<%@ Page MasterPageFile="~/template.master" Inherits="tableTemplate" CodeFile="tableTemplate.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>


<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div id="gx_screenArea">
        <div class="command-toolbar" id="hostKeysToolbar" runat="server"></div>
        <action-bar mode="multiple">
            <%--<input id="actionBar" runat="server" />--%>
            <%-- if the subfile has option toolbar than add to action bar
                 all the mapped rows of the actions.
                 if the subfile doesn't have options than delete this tag.--%>
        </action-bar>
        <div class="main-content" id="mainContent">
            <div class="headline-container">
                <h1 class="headline" id="Headline" runat="server"><%--enter headline text or change the id for dynamic headline text--%></h1>
            </div>
            
            <%-- table that represents the sub file, the name of the table in designer is the id in here --%>
            <div class="table-container"><table id="a" runat="server" class="table gal6-table-striped">
                <thead>
                    <tr class="grid-header">
                        <th class="option-column">
                            <input type="checkbox" id="masterCheckBox" />
                            <%-- the first th is for a master checkbox, it selects all rows for mutiple rows option.
                                 if the subfile doesn't have options than delete this tag.--%>
                        </th>
                        <%-- put the rest of th in here --%>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="option-column">
                            <input class="row-selector-cell" id="b" runat="server" />
                            <input type="checkbox" galtype="checkbox" />
                            <%-- checkbox for mutiple rows option,
                                 if the subfile doesn't have options than delete this tag.--%>
                        </td>
                        <%-- put the rest of td in here except the last one.
                             if the subfile doesn't have options than delete the last td and put your own last td.--%>
                        <td>
                            <span id="c" runat="server">
                                <%-- each td has a span for the text from the screen,
                                     as you can see, if the subfile has options than the last
                                     td has action-bar after the span.--%>
                            </span>
                            <action-bar mode="single">
                                <%-- if the subfile has option toolbar than leave it here empty.
                                     if the subfile doesn't have options than delete this tag.--%>
                            </action-bar>
                        </td>
                    </tr>
                </tbody>
            </table>
            <grid-scroller></grid-scroller></div>
        </div>
    </div>
</asp:Content>
