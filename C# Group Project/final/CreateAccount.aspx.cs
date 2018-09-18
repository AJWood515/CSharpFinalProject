using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace final
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupProjectsConnectionString1"].ConnectionString);

                conn.Open();

                string checkuser = "select count(*) from Login where Username='"+ usernametextbox.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    infolabel.Text = ("User already exists");
                }
                else
                {
                    
                }


                conn.Close();


            }
        }

        protected void CreateAccountbutton_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupProjectsConnectionString1"].ConnectionString);

                conn.Open();

                string insertQuery = "insert into Login (UserName,Password) values (@uname , @password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@uname",usernametextbox.Text);
                com.Parameters.AddWithValue("@password", passwordtextbox.Text);

                com.ExecuteNonQuery();
                infolabel.Text = ("Account Creation is successful");

                conn.Close();
            }

            catch(Exception ex)
            {
                infolabel.Text = ("error username already taken" + ex);
            }

        }
    }
}