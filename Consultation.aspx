<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultation.aspx.cs" Inherits="ASPHosp.Consultation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <br /><br /><br />
        <asp:Label runat="server" ID="lblDesc" Text=""></asp:Label>
           <br /> 
        <div class="row">

            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWorkerID" Text="Worker Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlWorkerName" DataSourceID="SqlDataSource1" DataTextField="WorkerName" DataValueField="WorkerID" CssClass="oak"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicalReportConnectionString3 %>" SelectCommand="SELECT [WorkerID], [WorkerName] FROM [tblWorker]"></asp:SqlDataSource>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblConsultationDay" Text="Consultation Date:"></asp:Label>
            </div>
            <div class="col-md-3">
                 <asp:Label runat="server" ID="lblDateOfConsultation_Day" Text="Day"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthDay" CssClass="oak" ></asp:DropDownList><br />
                <asp:Label runat="server" ID="lblDateOfConsultation_Month" Text="Month"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlDateOfBirthMonth" CssClass="oak" ></asp:DropDownList><br />
                <asp:Label runat="server" ID="lblDateOfConsultation_Year" Text="Year"></asp:Label>
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
                <asp:Label runat="server" ID="lblUserID" Text="User Name"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlUserName" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserID" CssClass="oak"></asp:DropDownList>
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
                <asp:Label runat="server" ID="lblPaidFor" Text="Fees Paid?"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:RadioButton runat="server" ID="rdPaidYes" GroupName="rdPaid" />
                <asp:Label runat="server" ID="lblPaidYes" Text="Yes"></asp:Label>
                <br />
                <asp:RadioButton runat="server" ID="rdPaidNo" GroupName="rdPaid" />
                <asp:Label runat="server" ID="lblPaidNo" Text="No"></asp:Label>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSign1" Text="Sign1:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSign1"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSign2" Text="Sign 2:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSign2"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSign3" Text="Sign3:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSign3"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSign4" Text="Sign4:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSign4"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSign5" Text="Sign5:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSign5"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSymptom1" Text="Symptom1:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSymptom1"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSymptom2" Text="Symptom2:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSymptom2"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSymptom3" Text="Symptom3:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSymptom3"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSymptom4" Text="Symptom4:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSymptom4"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblSymptom5" Text="Symptom5:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtSymptom5"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblBPM" Text="BPM"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtBPM"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblTemperature" Text="Temperature"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtTemperature"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblWeight" Text="Weight"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtWeight1"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblHeight" Text="Height"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtHeight"></asp:TextBox>
            </div>
            <div class="col-md-4">

            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-3">
                <asp:Label runat="server" ID="lblMaritalStatus" Text="Marital Status"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlMaritalStatus" CssClass="oak"></asp:DropDownList>
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
            <asp:Button runat="server" CssClass="btn btn-danger" ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" style="height: 26px" />
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-2"></div>
    </div>
        <hr />
    </div>

</asp:content>
