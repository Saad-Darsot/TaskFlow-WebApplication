<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskPage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="TaskFlowWebApp.TaskPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rcorners2">
        <div id="rcorners3" style="float:left; display: flex; flex-direction: column; align-items: center;" >
            <div id="profilePic" style="width:100px;height:100px;border-radius:50%;border:1px solid #000; background-color: grey;"></div>
            <div id="username" style="margin-top:10px;"><asp:Label ID="username" runat="server" Text=""></asp:Label></div>
        </div>
        <div id="stylebox">

        </div>
    </div>
</asp:Content>
