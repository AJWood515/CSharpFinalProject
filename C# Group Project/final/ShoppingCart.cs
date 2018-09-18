using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace final
{

    public class ShoppingCart
    {
        private List<CartItem> shoppingCart;
        public ShoppingCart()
        {
            shoppingCart = new List<CartItem>();
        }

        public int ShoppingCartCount
        {
            get { return shoppingCart.Count; }
        }

        public CartItem this[int index]
        {
            get { return shoppingCart[index]; }
        }
        public CartItem this[string id]
        {
            get
            {
                foreach (CartItem c in shoppingCart)
                    if (c.ItemInfo.index == id) return c;
                return null;
            }
        }


        public static ShoppingCart GetCart()
        {
            ShoppingCart cart = (ShoppingCart)HttpContext.Current.Session["cart"];
            if (cart == null)
            {
                HttpContext.Current.Session["cart"] = new ShoppingCart();
            }
            return (ShoppingCart)HttpContext.Current.Session["cart"];
        }


        public void AddItemToCart(ItemInfo iteminfo, int quantity)
        {
            CartItem item = new CartItem(iteminfo, quantity);
            
            shoppingCart.Add(item);
        }

        public void RemoveAt(int index)
        {
            shoppingCart.RemoveAt(index);
        }

    }
}
