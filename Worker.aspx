<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Worker.aspx.cs" Inherits="ASPHosp.Worker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <br />
        <br />
        <br />
        <asp:Label runat="server" ID="lblDesc" Text=""></asp:Label>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerName" Text="Worker Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtWorkerName"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerSpeciality" Text="Speciality:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlWorkerSpeciality"></asp:DropDownList>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerIDCardNumber" Text="NIC Number"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtWorkerIDNumber"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerEmail" Text="Email Address"></asp:Label>
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
                <asp:Label runat="server" ID="lblWorkerTelephone" Text="Telephone Contact?"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtTelephone"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblAddress" Text="Address/Domiciliation"></asp:Label>
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
                <asp:Label runat="server" ID="lblWorkerRole" Text="Role"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtWorkerRole"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <hr />
         <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <asp:Button runat="server" CssClass="btn btn-success" ID="btnSave" Text="Save" OnClick="btnSave_Click" />
            <asp:Button runat="server" CssClass="btn btn-info" ID="btnClear" Text="Clear" OnClick="btnClear_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button runat="server" CssClass="btn btn-danger" ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" />
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-2"></div>
    </div>
        <hr />
    </div>
    
</asp:Content>
