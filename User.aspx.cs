
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
    public partial class User : System.Web.UI.Page
    {
        BusinessObject.User _user = new BusinessObject.User();
        BusinessLogic.UserBLL usbl = new BusinessLogic.UserBLL();
        string dateChoice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillYear();
                FillMonth();
                FillDay();
                clear();
            }
            
        }
        void clear()
        {
            txtAddress.Text = txtBankAccount.Text = txtBloodGroup.Text=txtName.Text=txtUserSurname.Text
                = txtEmailAddress.Text = txtPassword.Text = txtProfession.Text = txtTelephoneNumber.Text = "";
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (usbl.Update(""))
            {
                lblDesc.Text = "Successfully updated User record";
            }
            else
            {
                lblDesc.Text = "Failed to update user";
            }
        }

       
        private void GetDate()
        {
            ConnectionStringHelper cones = new ConnectionStringHelper();
            string cs = cones.constring();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from User");
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if (rd["UserID"].ToString() == lblDesc.Text)
                    {
                        
                        string vc=rd["UserDateOfBirth"].ToString();
                        string[] arr = vc.Split(' ');
                        txtAddress.Text = rd["UserAddress"].ToString();
                        txtBankAccount.Text = rd["UserBankAccount"].ToString();
                        txtBloodGroup.Text = rd["UserBloodGroup"].ToString();
                        txtEmailAddress.Text = rd["UserEmail"].ToString();
                        txtName.Text = rd["UserName"].ToString();
                        txtPassword.Text = rd["UserPassword"].ToString();
                        txtProfession.Text = rd["UserProfession"].ToString();
                        txtTelephoneNumber.Text = rd["UserTelephone"].ToString();
                        txtUserSurname.Text = rd["UserSurname"].ToString();
                        ddlDateOfBirthDay.Text = arr[1];
                        ddlDateOfBirthYear.Text = arr[2];
                        ddlDateOfBirthMonth.Text = arr[0];
                    }
                    else { }
                }
            }
        }
        
        protected void btnSave_Click1(object sender, EventArgs e)
        {
                dateChoice = ddlDateOfBirthDay.Text + " " + ddlDateOfBirthMonth.Text + " " + ddlDateOfBirthYear.Text;
                DateTime parsed = DateTime.Parse(dateChoice);
                _user.UserAddress = txtAddress.Text;
                _user.UserBloodGroup = txtBloodGroup.Text;
                _user.UserBankAccount = txtBankAccount.Text;
                _user.UserDateOfBirth = parsed; 
                _user.UserEmail = txtEmailAddress.Text;
                _user.UserName = txtName.Text;
                _user.UserPassword = txtPassword.Text;
                _user.UserProfession = txtProfession.Text;
                _user.UserSurname = txtUserSurname.Text;
                _user.UserTelephone = txtTelephoneNumber.Text;

                if (usbl.Insert(_user))
                {
                    lblDesc.Text = "Successfully added a new User";
                }
                else
                {
                    lblDesc.Text = "Failed to add new user";
                }
                clear();
            
        }

        protected void btnClear_Click1(object sender, EventArgs e)
        {
            clear();
        }
        #region ---date recovery section: Trying to build a personal and customized date counter
        protected void cldDateOfBirthMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            int sim = FillNumberOfDays(Convert.ToInt32(ddlDateOfBirthYear.Text), ddlDateOfBirthMonth.Text);
            FillDay(sim);
        }

        protected void cldDateOfBirthYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillNumberOfDays(Convert.ToInt32(ddlDateOfBirthYear.Text), ddlDateOfBirthMonth.Text);
        }
        void FillYear()
        {
            int YearToday = Convert.ToInt32(DateTime.Now.Year);
            int[] arr = new int[YearToday+1-1900];
            for (int i =0; i <= arr.Length-1; i++)
            {
                arr[i] = i+1900;
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
            for (int i = 0; i <arr.Length; i++)
            {
                arr[i] = i+1;
            }
            ddlDateOfBirthDay.DataSource = arr;
            ddlDateOfBirthDay.DataBind();
        }
        #endregion
        
    }
}