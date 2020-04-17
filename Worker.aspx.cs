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
    public partial class Worker : System.Web.UI.Page
    {
        BusinessObject.Worker wo = new BusinessObject.Worker();
        BusinessLogic.WorkerBLL wol = new BusinessLogic.WorkerBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                clear();
                loadCombo();
            }
        }
        void loadCombo()
        {
            string[] arr3 = new string[] { "Doctor-Generalist", "Surgeon", "Gyneacologist", "Pediatrician", "Ophtamologist", "Midwife", "Nurse", "Morgist" };
            ddlWorkerSpeciality.DataSource = arr3;
            ddlWorkerSpeciality.SelectedValue = null;
            ddlWorkerSpeciality.DataBind();
        }
        void clear()
        {
            txtAddress.Text = txtEmailAddress.Text = txtTelephone.Text = txtWorkerIDNumber.Text
                = txtWorkerName.Text = txtWorkerRole.Text = ddlWorkerSpeciality.Text = "";
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            wo.WorkerAddress = txtAddress.Text;
            wo.WorkerEmail = txtEmailAddress.Text;
            wo.WorkerName = txtWorkerName.Text;
            wo.WorkerNIC = txtWorkerIDNumber.Text;
            wo.WorkerRole = txtWorkerRole.Text;
            wo.WorkerSpeciality = ddlWorkerSpeciality.Text;
            wo.WorkerTelephone = txtTelephone.Text;
            
            if (wol.Update(""))
            {
                lblDesc.Text = "Successfully Updated Worker";
                clear();
            }
            else
            {
                lblDesc.Text = "Failed to Update worker!";
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            
            if (wol.Delete(Convert.ToInt32(txtTelephone.Text)))
            {
                lblDesc.Text = "Successfully deleted Worker";
                clear();
            }
            else
            {
                lblDesc.Text = "Failed to delete worker, this record mayn't Exist!";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                wo.WorkerAddress = txtAddress.Text;
                wo.WorkerEmail = txtEmailAddress.Text;
                wo.WorkerName = txtWorkerName.Text;
                wo.WorkerNIC = txtWorkerIDNumber.Text;
                wo.WorkerRole = txtWorkerRole.Text;
                wo.WorkerSpeciality = ddlWorkerSpeciality.Text;
                wo.WorkerTelephone = txtTelephone.Text;

                if (wol.Insert(wo))
                {
                    lblDesc.Text = "Successfully added Worker";
                }
                else
                {
                    lblDesc.Text = "Failed to add worker";
                }
            }
           
        }
        private void GetDate()
        {
            ConnectionStringHelper cones = new ConnectionStringHelper();
            string cs = cones.constring();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Worker");
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if (rd["WorkerID"].ToString() == lblDesc.Text)
                    {
                        txtAddress.Text = rd["WorkerAddress"].ToString();
                        txtWorkerIDNumber.Text = rd["WorkerNIC"].ToString();
                        txtTelephone.Text = rd["WorkerTelephone"].ToString();
                        txtEmailAddress.Text = rd["WorkerEmail"].ToString();
                        txtWorkerName.Text = rd["WorkerName"].ToString();
                        txtWorkerRole.Text = rd["WorkerRole"].ToString();
                        ddlWorkerSpeciality.Text = rd["WorkerSpeciality"].ToString();

                    }
                    else { }
                }
            }
        }
    }
}