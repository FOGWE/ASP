using BusinessLogic;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHosp
{
    public partial class Emergency : System.Web.UI.Page
    {
        BusinessObject.Emergency em = new BusinessObject.Emergency();
        EmergencyBLL eml = new EmergencyBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
                FillYear();
                FillMonth();
                FillDay();
                loadCombo();
            }
        }
        void loadCombo()
        {
            ddlWorkerName.SelectedValue = null;
            ddlUserID.SelectedValue = null;
            ddlConsultationNumber.SelectedValue = null;
            ddlConsultationNumber.DataBind();
            ddlUserID.DataBind();
            ddlWorkerName.DataBind();

        }
        void clear()
        {
            txtBroughtUpBy.Text = txtCircumstanceID.Text = ddlConsultationNumber.Text =
                txtGuardian.Text = txtGuardianAddress.Text = txtGuardianTelephone.Text =
                ddlUserID.Text = ddlWorkerName.Text = "";
           
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string dateChoice = ddlDateOfBirthDay.Text + " " + ddlDateOfBirthMonth.Text + " " + ddlDateOfBirthYear.Text;
            DateTime parsedDateEmergency = DateTime.Parse(dateChoice);


            em.BroughtUpBy = txtBroughtUpBy.Text;
            em.CircumstanceID = Convert.ToInt32(txtCircumstanceID.Text);
            em.ConsultationID = Convert.ToInt32(ddlConsultationNumber.Text);
            em.Guardian = txtGuardian.Text;
            em.GuardianAddress = txtGuardianAddress.Text;
            em.GuardianTelephone = txtGuardianTelephone.Text;
            em.BroughtUpAt = parsedDateEmergency;
            em.PersonID = Convert.ToInt32(ddlUserID.Text);
            em.DoctorID = Convert.ToInt32(ddlWorkerName.Text);
            if (eml.Insert(em))
            {
                lblDesc.Text = "Emergency Case Successfully Registered";
                clear();
            }
            else
            {
                lblDesc.Text = "Error registering Emergency";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            em.BroughtUpBy = txtBroughtUpBy.Text;
            em.CircumstanceID = Convert.ToInt32(txtCircumstanceID.Text);
            em.ConsultationID = Convert.ToInt32(ddlConsultationNumber.Text);
            em.Guardian = txtGuardian.Text;
            em.GuardianAddress = txtGuardianAddress.Text;
            em.GuardianTelephone = txtGuardianTelephone.Text;
            em.PersonID = Convert.ToInt32(ddlUserID.Text);
            em.DoctorID = Convert.ToInt32(ddlWorkerName.Text);
           
            if (eml.Update(""))
            {
                lblDesc.Text = "Emergency Case Successfully Updateded";
                clear();
            }
            else
            {
                lblDesc.Text = "Error Updating Emergency";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ;
            if (eml.Delete(Convert.ToInt32(txtBroughtUpBy.Text)))
            {
                lblDesc.Text = "Emergency Deleted Successfully";
                clear();
            }
            else
            {
                lblDesc.Text = "Error Deleting Emergency";
            }
        }
        private void GetDate()
        {
            ConnectionStringHelper cones = new ConnectionStringHelper();
            string cs = cones.constring();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Emergency");
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if (rd["ConsultationID"].ToString() == ddlUserID.Text)
                    {
                        txtBroughtUpBy.Text = rd["BroughtUpBy"].ToString();
                        txtCircumstanceID.Text = rd["CircumstanceID"].ToString();
                        ddlConsultationNumber.Text = rd["ConsultationID"].ToString();
                        txtGuardian.Text = rd["Guardian"].ToString();
                        txtGuardianAddress.Text = rd["GuardianAddress"].ToString();
                        txtGuardianTelephone.Text = rd["GuardianTelephone"].ToString();
                        ddlWorkerName.Text = rd["DoctorID"].ToString();
                        ddlDateOfBirthMonth.Text =(Convert.ToDateTime(rd["BroughtUpAt"]).Month).ToString();
                        ddlDateOfBirthDay.Text=(Convert.ToDateTime(rd["BroughtUpAt"]).Day).ToString();
                        ddlDateOfBirthYear.Text= (Convert.ToDateTime(rd["BroughtUpAt"]).Year).ToString();
                        ddlUserID.Text = rd["PersonID"].ToString();
                    }
                    else { }
                }
            }
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
            ddlDateOfBirthYear.DataSource = arr;
            ddlDateOfBirthYear.DataBind();
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

            ddlDateOfBirthMonth.DataSource = arr;
            ddlDateOfBirthMonth.DataBind();
            return ddlDateOfBirthMonth.Text;

        }
        void FillDay(int num)
        {
            int[] arr = new int[num];
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = i + 1;
            }
            ddlDateOfBirthDay.DataSource = arr;
            ddlDateOfBirthDay.DataBind();
        }
        void FillDay()
        {
            int[] arr = new int[31];
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = i + 1;
            }
            ddlDateOfBirthDay.DataSource = arr;
            ddlDateOfBirthDay.DataBind();
        }
        #endregion
    }
}