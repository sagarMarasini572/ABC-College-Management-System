using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW
{
    public partial class Student : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void clearForm()
        {
            stdtxtbox.Text = "";
            stdnametxtbox.Text = "";
            emailtxtbox.Text = "";
            contacttxtbox.Text = "";
            addtxtbox.Text = "";
            add2txtbox.Text = "";
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
                OracleCommand cmd = new OracleCommand("INSERT INTO STUDENTS (STUDENT_ID, STUDENT_NAME, EMAIL, CONTACT, ADDRESS_ID,ADDRESS_ID_2) " +
                    "VALUES (:STUDENT_ID, :STUDENT_NAME, :EMAIL, :CONTACT, :ADDRESS_ID, :ADDRESS_ID_2)", con);
                cmd.Parameters.Add("STUDENT_ID", stdtxtbox.Text.Trim());
                cmd.Parameters.Add("STUDENT_NAME", stdnametxtbox.Text.Trim());
                cmd.Parameters.Add("EMAIL", emailtxtbox.Text.Trim());
                cmd.Parameters.Add("CONTACT", contacttxtbox.Text.Trim());
                cmd.Parameters.Add("ADDRESS_ID", addtxtbox.Text.Trim());
                cmd.Parameters.Add("ADDRESS_ID_2", add2txtbox.Text.Trim());

                //Execute & Inserts the value from the form into the Query
                cmd.ExecuteNonQuery();
                //Closes the connection
                con.Close();
                //Prints Successful Entry
                Response.Write("<script>alert('Student Details Inserted Successfully');</script>");
                clearForm();
                stdtable.DataBind();
            }
            catch (Exception ex)
            {
                //Prints Exception
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}