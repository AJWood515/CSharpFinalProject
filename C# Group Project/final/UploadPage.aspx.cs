using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class UploadPage : System.Web.UI.Page
    {
        ItemInfo info = new ItemInfo();
        string filename;
        private ShoppingCart cart;

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                    Image1.ImageUrl = filename;
                    addCartBtn.Visible = true;

                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }

        protected void addCartBtn_Click(object sender, EventArgs e)
        {
            cart = ShoppingCart.GetCart();
            info.imageUrl = Image1.ImageUrl;
            info.price = Convert.ToInt32(amountLabel.Text);
            info.quantity = Convert.ToInt32(ddlUpdate.Text);
            info.size = ddlShirtSize.Text;
            info.description = itemDesc.Text;
            cart.AddItemToCart(info, info.quantity);
            Session["cart"] = cart;
            Response.Redirect("Cart.aspx");
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}