using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Data;

namespace final
{
    public partial class Cart : System.Web.UI.Page
    {
        private ShoppingCart shoppingCart;

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            // When the page loads, get the cart.
            shoppingCart = ShoppingCart.GetCart();

            if(!this.IsPostBack)
            {
                if(shoppingCart.ShoppingCartCount > 0)
                {
                    // Attribute to show the plus/minus.
                    grdCart.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                    // Attributes to hide column on xs devices.
                    grdCart.HeaderRow.Cells[2].Attributes["data-breakpoints"] = "xs";
                    grdCart.HeaderRow.Cells[3].Attributes["data-breakpoints"] = "xs";
                    grdCart.HeaderRow.Cells[4].Attributes["data-breakpoints"] = "xs";

                    grdCart.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
                
            }
        }

        // When the Remove link is clicked, removes the row from the gridview and session.
        protected void grdCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                shoppingCart.RemoveAt(Convert.ToInt16(e.CommandArgument));
                Response.Redirect("Cart.aspx");
            }
        }

        // Button redirects user to the home page.
        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}