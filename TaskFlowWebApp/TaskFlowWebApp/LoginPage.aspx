<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="TaskFlowWebApp.LoginPage" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="container">
            <div class="header" style="margin-top:200px">
                <asp:Label ID="Label3" runat="server" Text="Login" style="font-family:'Bell MT'; font-size:xx-large"></asp:Label> 
            </div>

  
            <div style="text-align:center">
                <asp:Label ID="EmailEntry" runat="server" Text="Email:"></asp:Label>                
                <asp:TextBox ID="email" runat="server" style="margin-left:25px; margin-bottom:20px"></asp:TextBox>
            </div>
            <div style="text-align:center">
                <asp:Label ID="Label2" runat="server" Text="Password:" ></asp:Label>          
                <asp:TextBox ID="password" textmode="Password" runat="server"></asp:TextBox>
            </div>
            <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" style="margin-top:20px" Text="Login" onclick="GoToWelcomePage" />
            </div>

            <p style="text-align:center">Don't have an account? <a href="Signup.aspx">Sign up</a>.</p>
        </div>
    
    </main>
</asp:Content>
