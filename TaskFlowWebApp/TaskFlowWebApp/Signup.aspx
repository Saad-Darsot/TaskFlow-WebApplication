<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" MasterPageFile="~/Site.Master" Inherits="TaskFlowWebApp.Signup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container-center">
            <div>        
                <asp:Label ID="signUp" runat="server" Text="Sign Up" style="font-family:'Bell MT'; font-size:xx-large" ></asp:Label>  
          
                <div>
                    <asp:Label ID="namelable" runat="server" Text="Name: "></asp:Label>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>          
                </div>
                <div>           
                    <asp:Label ID="emaillable" runat="server" Text="Email: "></asp:Label>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="passwordlable" runat="server" Text="Password: "></asp:Label>
                    <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="confirmPLable" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="passwordConfirm" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <button type="submit" class="button-center">Sign Up</button>
                </div>
    
            </div>
                <p class="center">Already have an account? <a href="LoginPage.aspx">Login.</a></p>
        </div>

    </main>


</asp:Content>


