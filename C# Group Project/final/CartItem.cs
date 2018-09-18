using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace final
{
    public class CartItem
    {
        public CartItem() { }
        public CartItem(ItemInfo itemInfo, int quantity)
        {
            this.ItemInfo = itemInfo;
            this.Quantity = quantity;
        }

        public ItemInfo ItemInfo { get; set; }
        public int Quantity { get; set; }

    }
}