using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace final
{
    public partial class ItemPage : System.Web.UI.Page
    {
        ItemInfo info = new ItemInfo();
        private ShoppingCart cart;


        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            info = (ItemInfo)Session["ShirtSes"];
            itemDesc.Text = info.description.ToString();
            info.size = ddlShirtSize.SelectedValue;
            shirtImg.ImageUrl = info.imageUrl.ToString();

            if (!IsPostBack)
            {
                cart = (ShoppingCart)Session["cart"];
            }
        }

        protected void addCartBtn_Click(object sender, EventArgs e)
        {
            ShoppingCart cart = ShoppingCart.GetCart();
            info.quantity = Convert.ToInt32(ddlQuant.Text);
            info.size = ddlShirtSize.Text;
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