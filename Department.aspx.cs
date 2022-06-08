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
    public partial class Department : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void clearForm()
        {
            dpttxtbox.Text = "";
            dptnametxtbox.Text = "";
           
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
                OracleCommand cmd = new OracleCommand("INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME) " +
                    "VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)", con);
                cmd.Parameters.Add("DEPARTMENT_ID", dpttxtbox.Text.Trim());
                cmd.Parameters.Add("DEPARTMENT_NAME", dptnametxtbox.Text.Trim());
                

                //Execute & Inserts the value from the form into the Query
                cmd.ExecuteNonQuery();
                //Closes the connection
                con.Close();
                //Prints Successful Entry
                Response.Write("<script>alert('Departments Details Inserted Successfully');</script>");
                clearForm();
                dpttable.DataBind();
            }
            catch (Exception ex)
            {
                //Prints Exception
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}