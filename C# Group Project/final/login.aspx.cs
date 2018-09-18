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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupProjectsConnectionString1"].ConnectionString);

            conn.Open();

            string checkuser = "select count(*) from Login where Username='" + usernametextbox.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from Login where Username='" + usernametextbox.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString();

                if(password == passwordtextbox.Text)
                {
                    Session["New"] = usernametextbox.Text;
                    infolabel.Text = ("Password is correct");
                    conn.Close();
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    infolabel.Text=("Password is incorrect");
                }
            }
            else
            {
                infolabel.Text = ("Username is incorrect");
            }


            conn.Close();
        }

        protected void CreateAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAccount.aspx");
        }
    }
}