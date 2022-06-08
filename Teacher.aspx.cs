using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;
using System.Data;


namespace CW
{
    public partial class Teacher : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void clearForm()
        {
            teachertxtbox.Text = "";
            teachernametxtbox.Text = "";
            emailtxtbox.Text = "";
            dpttxtbox.Text = "";
            teacheraddtxtbox.Text = "";
            teacheradd2txtbox.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                OracleConnection con = new OracleConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                OracleCommand cmd = new OracleCommand("INSERT INTO TEACHERS (TEACHER_ID, TEACHER_NAME, EMAIL, DEPARTMENT_ID, ADDRESS_ID, ADDRESS_ID_2) " +
                    "VALUES (:TEACHER_ID, :TEACHER_NAME, :EMAIL, :DEPARTMENT_ID, :ADDRESS_ID, :ADDRESS_ID_2)", con);
                cmd.Parameters.Add("TEACHER_ID", teachertxtbox.Text.Trim());
                cmd.Parameters.Add("TEACHER_NAME", teachernametxtbox.Text.Trim());
                cmd.Parameters.Add("EMAIL", emailtxtbox.Text.Trim());
                cmd.Parameters.Add("DEPARTMENT_ID", dpttxtbox.Text.Trim());
                cmd.Parameters.Add("ADDRESS_ID", teacheraddtxtbox.Text.Trim());
                cmd.Parameters.Add("ADDRESS_ID_2", teacheradd2txtbox.Text.Trim());

                //Execute & Inserts the value from the form into the Query
                cmd.ExecuteNonQuery();
                //Closes the connection
                con.Close();
                //Prints Successful Entry
                Response.Write("<script>alert('Teacher Details Inserted Successfully');</script>");
                clearForm();
                teachertable.DataBind();
            }
            catch (Exception ex)
            {
                //Prints Exception
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}