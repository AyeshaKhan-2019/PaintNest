using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Paint_Nest_WebApp
{
    public class PaintViewModel
    {
        public int paintID { get; set; }
        public string paintCategoryID { get; set; }
        public Nullable<int> companyID { get; set; }
        public string paint_name { get; set; }
        public string paint_description { get; set; }
        public Nullable<int> paint_QtrPrice { get; set; }
        public Nullable<int> paint_GalPrice { get; set; }
        public Nullable<int> paint_DrumPrice { get; set; }
        public string paint_image { get; set; }
    }
}