﻿<%@ Page Language="C#" masterpagefile="~masterurl/default.master" title="Training Site" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<asp:Content id="Content1" runat="Server" contentplaceholderid="PlaceHolderMain">

This is created for testing...
<div id="trainingdiv">
</div>

<div id="divdisplay">

</div>

<div id="DivInsert">
<table>
<tr>
<td>Name:</td><td><input type="text" id="txt1"/></td>
</tr>
<tr>
<td>Marks:</td><td><input type="text" id="txt2"/></td>
</tr>

<tr>
<td></td><td><input type="button" id="btn1" value="Submit" onclick="createListItem()" /></td>
</tr>


</table>
</div>

</asp:Content>

<asp:Content id="Content2" runat="server" contentplaceholderid="PlaceHolderAdditionalPageHead">

<script type="text/javascript" src="../SiteAssets/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../SiteAssets/training.js"></script>
</asp:Content>
