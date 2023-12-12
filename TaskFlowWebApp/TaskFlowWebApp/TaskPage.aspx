<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskPage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="TaskFlowWebApp.TaskPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rcorners2">
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
        </div>
        <div id="stylebox">

        </div>
    </div>
</asp:Content>
