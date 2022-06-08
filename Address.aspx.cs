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
    public partial class Address : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void clearForm()
        {
            addtxtbox.Text = "";
            countrytxtbox.Text = "";
            provincetxtbox.Text = "";
            citytxtbox.Text = "";
            streettxtbox.Text = "";

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
                OracleCommand cmd = new OracleCommand("INSERT INTO ADDRESS (ADDRESS_ID, COUNTRY, PROVINCE, CITY, STREET) " +
                    "VALUES (:ADDRESS_ID, :COUNTRY, :PROVINCE, :CITY, :STREET)", con);
                cmd.Parameters.Add("ADDRESS_ID", addtxtbox.Text.Trim());
                cmd.Parameters.Add("COUNTRY", countrytxtbox.Text.Trim());
                cmd.Parameters.Add("PROVINCE", provincetxtbox.Text.Trim());
                cmd.Parameters.Add("CITY", citytxtbox.Text.Trim());
                cmd.Parameters.Add("STREET", streettxtbox.Text.Trim());


                //Execute & Inserts the value from the form into the Query
                cmd.ExecuteNonQuery();
                //Closes the connection
                con.Close();
                //Prints Successful Entry
                Response.Write("<script>alert('Address Details Inserted Successfully');</script>");
                clearForm();
                addresstable.DataBind();
            }
            catch (Exception ex)
            {
                //Prints Exception
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}