using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.ComponentModel;
using final;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

[DataObject(true)]
public static class CartItems
{
    private static List<ItemInfo> itemList;

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<ItemInfo> GetItems()
    {
        itemList = new List<ItemInfo>();
        ShoppingCart cart = ShoppingCart.GetCart();

        int j = Convert.ToInt16(cart.ShoppingCartCount);
        for (int i=0; i < j; i++)
        {
            itemList.Add(cart[i].ItemInfo);
        }

        return itemList;
    }

}
