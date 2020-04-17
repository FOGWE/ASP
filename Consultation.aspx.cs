
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
    public partial class Consultation : System.Web.UI.Page
    {
        BusinessObject.Consultation co = new BusinessObject.Consultation();
        BusinessLogic.ConsultationBLL col = new BusinessLogic.ConsultationBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillYear();
                FillMonth();
                FillDay();
                clear();
                loadCombo();
            }
        }
        void loadCombo()
        {
            string[] arr1 = new string[] { "Single","Maried"};
            ddlMaritalStatus.DataSource = arr1;
            ddlMaritalStatus.DataBind();
            //ddlWorkerName.DataSource =;
            ddlWorkerName.SelectedValue=null;
            ddlWorkerName.DataBind();
            ddlUserName.SelectedValue = null;
            ddlUserName.DataBind();

        }
        void clear()
        {
            txtBPM.Text = txtHeight.Text = txtSign1.Text = txtSign2.Text = txtSign3.Text =
                txtSign4.Text = txtSign5.Text = txtSymptom1.Text = txtSymptom2.Text = txtSymptom3.Text =
                txtSymptom4.Text = txtSymptom5.Text = txtTemperature.Text = ddlUserName.Text = txtWeight1.Text = "";
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }
        int DuesPayment() { if (rdPaidNo.Checked == true && rdPaidYes.Checked == false) { return 0; } else if (rdPaidNo.Checked == false && rdPaidYes.Checked == true) { return 1; } else { return 0; } }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string dateChoice = ddlDateOfBirthDay.Text + " " + ddlDateOfBirthMonth.Text + " " + ddlDateOfBirthYear.Text;
            DateTime parsedConsultationDay = DateTime.Parse(dateChoice);

            co.BPM = Convert.ToDouble(txtBPM.Text);
            co.Height = Convert.ToDouble(txtHeight.Text);
            co.PaidFor =Convert.ToBoolean(DuesPayment());
            co.MaritalStatus=ddlMaritalStatus.Text;
            co.UserID = Convert.ToInt32(ddlUserName.SelectedIndex);
            co.WorkerID = Convert.ToInt32(ddlWorkerName.SelectedValue);
            co.Sign1 = txtSign1.Text;
            co.Sign2 = txtSign2.Text;
            co.Sign3 = txtSign3.Text;
            co.Sign4 = txtSign4.Text;
            co.Sign5 = txtSign5.Text;
            co.Symptom1 = txtSymptom1.Text;
            co.Symptom2 = txtSymptom2.Text;
            co.Symptom3 = txtSymptom3.Text;
            co.Symptom4 = txtSymptom4.Text;
            co.Symptom5 = txtSymptom5.Text;
            co.Temperature = Convert.ToDouble(txtTemperature.Text);
            co.Weight = Convert.ToDouble(txtWeight1.Text);
            co.ConsultationDay = parsedConsultationDay;
            if (col.Insert(co))
            {
                lblDesc.Text = "Consultation Successfully Added";
            }
            else
            {
                lblDesc.Text = "Failed to register Consultation Details";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            co.BPM = Convert.ToDouble(txtBPM.Text);
            co.Height = Convert.ToDouble(txtHeight.Text);
            co.Sign1 = txtSign1.Text;
            co.Sign2 = txtSign2.Text;
            co.Sign3 = txtSign3.Text;
            co.Sign4 = txtSign4.Text;
            co.Sign5 = txtSign5.Text;
            co.Symptom1 = txtSymptom1.Text;
            co.Symptom2 = txtSymptom2.Text;
            co.Symptom3 = txtSymptom3.Text;
            co.Symptom4 = txtSymptom4.Text;
            co.Symptom5 = txtSymptom5.Text;
            co.Temperature = Convert.ToDouble(txtTemperature.Text);
            co.Weight = Convert.ToDouble(txtWeight1.Text);
            if (col.Update(""))
            {
                lblDesc.Text = "Consultation Successfully Updated";
            }
            else
            {
                lblDesc.Text = "Failed to Update Consultation Details";
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ;
            if (col.Delete(Convert.ToInt32(lblUserID)))
            {
                lblDesc.Text = "Consultation Successfully Deleted";
            }
            else
            {
                lblDesc.Text = "Failed to Delete Consultation Details";
            }
        }
        private void GetDate()
        {
            ConnectionStringHelper cones = new ConnectionStringHelper();
            string cs = cones.constring();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Consultation");
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if (rd["ConsultationID"].ToString() == ddlUserName.Text)
                    {
                        txtBPM.Text = rd["BPM"].ToString();
                        txtHeight.Text = rd["Height"].ToString();
                        txtSign1.Text = rd["Sign1"].ToString();
                        ddlUserName.Text = rd["UserID"].ToString();
                        txtSign2.Text = rd["Sign2"].ToString();
                        txtSign3.Text = rd["Sign3"].ToString();
                        txtSign4.Text = rd["Sign4"].ToString();
                        txtSign5.Text = rd["Sign5"].ToString();
                        txtSymptom1.Text = rd["Symptom1"].ToString();
                        txtSymptom2.Text = rd["Symptom2"].ToString();
                        txtSymptom3.Text = rd["Symptom3"].ToString();
                        txtSymptom4.Text = rd["Symptom4"].ToString();
                        txtSymptom5.Text = rd["Symptom5"].ToString();
                        txtTemperature.Text = rd["Temperature"].ToString();
                        txtWeight1.Text = rd["Weignt"].ToString();
                        if (Convert.ToBoolean(rd["PaidFor"]) == true) { rdPaidYes.Checked = true; }
                        else { rdPaidNo.Checked = false; }
                        ddlMaritalStatus.Text = rd["MaritalStatus"].ToString();
                        ddlWorkerName.Text = rd["WorkerID"].ToString();
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