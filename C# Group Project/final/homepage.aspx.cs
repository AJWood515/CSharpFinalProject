using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;



namespace final
{
    public partial class _homepage : System.Web.UI.Page
    {
        ItemInfo info = new ItemInfo();
        DataTable table = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void ibtnCat_Click(object sender, ImageClickEventArgs e)
        {
            DataView products = (DataView)SqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView row = products[0];
            info.index = row["Id"].ToString();
            info.name = row["Name"].ToString();
            info.description = row["Description"].ToString();
            info.price = Convert.ToDouble(row["Price"]);
            info.imageUrl = "~/Images/cartoon-cat-min.jpg";
            Session["ShirtSes"] = info;
            Response.Redirect("ItemPage.aspx");
        }

        protected void ibtnDinosaurs_Click(object sender, ImageClickEventArgs e)
        {
            DataView products = (DataView)SqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView row = products[1];
            info.index = row["Id"].ToString();
            info.name = row["Name"].ToString();
            info.description = row["Description"].ToString();
            info.price = Convert.ToDouble(row["Price"]);
            info.imageUrl = "~/Images/dinosaurs-min.jpg";
            Session["ShirtSes"] = info;

            Response.Redirect("ItemPage.aspx");
        }

        protected void ibtnDragon_Click(object sender, ImageClickEventArgs e)
        {
            DataView products = (DataView)SqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView row = products[2];
            info.index = row["Id"].ToString();
            info.name = row["Name"].ToString();
            info.description = row["Description"].ToString();
            info.price = Convert.ToDouble(row["Price"]);
            info.imageUrl = "~/Images/dragon-min.jpg";
            Session["ShirtSes"] = info;

            Response.Redirect("ItemPage.aspx");

        }

        protected void ibtnPineapple_Click(object sender, ImageClickEventArgs e)
        {
            DataView products = (DataView)SqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView row = products[4];
            info.index = row["Id"].ToString();
            info.name = row["Name"].ToString();
            info.description = row["Description"].ToString();
            info.price = Convert.ToDouble(row["Price"]);
            info.imageUrl = "~/Images/pineapple.min.jpg";

            Session["ShirtSes"] = info;

            Response.Redirect("ItemPage.aspx");

        }

        protected void ibtnViolin_Click(object sender, ImageClickEventArgs e)
        {
            DataView products = (DataView)SqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView row = products[5];
            info.index = row["Id"].ToString();
            info.name = row["Name"].ToString();
            info.description = row["Description"].ToString();
            info.price = Convert.ToDouble(row["Price"]);
            info.imageUrl = "~/Images/violin.min.jpg";

            Session["ShirtSes"] = info;

            Response.Redirect("ItemPage.aspx");

        }

        protected void ibtnMammoth_Click(object sender, ImageClickEventArgs e)
        {
            DataView products = (DataView)SqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView row = products[3];
            info.index = row["Id"].ToString();
            info.name = row["Name"].ToString();
            info.description = row["Description"].ToString();
            info.price = Convert.ToDouble(row["Price"]);
            info.imageUrl = "~/Images/mammoth-min.jpg";

            Session["ShirtSes"] = info;
            Response.Redirect("ItemPage.aspx");

        }
    }
}