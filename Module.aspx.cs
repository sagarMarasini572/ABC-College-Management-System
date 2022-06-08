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
    public partial class Module : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void clearForm()
        {
            modtxtbox.Text = "";
            modnametxtbox.Text = "";
            credithourtxtbox.Text = "";
            acedemicyeartxtbox.Text = "";
           

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
                OracleCommand cmd = new OracleCommand("INSERT INTO MODULES (MODULE_CODE, MODULE_NAME, CREDIT_HOURS, ACEDEMIC_YEAR) " +
                    "VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOURS, :ACEDEMIC_YEAR)", con);
                cmd.Parameters.Add("MODULE_CODE", modtxtbox.Text.Trim());
                cmd.Parameters.Add("MODULE_NAME", modnametxtbox.Text.Trim());
                cmd.Parameters.Add("CREDIT_HOURS", credithourtxtbox.Text.Trim());
                cmd.Parameters.Add("ACEDEMIC_YEAR", acedemicyeartxtbox.Text.Trim());


                //Execute & Inserts the value from the form into the Query
                cmd.ExecuteNonQuery();
                //Closes the connection
                con.Close();
                //Prints Successful Entry
                Response.Write("<script>alert('Modules Details Inserted Successfully');</script>");
                clearForm();
                modtable.DataBind();
            }
            catch (Exception ex)
            {
                //Prints Exception
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}