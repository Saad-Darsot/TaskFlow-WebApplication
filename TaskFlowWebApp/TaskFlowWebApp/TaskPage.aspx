<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskPage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="TaskFlowWebApp.TaskPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rcorners2">
<<<<<<< HEAD
        <div id="rcorners3" style="float:left" >
            <div class="parent-container">
                <div>
                    <button style='font-size:12px'> <i class='fas fa-sliders-h'> </i>All Tasks </button>                   
                    Important
                    Complete                    
                    Incomplete
                     <button style='font-size:24px'>Button <i class='fas fa-sliders-h'></i></button>
                </div>
            </div>
=======
        <div id="rcorners3" style="float:left; display: flex; flex-direction: column; align-items: center;" >
            <div id="profilePic" style="width:100px;height:100px;border-radius:50%;border:1px solid #000; background-color: grey;"></div>
            <div id="username" style="margin-top:10px;"><asp:Label ID="username" runat="server" Text=""></asp:Label></div>
>>>>>>> ab94e5608513f271b067f5b0b99280d90848d317
        </div>
        <div id="stylebox">

        </div>
    </div>
</asp:Content>
