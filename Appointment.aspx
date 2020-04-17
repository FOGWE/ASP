<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="ASPHosp.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div><asp:Label runat="server" ID="lblDesc" Text=""></asp:Label>
        <br /><br /><br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerID" Text="Worker Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlWorkerName" DataSourceID="SqlDataSource1" DataTextField="WorkerName" DataValueField="WorkerID" CssClass="oak"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital %>" SelectCommand="SELECT DISTINCT [WorkerID], [WorkerName] FROM [tblWorker]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerRole" Text="Personnel Role:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlWorkerRole" CssClass="oak"></asp:DropDownList>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblUserID" Text="User Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlUserName" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserID" CssClass="oak"></asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MedicalReportConnectionString2 %>" SelectCommand="SELECT [UserID], [UserName] FROM [tblUser]"></asp:SqlDataSource>
                
                <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital %>" SelectCommand="SELECT [UserID], [UserName] FROM [tblUser]"></asp:SqlDataSource>
                
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <!--<div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblTimeDeposit" Text="Time of Deposit"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="Label1" Text="Day"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthDay" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label2" Text="Month"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthMonth" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label3" Text="Year"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthYear"  ></asp:DropDownList>
                
            </div>
            <div class="col-md-4">

            </div>

        </div>-->
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblTimeAppointment" Text="Appointment On?"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="Label4" Text="Day"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlAppointmentDay" CssClass="oak" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label5" Text="Month"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlAppointmentMonth" CssClass="oak" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label6" Text="Year"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlAppointmentYear" CssClass="oak"  ></asp:DropDownList>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblTypeAppointment" Text="Type Of Appointment"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlTypeOfAppointment" CssClass="oak"></asp:DropDownList>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblReasonForAppointment" Text="Reason For Appointment"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtReasonForAppointment"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblUrgency" Text="Degree of Priority"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlDegreeOfPriority" CssClass="oak"></asp:DropDownList>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblRescheduleReason" Text="Reason For Reschedule"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtReasonForReschedule"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerSchedule" Text="Worker Schedule"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtWorkerSchedule"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblRescheduledTime" Text="Rescheduled Time"></asp:Label>
            </div>
            <div class="col-md-3">
                 <asp:Label runat="server" ID="Label7" Text="Day"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlRescheduledDay" CssClass="oak" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label8" Text="Month"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlRescheduledMonth" CssClass="oak" ></asp:DropDownList>
                <asp:Label runat="server" ID="Label9" Text="Year"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlReschduledYear" CssClass="oak" ></asp:DropDownList>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblVenue" Text="Place of Appointment"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlVenue" CssClass="oak"></asp:DropDownList>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblStatusOfAppointment" Text="Status Of Appointment"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlStatus" CssClass="oak"></asp:DropDownList>
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
            <asp:Button runat="server" CssClass="btn btn-danger" ID="btnGetAll" Text="Get All" OnClick="btnGetAll_Click" />
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-2"></div>
    </div>
        <hr />
    </div>
 
   
</asp:Content>
