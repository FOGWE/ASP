
<%@ Page Title="User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="ASPHosp.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <br /><br /><br />
        <asp:Label runat="server" ID="lblDesc" Text=""></asp:Label>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblUserName" Text="Family Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblUserSurname" Text="Nick Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtUserSurname"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblDateOfBirth" Text="Date of Birth"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="Label1" Text="Day"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthDay" CssClass="oak" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label2" Text="Month"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthMonth" CssClass="oak" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label3" Text="Year"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthYear" CssClass="oak"  ></asp:DropDownList>
                
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblBloodGroup" Text="Blood Group"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtBloodGroup"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblAddress" Text="Address"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtAddress"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblTelephone" Text="Telephone Number"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtTelephoneNumber"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblEmailAddress" Text="Email Address"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtEmailAddress"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblProfession" Text="Profession"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtProfession"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblBankAccount" Text="Bank Account"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtBankAccount"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblPassword" Text="Password"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
         <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <asp:Button runat="server" CssClass="btn btn-info" ID="btnClear" Text="Clear" OnClick="btnClear_Click1"  />
            <asp:Button runat="server" CssClass="btn btn-success" ID="btnSave" Text="Save" OnClick="btnSave_Click1" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpdate" Text="Update"  />
            <asp:Button runat="server" CssClass="btn btn-danger" ID="btnDelete" Text="Delete"  />
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-2"></div>
    </div>
        <hr />
    </div>
</asp:Content>
