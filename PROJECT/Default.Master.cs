using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random obj = new Random();
            int i = obj.Next(1, 5);
            Image2.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddToCart.aspx");
        }
    }
}