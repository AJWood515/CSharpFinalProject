using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace final
{
    public class ItemInfo
    {
        public ItemInfo() { }
        public string index { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string size { get; set; }
        public double price { get; set; }
        public string imageUrl { get; set; }
        public int quantity { get; set; }
    }
}