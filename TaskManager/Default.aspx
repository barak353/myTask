﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <!--<%@ MasterType VirtualPath="~/MasterPage.master" %>-->
    <script src="TaskManScript/script.js"></script>
    <link rel="stylesheet" href="css/home.css">
    <asp:Panel runat="server" ID="login" Visible="true" >
        <div class="container">
            <div class="wrapper">
                 <html>
   
                <body style="background-image : url(images/bbk.png)">


         </body>
    </html>
    
            </div>
        </div>
    </asp:Panel>
    <asp:Panel runat="server" ID="succMsg" Visible="false">
        <div class="alert alert-dismissible alert-success">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong>Welcome Back</strong>
            <asp:Label runat="server" ID="fullnameLabel"></asp:Label>
            <br />
            click <a href="/pages/notes.aspx" class="alert-link">here</a> to see your tasks.
        </div>
    </asp:Panel>
</asp:Content>
