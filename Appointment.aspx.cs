using BusinessLogic;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHosp
{
    public partial class Appointment : System.Web.UI.Page
    {
        AppointmentBLL _app = new AppointmentBLL();
        BusinessObject.Appointment _boa = new BusinessObject.Appointment();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
                FillYear();
                FillMonth();
                FillMonth1();
                FillDay();
                loadCombo();
            }
        }

        void loadCombo()
        {
            BusinessLogic.WorkerBLL _worker= new BusinessLogic.WorkerBLL();
            string[] arr = new string[] { "Urgent", "Routine", "Normal", "Neutral" };
            ddlDegreeOfPriority.DataSource = arr;
            ddlDegreeOfPriority.DataBind();
            string[] arr1 = new string[] { "New", "Pending", "Treated"};
            ddlStatus.DataSource = arr1;
            ddlStatus.DataBind();
            string[] arr2 = new string[] { "Regular Visit of Institution", "Consultation Follow up", "Personal", "Treatment Follow-up" };
            ddlTypeOfAppointment.DataSource = arr2;
            ddlTypeOfAppointment.DataBind();
            string[] arr3 = new string[] { "Doctor-Generalist", "Surgeon", "Gyneacologist", "Pediatrician","Ophtamologist","Midwife", "Nurse", "Morgist" };
            ddlWorkerRole.DataSource = arr3;
            ddlWorkerRole.DataBind();
            ddlUserName.SelectedValue = null;
            ddlUserName.DataBind();

            
        }

        void clear()
        {
            txtReasonForAppointment.Text = txtReasonForReschedule.Text  = ddlUserName.Text = txtWorkerSchedule.Text = "";
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear(); 
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            //string dateChoice = ddlDateOfBirthDay.Text + " " + ddlDateOfBirthMonth.Text + " " + ddlDateOfBirthYear.Text;
            //DateTime parsedDateRescheduledTime = DateTime.Parse(dateChoice);
            string dateAppointmentChoice = ddlAppointmentDay.Text + " " + ddlAppointmentMonth.Text + " " + ddlAppointmentYear.Text;
            DateTime parsedAppointmentChoice = DateTime.Parse(dateAppointmentChoice);
            string dateRescheduledTime = ddlRescheduledDay.Text + " " + ddlRescheduledMonth.Text + " " + ddlReschduledYear.Text;
            DateTime parsedRescheduledChoice = DateTime.Parse(dateRescheduledTime);
            //if(_app.SearchByDay(Convert.ToDateTime(txtRescheduledTime.Text))!=null)
            //{

            //}
            //else
            //{
            _boa.Reason = txtReasonForAppointment.Text;
                _boa.ReasonForReschedule = null;
                //_boa.ReasonForReschedule = txtReasonForReschedule.Text;
                _boa.RescheduledTime = parsedRescheduledChoice;
                //_boa.RescheduledTime = Convert.ToDateTime(txtRescheduledTime.Text);
                _boa.Status = ddlStatus.Text;
                _boa.TimeAppointment = parsedAppointmentChoice;
                 _boa.TimeDeposit = DateTime.Now;
                _boa.TypeOfAppointment = ddlTypeOfAppointment.Text;
                _boa.Urgency = ddlDegreeOfPriority.Text;
                _boa.UserID = Convert.ToInt32(ddlUserName.Text);
                _boa.VenueID = Convert.ToInt32(1);
                //_boa.VenueID = Convert.ToInt32(ddlVenue.Text);
                _boa.WorkerID = Convert.ToInt32(ddlWorkerName.Text);
                _boa.WorkerRole = ddlWorkerRole.Text;
                _boa.WorkerSchedule = "7:30 AM-3:30 PM; MON-SAT";
                //_boa.WorkerSchedule = txtWorkerSchedule.Text;

                if (_app.Insert(_boa))
                {
                    lblDesc.Text = "Successfully Added";
                    clear();
                }
                else
                {
                    lblDesc.Text = "Failed to add Appointment";
                }
            //}
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            string dateChoice = ddlDateOfBirthDay.Text + " " + ddlDateOfBirthMonth.Text + " " + ddlDateOfBirthYear.Text;
            DateTime parsedTimeDeposit = DateTime.Parse(dateChoice);
            string dateAppointmentChoice = ddlAppointmentDay.Text + " " + ddlAppointmentMonth.Text + " " + ddlAppointmentYear.Text;
            DateTime parsedAppointmentChoice = DateTime.Parse(dateAppointmentChoice);
            string dateRescheduledTime = ddlRescheduledDay.Text + " " + ddlRescheduledMonth.Text + " " + ddlReschduledYear.Text;
            DateTime parsedRescheduledChoice = DateTime.Parse(dateRescheduledTime);

            _boa.Reason = txtReasonForAppointment.Text;
            _boa.ReasonForReschedule = txtReasonForReschedule.Text;
            _boa.RescheduledTime = parsedRescheduledChoice;
            _boa.Status = ddlStatus.Text;
            _boa.TimeAppointment = parsedAppointmentChoice;
            _boa.TimeDeposit = parsedTimeDeposit;
            _boa.TypeOfAppointment = ddlTypeOfAppointment.Text;
            _boa.Urgency = ddlDegreeOfPriority.Text;
            _boa.UserID = Convert.ToInt32(ddlUserName.Text);
            _boa.VenueID = Convert.ToInt32(ddlVenue.Text);
            _boa.WorkerID = Convert.ToInt32(ddlWorkerName.Text);
            _boa.WorkerRole = ddlWorkerRole.Text;
            _boa.WorkerSchedule = txtWorkerSchedule.Text;
            if (_app.Update(_boa))
            {
                lblDesc.Text = "Successfully Updated";
                clear();
            }
            else
            {
                lblDesc.Text = "Failed to Update Appointment";
            }
        }
        void MyDropSelect() { }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //lbluserisnt what to delete
            
            if (_app.Delete(Convert.ToInt32(lblUserID.Text)))
            {
                lblDesc.Text = "Appointment Removed";
                clear();
            }
            else
            {
                lblDesc.Text = "Failed to Remove Appointment";
            }
        }
        private void GetDate()
        {
            ConnectionStringHelper cones = new ConnectionStringHelper();
            string cs=cones.constring();

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Appointment",con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if (rd["AppointmentID"].ToString() == ddlUserName.Text)
                    {
                        txtReasonForAppointment.Text = rd["Reason"].ToString();
                        txtReasonForReschedule.Text = rd["ReasonForReschedule"].ToString();
                            ddlReschduledYear.Text = (Convert.ToDateTime(rd["RescheduledTime"]).Year).ToString();
                            ddlRescheduledMonth.Text = (Convert.ToDateTime(rd["RescheduledTime"]).Month).ToString();
                            ddlRescheduledDay.Text = (Convert.ToDateTime(rd["RescheduledTime"]).Day).ToString();
                        ddlUserName.Text = rd["UserID"].ToString();
                        txtWorkerSchedule.Text = rd["WorkerSchedule"].ToString();
                            ddlDateOfBirthYear.Text= (Convert.ToDateTime(rd["TimeDeposit"]).Year).ToString();
                            ddlDateOfBirthMonth.Text= (Convert.ToDateTime(rd["TimeDeposit"]).Month).ToString();
                            ddlDateOfBirthDay.Text= (Convert.ToDateTime(rd["TimeDeposit"]).Day).ToString();
                            ddlAppointmentDay.Text= (Convert.ToDateTime(rd["TimeAppointment"]).Day).ToString();
                            ddlAppointmentMonth.Text= (Convert.ToDateTime(rd["TimeAppointment"]).Month).ToString();
                            ddlAppointmentYear.Text= (Convert.ToDateTime(rd["TimeAppointment"]).Year).ToString();
                        ddlStatus.Text = rd["Status"].ToString();
                        ddlDegreeOfPriority.Text = rd["Urgency"].ToString();
                        ddlTypeOfAppointment.Text = rd["TypeOfAppointment"].ToString();
                        ddlVenue.Text = rd["VenueID"].ToString();
                        ddlWorkerName.Text = rd["WorkerID"].ToString();
                        ddlWorkerRole.Text = rd["WorkerRole"].ToString();
                    }
                    else { }
                }
            }
        }

        protected void ddlWorkerName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGetAll_Click(object sender, EventArgs e)
        {
            GetDate();
        }
        #region
        void FillYear()
        {
            int YearToday = Convert.ToInt32(DateTime.Now.Year);
            int[] arr = new int[YearToday + 1 - 1900];
            for (int i = 0; i <= arr.Length - 1; i++)
            {
                arr[i] = i + 1900;
            }
            ddlReschduledYear.DataSource = arr;
            ddlReschduledYear.DataBind();
            ddlAppointmentYear.DataSource = arr;
            ddlAppointmentYear.DataBind();
        }
        int FillNumberOfDays(int year, string month)
        {
            string Month = "";
            switch (Month)
            {
                case "January": return 31;
                case "February":
                    if (year % 4 == 0) { return 29; }
                    else
                    { return 28; };
                case "Mar": return 31;
                case "Apr": return 30;
                case "May": return 31;
                case "Jun": return 30;
                case "Jul": return 31;
                case "Aug": return 31;
                case "Sep": return 30;
                case "Oct": return 31;
                case "Nov": return 30;
                case "Dec": return 31;
                default: return 0;
            }
        }
        string FillMonth()
        {

            string[] arr = new string[12] { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };

            ddlRescheduledMonth.DataSource = arr;
            ddlRescheduledMonth.DataBind();
            return ddlDateOfBirthMonth.Text;

        }
        string FillMonth1()
        {

            string[] arr = new string[12] { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };

            ddlAppointmentMonth.DataSource = arr;
            ddlAppointmentMonth.DataBind();
            return ddlAppointmentMonth.Text;

        }
        void FillDay(int num)
        {
            int[] arr = new int[num];
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = i + 1;
            }
            ddlAppointmentDay.DataSource = arr;
            ddlAppointmentDay.DataBind();
            ddlRescheduledDay.DataSource = arr;
            ddlRescheduledDay.DataBind();
        }
        void FillDay()
        {
            int[] arr = new int[31];
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = i + 1;
            }
            ddlAppointmentDay.DataSource = arr;
            ddlAppointmentDay.DataBind();
            ddlRescheduledDay.DataSource = arr;
            ddlRescheduledDay.DataBind();
        }
        #endregion
    }
}