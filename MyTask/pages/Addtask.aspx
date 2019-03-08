﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addtask.aspx.cs" Inherits="pages_Addtask" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--<%@ MasterType VirtualPath="~/MasterPage.master" %>-->
    <script src="TaskManScript/script.js"></script>
    <link rel="stylesheet" href="css/home.css">
    <asp:Panel runat="server" ID="addtask" Visible="true">
        <div class="container">
            <div class="wrapper">
                <html>

                <body style="background-image: url(../images/bbk.png)">

                    <form runat="server" action="" method="post" name="Login_Form" class="form-signin" style="background-image: url(images/bk.jpg)">
                        <!--<hr class="colorgraph">-->

                        <h1 style="color: red" class="form-signin-heading">Add Task</h1>
                        <center>
                         <input type="text" class=" form-control" name="description" placeholder="Task Description" id="newNoteContent"/>
                        
                           <asp:DropDownList CssClass="form-control" ID="DropDownListcategorizedtask" style="display: inline-block; margin-top: 10px" runat="server">
                                <asp:ListItem Text="Select Category" Value="Select Cateogry"></asp:ListItem>
                                <asp:ListItem Text="Private" Value="Private"></asp:ListItem>
                                <asp:ListItem Text="School" Value="School"></asp:ListItem>
                                <asp:ListItem Text="Work" Value="Work"></asp:ListItem>
                            </asp:DropDownList>
                      <asp:DropDownList ID="DropDownList1" CssClass="form-control" style="display: inline-block; margin-top: 10px" runat="server">
                          <asp:ListItem Text="Select Priority" Value="Select Priority"></asp:ListItem>
                                <asp:ListItem Value="High" Text="High"></asp:ListItem>
                                <asp:ListItem Value="Normal" Text="Normal"></asp:ListItem>
                                <asp:ListItem Value="Low" Text="Low"></asp:ListItem>
                            </asp:DropDownList>
                       <asp:Button runat="server" class="btn btn-lg btn-primary btn-block" OnClick="AddTask" style="background-color:#e62e00" name="Submit" value="Add" type="Submit" Text="Add"></asp:Button>
                 
                      
                        
                    </center>
                        <asp:Panel runat="server" ID="alertMsg" Visible="false">
                            <div class="alert alert-dismissible alert-danger">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>User name or password are incorrect </strong>
                                <br />
                                please again.
                       
                            </div>
                        </asp:Panel>

                    </form>
                </body>
                </html>

            </div>
        </div>
    </asp:Panel>
</asp:Content>