<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Emergency.aspx.cs" Inherits="ASPHosp.Emergency" %>
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
                <asp:Label runat="server" ID="lblWorkerID" Text="Worker Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlWorkerName" DataSourceID="SqlDataSource3" DataTextField="WorkerName" DataValueField="WorkerID" CssClass="oak"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital %>" SelectCommand="SELECT [WorkerID], [WorkerName] FROM [tblWorker]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital %>" SelectCommand="SELECT [WorkerID], [WorkerName] FROM [tblWorker]"></asp:SqlDataSource>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblUserID" Text="User Number"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlUserID" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserID" CssClass="oak"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital %>" SelectCommand="SELECT [UserID], [UserName] FROM [tblUser]"></asp:SqlDataSource>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblConsultationID" Text="Consultation No"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlConsultationNumber" DataSourceID="SqlDataSource4" DataTextField="ConsultationDay" DataValueField="ConsultationID" CssClass="oak"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital %>" SelectCommand="SELECT [ConsultationID], [ConsultationDay] FROM [tblConsultation]"></asp:SqlDataSource>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblBroughtUpAt" Text="Brought In On:"></asp:Label>
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
                <asp:Label runat="server" ID="lblGuardian" Text="Guardian"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtGuardian"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblGuardianAddress" Text="Guardian Address"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtGuardianAddress"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblGuardianTelephone" Text="GuardianTelephone"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtGuardianTelephone"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblBroughtUpBy" Text="Brought Up By"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtBroughtUpBy"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblCircumstanceID" Text="Circumstance ID"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtCircumstanceID"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <hr />
        
         <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <asp:Button runat="server" CssClass="btn btn-info" ID="btnClear" Text="Clear" OnClick="btnClear_Click" />
            <asp:Button runat="server" CssClass="btn btn-success" ID="btnSave" Text="Save" OnClick="btnSave_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button runat="server" CssClass="btn btn-danger" ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" />
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-2"></div>
    </div>
        <hr />
    </div>
</asp:Content>