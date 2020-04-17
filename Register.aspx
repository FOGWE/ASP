<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ASPHosp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
           
        <div class="row" style="background-color:grey;margin:9px 14px 9px; padding:2px 2px 2px; border-radius:10px; border:solid black 5px">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblName" Text="Worker Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtName" ></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
     <div class="row" style="background-color:grey;margin:9px 14px 9px; padding:2px 2px 2px; border-radius:10px; border:solid black 5px">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblUserName" Text="User Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtUserName" ></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
     <div class="row" style="background-color:grey;margin:9px 14px 9px; padding:2px 2px 2px; border-radius:10px; border:solid black 5px">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblRole" Text="Role"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtRole" ></asp:TextBox>
            </div>
            <div class="col-md-4">
                
            </div>

        </div>
     
     <div class="row" style="background-color:grey;margin:9px 14px 9px; padding:2px 2px 2px; border-radius:10px; border:solid black 5px">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblPassword" Text="Password"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtPassword" ></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
     <div class="row" style="background-color:grey;margin:9px 14px 9px; padding:2px 2px 2px; border-radius:10px; border:solid black 5px">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblReconfirmPassword" Text="Reconfirm Password"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtReconfirmPassword" ></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
     <div class="row" style="background-color:grey;margin:9px 14px 9px; padding:2px 2px 2px; border-radius:10px; border:solid black 5px">
            <div class="col-md-2">
            </div>
            <div class="col-md-3">
                
            </div>
            <div class="col-md-3">
                <asp:Button runat="server" CssClass="btn btn-success" ID="btnRegister" Text="Register"  />
            </div>
            <div class="col-md-4">

            </div>

        </div>
     <div class="row" style="background-color:grey;margin:9px 14px 9px; padding:2px 2px 2px; border-radius:10px; border:solid black 5px">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
               
            </div>
            <div class="col-md-3">
                <asp:Image runat="server" ID="Image1"/>
                <asp:ImageButton runat="server" ID="ImageButton1" />
            </div>
            <div class="col-md-4">

            </div>

        </div>
    
</asp:Content>
